#!/bin/bash

# check if all three arguments are provided
if [[ $# -ne 4 ]]; then
  echo "Usage: $0 <zone_ids> <email> <api_key> <account_id>"
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

#zoneResourceTypes={"ruleset" "record" "page_rule" "worker_route" "ruleset" "rate_limit"}

# split the zone_ids argument into an array
read -ra zone_ids <<< "$1"
echo "email: $email"
# loop through the zone_ids array
for zone_id in "${zone_ids[@]}"
do
  echo "zone_id: $zone_id"
  #mkdir $zone_id

  #cf-terraforming generate --resource-type cloudflare_custom_pages --zone $zone_id --email $2 --key $3 > "$zone_id"_custom_pages.tf
  #cf-terraforming import --resource-type cloudflare_custom_pages --zone $zone_id --email $2 --key $3 >> "$zone_id"_import_statements

     for i in "ruleset" "record"  "page_rule" "worker_route" "ruleset" "rate_limit"
        do

        echo "list item $i"
        echo "cloudflare_"$i""
        output=$(cf-terraforming generate --resource-type cloudflare_"$i" --zone $zone_id --email $2 --key $3)
        echo "$output" > "$zone_id"_"$i".tf
        done

  #echo "zone_id: $zone_id"
done

# Now actually doing the import
#for zone_id in "${zone_ids[@]}"
#do
#  echo "zone_id: $zone_id"

#  input_file="$zone_id"_import_statements

  # Loop through each line of the input file
#  while read -r line; do
#    echo -e "\nProcessing line ${line}\n"
#    eval $line

#  done < "$input_file" #done with running import statements
#done #done with loop

