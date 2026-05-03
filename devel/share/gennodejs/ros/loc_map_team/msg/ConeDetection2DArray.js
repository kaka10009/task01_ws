// Auto-generated. Do not edit!

// (in-package loc_map_team.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConeDetection2D = require('./ConeDetection2D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ConeDetection2DArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cones = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cones')) {
        this.cones = initObj.cones
      }
      else {
        this.cones = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConeDetection2DArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cones]
    // Serialize the length for message field [cones]
    bufferOffset = _serializer.uint32(obj.cones.length, buffer, bufferOffset);
    obj.cones.forEach((val) => {
      bufferOffset = ConeDetection2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConeDetection2DArray
    let len;
    let data = new ConeDetection2DArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cones]
    // Deserialize array length for message field [cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cones[i] = ConeDetection2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cones.forEach((val) => {
      length += ConeDetection2D.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'loc_map_team/ConeDetection2DArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '744c29900cdc6759a0a8197665c4f5b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 一帧图像中所有锥桶的2D检测结果
    Header header
    ConeDetection2D[] cones
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: loc_map_team/ConeDetection2D
    # 单个锥桶的2D检测结果
    float32 x1          # 检测框左上角 x 
    float32 y1          # 检测框左上角 y 
    float32 x2          # 检测框右下角 x 
    float32 y2          # 检测框右下角 y 
    float32 confidence  # 置信度
    string color        # red_cone / blue_cone / yellow_cone
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConeDetection2DArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cones !== undefined) {
      resolved.cones = new Array(msg.cones.length);
      for (let i = 0; i < resolved.cones.length; ++i) {
        resolved.cones[i] = ConeDetection2D.Resolve(msg.cones[i]);
      }
    }
    else {
      resolved.cones = []
    }

    return resolved;
    }
};

module.exports = ConeDetection2DArray;
