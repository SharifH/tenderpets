TENDER = TENDER || {}

TENDER.app = angular.module("Tender", ["ngResource", "TENDER.factories"])

@TenderCtrl = ["$scope", "Pet", ($scope, $Pet) ->
  $scope.pets = Pet.query()
]

