cut -f 2-4 -d , PredPreyData.csv > Column_organization.csv
head -n 1 Column_organization.csv > HeaderFinal_organization.csv
tail Column_organization.csv >> HeaderFinal_organization.csv
