(function() {
  "use strict";

  angular.module("app").controller("fightersCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("api/v1/fighters.json").then(function(response) {
        $scope.fighters = response.data;
        console.log(response.data);
      });
    }

    $scope.addFighter = function(first_name, last_name, weight_class, weight, current_record, current_titles, hometown) {
      var newFighter = {
        first_name: first_name,
        last_name: last_name,
        weight_class: weight_class,
        weight: weight,
        current_record: current_record,
        current_titles: current_titles,
        hometown: hometown
      }
      $http.post("api/v1/fighters.json", newFighter).then(function(response) {
        var fighterCallback = response.data
        $scope.fighters.push(fighterCallback);
      });
    }

    $scope.deleteFighter = function(index) {
        $scope.fighters.splice(index,1);
      }

    window.$scope = $scope;


  });
}());