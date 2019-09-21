# frozen_string_literal: true

require 'gitlab'

API_URL = ENV['CI_API_V4_URL']
TOKEN = ENV['GITLAB_API_TOKEN']
PROJECT_ID = ENV['CI_PROJECT_ID']
VERSION = ENV['CI_COMMIT_TAG']

version_stripped = VERSION.delete_prefix('v')

client = Gitlab.client(endpoint: API_URL, private_token: TOKEN)

zip_url = "#{API_URL}/projects/#{PROJECT_ID}/jobs/artifacts/#{VERSION}/raw/magisk-malayalam-fonts-#{VERSION}.zip?job=build-zip"

release_details = {
  name: "Version #{version_stripped}",
  tag_name: VERSION,
  description: "Release #{VERSION} of Magisk Malayalam Fonts",
  assets: {
    links: [
      {
        name: "magisk-malayalam-fonts-#{VERSION}.zip",
        url: zip_url
      }
    ]
  }
}

client.create_project_release(PROJECT_ID, release_details)
