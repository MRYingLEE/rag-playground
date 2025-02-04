# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_document_ai_processor" "layout_parser_processor" {
  location     = "eu"
  display_name = "layout-parser-processor"
  type         = "LAYOUT_PARSER_PROCESSOR"
}

resource "google_document_ai_processor_default_version" "layout_parser_processor" {
  processor = google_document_ai_processor.layout_parser_processor.id
  version   = "${google_document_ai_processor.layout_parser_processor.id}/processorVersions/stable"

  lifecycle {
    ignore_changes = [
      version,
    ]
  }
}