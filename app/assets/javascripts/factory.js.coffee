factoriesModule = angular.module('TENDER.factories', [])

factoriesModule.factory "Pet", ["$resource", ($resource) ->
  $resource ->
    $resource 'https://:url/:action'
    ,
      url: 'localhost:3000/findpets'
    ,
       action:':animal&breeds=:breeds&:location&.json'
    ,
      callback:'JSON_CALLBACK'
    ,
      animal: "@animal"
    ,
      breeds: "@breeds"
    ,
      location: "@sex"
    ,
      method: GET
  ]