// Auto-generated. Do not edit!

// (in-package yahboomcar_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotArmArrayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.apply = null;
    }
    else {
      if (initObj.hasOwnProperty('apply')) {
        this.apply = initObj.apply
      }
      else {
        this.apply = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmArrayRequest
    // Serialize message field [apply]
    bufferOffset = _serializer.string(obj.apply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmArrayRequest
    let len;
    let data = new RobotArmArrayRequest(null);
    // Deserialize message field [apply]
    data.apply = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.apply);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yahboomcar_msgs/RobotArmArrayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8e8b3a3b74f38e6cd4cf9904695ae0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    string apply
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotArmArrayRequest(null);
    if (msg.apply !== undefined) {
      resolved.apply = msg.apply;
    }
    else {
      resolved.apply = ''
    }

    return resolved;
    }
};

class RobotArmArrayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotArmArrayResponse
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotArmArrayResponse
    let len;
    let data = new RobotArmArrayResponse(null);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.angles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yahboomcar_msgs/RobotArmArrayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7ca77b9da2dfe623a276e10b570d2df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    float64[] angles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotArmArrayResponse(null);
    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotArmArrayRequest,
  Response: RobotArmArrayResponse,
  md5sum() { return '22eb2a15e67062ad54355cfa936a9cdb'; },
  datatype() { return 'yahboomcar_msgs/RobotArmArray'; }
};
