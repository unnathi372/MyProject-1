## Prerequisites
1. Create GCS state bucket manually:
   gcloud storage buckets create gs://YOUR-STATE-BUCKET \
     --location=asia-south1 \
     --uniform-bucket-level-access
2. Enable versioning on state bucket
3. Run terraform init with backend config pointing to this bucket
