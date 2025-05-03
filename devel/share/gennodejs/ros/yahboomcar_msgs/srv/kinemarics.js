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

class kinemaricsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kin_name = null;
      this.src_pos = null;
      this.src_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('kin_name')) {
        this.kin_name = initObj.kin_name
      }
      else {
        this.kin_name = '';
      }
      if (initObj.hasOwnProperty('src_pos')) {
        this.src_pos = initObj.src_pos
      }
      else {
        this.src_pos = [];
      }
      if (initObj.hasOwnProperty('src_joints')) {
        this.src_joints = initObj.src_joints
      }
      else {
        this.src_joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinemaricsRequest
    // Serialize message field [kin_name]
    bufferOffset = _serializer.string(obj.kin_name, buffer, bufferOffset);
    // Serialize message field [src_pos]
    bufferOffset = _arraySerializer.float64(obj.src_pos, buffer, bufferOffset, null);
    // Serialize message field [src_joints]
    bufferOffset = _arraySerializer.float64(obj.src_joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinemaricsRequest
    let len;
    let data = new kinemaricsRequest(null);
    // Deserialize message field [kin_name]
    data.kin_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [src_pos]
    data.src_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [src_joints]
    data.src_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.kin_name);
    length += 8 * object.src_pos.length;
    length += 8 * object.src_joints.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yahboomcar_msgs/kinemaricsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd98542383cb1edcabb109de87c11a93b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request
    string  kin_name
    float64[] src_pos
    float64[] src_joints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinemaricsRequest(null);
    if (msg.kin_name !== undefined) {
      resolved.kin_name = msg.kin_name;
    }
    else {
      resolved.kin_name = ''
    }

    if (msg.src_pos !== undefined) {
      resolved.src_pos = msg.src_pos;
    }
    else {
      resolved.src_pos = []
    }

    if (msg.src_joints !== undefined) {
      resolved.src_joints = msg.src_joints;
    }
    else {
      resolved.src_joints = []
    }

    return resolved;
    }
};

class kinemaricsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_joints = null;
      this.target_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('target_joints')) {
        this.target_joints = initObj.target_joints
      }
      else {
        this.target_joints = [];
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinemaricsResponse
    // Serialize message field [target_joints]
    bufferOffset = _arraySerializer.float64(obj.target_joints, buffer, bufferOffset, null);
    // Serialize message field [target_pos]
    bufferOffset = _arraySerializer.float64(obj.target_pos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinemaricsResponse
    let len;
    let data = new kinemaricsResponse(null);
    // Deserialize message field [target_joints]
    data.target_joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [target_pos]
    data.target_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.target_joints.length;
    length += 8 * object.target_pos.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yahboomcar_msgs/kinemaricsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '170f5924f3c20248527b77c395783981';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response
    float64[] target_joints
    float64[] target_pos
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinemaricsResponse(null);
    if (msg.target_joints !== undefined) {
      resolved.target_joints = msg.target_joints;
    }
    else {
      resolved.target_joints = []
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = []
    }

    return resolved;
    }
};

module.exports = {
  Request: kinemaricsRequest,
  Response: kinemaricsResponse,
  md5sum() { return 'b50531ac053c7ba8a5e7dbdab4ee0d01'; },
  datatype() { return 'yahboomcar_msgs/kinemarics'; }
};
