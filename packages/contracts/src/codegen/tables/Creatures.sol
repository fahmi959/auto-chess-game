// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("Creatures")));
bytes32 constant CreaturesTableId = _tableId;

struct CreaturesData {
  uint256 health;
  uint256 attack;
  uint256 range;
  uint256 defense;
  uint256 speed;
}

library Creatures {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](5);
    _schema[0] = SchemaType.UINT256;
    _schema[1] = SchemaType.UINT256;
    _schema[2] = SchemaType.UINT256;
    _schema[3] = SchemaType.UINT256;
    _schema[4] = SchemaType.UINT256;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](5);
    _fieldNames[0] = "health";
    _fieldNames[1] = "attack";
    _fieldNames[2] = "range";
    _fieldNames[3] = "defense";
    _fieldNames[4] = "speed";
    return ("Creatures", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get health */
  function getHealth(bytes32 key) internal view returns (uint256 health) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get health (using the specified store) */
  function getHealth(IStore _store, bytes32 key) internal view returns (uint256 health) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set health */
  function setHealth(bytes32 key, uint256 health) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((health)));
  }

  /** Set health (using the specified store) */
  function setHealth(IStore _store, bytes32 key, uint256 health) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((health)));
  }

  /** Get attack */
  function getAttack(bytes32 key) internal view returns (uint256 attack) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get attack (using the specified store) */
  function getAttack(IStore _store, bytes32 key) internal view returns (uint256 attack) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set attack */
  function setAttack(bytes32 key, uint256 attack) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((attack)));
  }

  /** Set attack (using the specified store) */
  function setAttack(IStore _store, bytes32 key, uint256 attack) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((attack)));
  }

  /** Get range */
  function getRange(bytes32 key) internal view returns (uint256 range) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get range (using the specified store) */
  function getRange(IStore _store, bytes32 key) internal view returns (uint256 range) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set range */
  function setRange(bytes32 key, uint256 range) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((range)));
  }

  /** Set range (using the specified store) */
  function setRange(IStore _store, bytes32 key, uint256 range) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((range)));
  }

  /** Get defense */
  function getDefense(bytes32 key) internal view returns (uint256 defense) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get defense (using the specified store) */
  function getDefense(IStore _store, bytes32 key) internal view returns (uint256 defense) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set defense */
  function setDefense(bytes32 key, uint256 defense) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 3, abi.encodePacked((defense)));
  }

  /** Set defense (using the specified store) */
  function setDefense(IStore _store, bytes32 key, uint256 defense) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 3, abi.encodePacked((defense)));
  }

  /** Get speed */
  function getSpeed(bytes32 key) internal view returns (uint256 speed) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get speed (using the specified store) */
  function getSpeed(IStore _store, bytes32 key) internal view returns (uint256 speed) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set speed */
  function setSpeed(bytes32 key, uint256 speed) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 4, abi.encodePacked((speed)));
  }

  /** Set speed (using the specified store) */
  function setSpeed(IStore _store, bytes32 key, uint256 speed) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 4, abi.encodePacked((speed)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (CreaturesData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (CreaturesData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 key, uint256 health, uint256 attack, uint256 range, uint256 defense, uint256 speed) internal {
    bytes memory _data = encode(health, attack, range, defense, speed);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 key,
    uint256 health,
    uint256 attack,
    uint256 range,
    uint256 defense,
    uint256 speed
  ) internal {
    bytes memory _data = encode(health, attack, range, defense, speed);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, CreaturesData memory _table) internal {
    set(key, _table.health, _table.attack, _table.range, _table.defense, _table.speed);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, CreaturesData memory _table) internal {
    set(_store, key, _table.health, _table.attack, _table.range, _table.defense, _table.speed);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (CreaturesData memory _table) {
    _table.health = (uint256(Bytes.slice32(_blob, 0)));

    _table.attack = (uint256(Bytes.slice32(_blob, 32)));

    _table.range = (uint256(Bytes.slice32(_blob, 64)));

    _table.defense = (uint256(Bytes.slice32(_blob, 96)));

    _table.speed = (uint256(Bytes.slice32(_blob, 128)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    uint256 health,
    uint256 attack,
    uint256 range,
    uint256 defense,
    uint256 speed
  ) internal view returns (bytes memory) {
    return abi.encodePacked(health, attack, range, defense, speed);
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
