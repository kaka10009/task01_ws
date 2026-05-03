// Auto-generated. Do not edit!

// (in-package tools_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cone_id = null;
      this.color = null;
      this.position_x = null;
      this.position_y = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('cone_id')) {
        this.cone_id = initObj.cone_id
      }
      else {
        this.cone_id = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConeInfo
    // Serialize message field [cone_id]
    bufferOffset = _serializer.int32(obj.cone_id, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.int32(obj.color, buffer, bufferOffset);
    // Serialize message field [position_x]
    bufferOffset = _serializer.float32(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float32(obj.position_y, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConeInfo
    let len;
    let data = new ConeInfo(null);
    // Deserialize message field [cone_id]
    data.cone_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tools_msgs/ConeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0da50e2dcec8ef7611d66b74becda81e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cone_id
    int32 color
    float32 position_x
    float32 position_y
    float32 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConeInfo(null);
    if (msg.cone_id !== undefined) {
      resolved.cone_id = msg.cone_id;
    }
    else {
      resolved.cone_id = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = ConeInfo;
