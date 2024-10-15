#!/bin/bash

# check if all three arguments are provided
if [[ $# -ne 7 ]]; then
  echo "Usage: $0 <zone_ids> <email> <api_key> <account_id> <host_to_replace> <host_to_use_instead> <zone_id_to_substitute>"
  exit 1
fi



#Create the base file:
  echo "terraform {
  required_providers {
    cloudflare = {
      source = \"cloudflare/cloudflare\"
      version = \"~> 3.0\"
    }
  }
}

provider \"cloudflare\" {
  api_key = \"$3\"
  email = \"$2\"
}

variable \"account_id\" {
  default = \"$4\"
}" > cloudflare.tf

terraform init

#zoneResourceTypes={"cloudflare_ruleset"}

# split the zone_ids argument into an array
read -ra zone_ids <<< "$1"
echo "email: $email"
# loop through the zone_ids array
for zone_id in "${zone_ids[@]}"
do
  echo "zone_id: $zone_id"
  echo "Replacing host $5 with $6 and zone ID $zone_id with $7"
     for i in "cloudflare_argo" "cloudflare_certificate_pack" "cloudflare_custom_hostname" "cloudflare_custom_pages" "cloudflare_custom_ssl" "cloudflare_filter" "cloudflare_firewall_rule" "cloudflare_healthcheck" "cloudflare_load_balancer" "cloudflare_origin_ca_certificate" "cloudflare_page_rule" "cloudflare_rate_limit" "cloudflare_record" "cloudflare_ruleset" "cloudflare_spectrum_application" "cloudflare_tiered_cache" "cloudflare_url_normalization_settings" "cloudflare_waiting_room" "cloudflare_worker_route" "cloudflare_zone_lockdown"
        do
            echo "$i"
	    output=$(cf-terraforming generate --resource-type $i --zone $zone_id --email $2 --key $3)
	    #echo "Output: $output\n"
	    if [[ -n "${output/[ ]*\n/}" ]]; then
                echo "Replacing variables"
		output=${output//$5/$6}
		output=${output//$zone_id/$7}
		#if [[ "$i" == "cloudflare_firewall_rule" ]]; then
		#	output = sed 
		#fi
	        echo "$output" > "$zone_id"_"$i".tf
            fi
	done

  #echo "zone_id: $zone_id"
done

