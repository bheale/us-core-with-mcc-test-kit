# US Core Test Kit with MCC ecare IG tests

This is the, temporary, home of an [Inferno](https://github.com/inferno-community/inferno-core) test kit
for the US Core Implementation Guide with MCC eCare Implementation Guide tests 
included from the ballot of http://hl7.org/fhir/us/mcc/2023Jan/index.html. 
The tests also include US CORE [v5.0.1](http://hl7.org/fhir/us/core/STU5.0.1/)

Note, this repo is intended for the May 2023 Connectathon. There's no guarantee past the 
May 2023 Connectathon that it will be kept current. However, come back frequently till then for
updates. 

As we borrowed heavily from the US CORE test kits, we owe gratitude and thanks to the hard work of
the US CORE crew (and Inferno team too).

It is highly recommended that you use [Docker](https://www.docker.com/) to run
these tests so that you don't have to configure ruby and the FHIR validator
service.

## Instructions

- Clone this repo.
- Run `setup.sh` in this repo.
- Run `run.sh` in this repo.
- Navigate to `http://localhost`. The US Core with MCC test suite will be available.

## License
Copyright 2022 The MITRE Corporation (orginial US CORE test kit)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License. You may obtain a copy of the
License at
```
http://www.apache.org/licenses/LICENSE-2.0
```
Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
