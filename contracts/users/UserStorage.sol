// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.5.10 <0.9.0;

import '../helpers/BaseStorage.sol';

contract UserStorage is BaseStorage {

  mapping(uint => Profile) profiles;

  struct Profile {
    uint id;
    bytes32 username;
  }

  uint latestUserId = 0;

  function createUser(bytes32 _username) public onlyController returns(uint) {
    latestUserId++;  

    profiles[latestUserId] = Profile(latestUserId, _username);

    return latestUserId;
  }

}