TENDER = TENDER || {}

tenderApp= angular.module("tenderApp", ['$httpProvider'])

tenderApp.config ['$httpProvider', ($httpProvider) ->
  $httpProvider.defaults.useXDomain = true
  delete $httpProvider.defaults.headers.common['X-Requested-With']
  ]

@TenderCtrl = ($scope, $http)  ->
  $scope.getdata = () ->
    $scope.url = 'http://localhost:3000/findpets/' + $scope.query
    $http(url: $scope.url, method: 'GET').success (data) ->
       $scope.data = data
       console.log($scope.data)
       console.log($scope.url)


