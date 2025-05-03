// Auto-generated. Do not edit!

// (in-package dofbot_info.srv)


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
      this.tar_x = null;
      this.tar_y = null;
      this.tar_z = null;
      this.Roll = null;
      this.Pitch = null;
      this.Yaw = null;
      this.cur_joint1 = null;
      this.cur_joint2 = null;
      this.cur_joint3 = null;
      this.cur_joint4 = null;
      this.cur_joint5 = null;
      this.cur_joint6 = null;
      this.kin_name = null;
    }
    else {
      if (initObj.hasOwnProperty('tar_x')) {
        this.tar_x = initObj.tar_x
      }
      else {
        this.tar_x = 0.0;
      }
      if (initObj.hasOwnProperty('tar_y')) {
        this.tar_y = initObj.tar_y
      }
      else {
        this.tar_y = 0.0;
      }
      if (initObj.hasOwnProperty('tar_z')) {
        this.tar_z = initObj.tar_z
      }
      else {
        this.tar_z = 0.0;
      }
      if (initObj.hasOwnProperty('Roll')) {
        this.Roll = initObj.Roll
      }
      else {
        this.Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Pitch')) {
        this.Pitch = initObj.Pitch
      }
      else {
        this.Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw')) {
        this.Yaw = initObj.Yaw
      }
      else {
        this.Yaw = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint1')) {
        this.cur_joint1 = initObj.cur_joint1
      }
      else {
        this.cur_joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint2')) {
        this.cur_joint2 = initObj.cur_joint2
      }
      else {
        this.cur_joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint3')) {
        this.cur_joint3 = initObj.cur_joint3
      }
      else {
        this.cur_joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint4')) {
        this.cur_joint4 = initObj.cur_joint4
      }
      else {
        this.cur_joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint5')) {
        this.cur_joint5 = initObj.cur_joint5
      }
      else {
        this.cur_joint5 = 0.0;
      }
      if (initObj.hasOwnProperty('cur_joint6')) {
        this.cur_joint6 = initObj.cur_joint6
      }
      else {
        this.cur_joint6 = 0.0;
      }
      if (initObj.hasOwnProperty('kin_name')) {
        this.kin_name = initObj.kin_name
      }
      else {
        this.kin_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinemaricsRequest
    // Serialize message field [tar_x]
    bufferOffset = _serializer.float64(obj.tar_x, buffer, bufferOffset);
    // Serialize message field [tar_y]
    bufferOffset = _serializer.float64(obj.tar_y, buffer, bufferOffset);
    // Serialize message field [tar_z]
    bufferOffset = _serializer.float64(obj.tar_z, buffer, bufferOffset);
    // Serialize message field [Roll]
    bufferOffset = _serializer.float64(obj.Roll, buffer, bufferOffset);
    // Serialize message field [Pitch]
    bufferOffset = _serializer.float64(obj.Pitch, buffer, bufferOffset);
    // Serialize message field [Yaw]
    bufferOffset = _serializer.float64(obj.Yaw, buffer, bufferOffset);
    // Serialize message field [cur_joint1]
    bufferOffset = _serializer.float64(obj.cur_joint1, buffer, bufferOffset);
    // Serialize message field [cur_joint2]
    bufferOffset = _serializer.float64(obj.cur_joint2, buffer, bufferOffset);
    // Serialize message field [cur_joint3]
    bufferOffset = _serializer.float64(obj.cur_joint3, buffer, bufferOffset);
    // Serialize message field [cur_joint4]
    bufferOffset = _serializer.float64(obj.cur_joint4, buffer, bufferOffset);
    // Serialize message field [cur_joint5]
    bufferOffset = _serializer.float64(obj.cur_joint5, buffer, bufferOffset);
    // Serialize message field [cur_joint6]
    bufferOffset = _serializer.float64(obj.cur_joint6, buffer, bufferOffset);
    // Serialize message field [kin_name]
    bufferOffset = _serializer.string(obj.kin_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinemaricsRequest
    let len;
    let data = new kinemaricsRequest(null);
    // Deserialize message field [tar_x]
    data.tar_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tar_y]
    data.tar_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tar_z]
    data.tar_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Roll]
    data.Roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Pitch]
    data.Pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Yaw]
    data.Yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint1]
    data.cur_joint1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint2]
    data.cur_joint2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint3]
    data.cur_joint3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint4]
    data.cur_joint4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint5]
    data.cur_joint5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_joint6]
    data.cur_joint6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kin_name]
    data.kin_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.kin_name);
    return length + 100;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dofbot_info/kinemaricsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11d857e8542c0047afc9d3b13061446f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request
    float64 tar_x
    float64 tar_y
    float64 tar_z
    float64 Roll
    float64 Pitch
    float64 Yaw
    float64 cur_joint1
    float64 cur_joint2
    float64 cur_joint3
    float64 cur_joint4
    float64 cur_joint5
    float64 cur_joint6
    string  kin_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinemaricsRequest(null);
    if (msg.tar_x !== undefined) {
      resolved.tar_x = msg.tar_x;
    }
    else {
      resolved.tar_x = 0.0
    }

    if (msg.tar_y !== undefined) {
      resolved.tar_y = msg.tar_y;
    }
    else {
      resolved.tar_y = 0.0
    }

    if (msg.tar_z !== undefined) {
      resolved.tar_z = msg.tar_z;
    }
    else {
      resolved.tar_z = 0.0
    }

    if (msg.Roll !== undefined) {
      resolved.Roll = msg.Roll;
    }
    else {
      resolved.Roll = 0.0
    }

    if (msg.Pitch !== undefined) {
      resolved.Pitch = msg.Pitch;
    }
    else {
      resolved.Pitch = 0.0
    }

    if (msg.Yaw !== undefined) {
      resolved.Yaw = msg.Yaw;
    }
    else {
      resolved.Yaw = 0.0
    }

    if (msg.cur_joint1 !== undefined) {
      resolved.cur_joint1 = msg.cur_joint1;
    }
    else {
      resolved.cur_joint1 = 0.0
    }

    if (msg.cur_joint2 !== undefined) {
      resolved.cur_joint2 = msg.cur_joint2;
    }
    else {
      resolved.cur_joint2 = 0.0
    }

    if (msg.cur_joint3 !== undefined) {
      resolved.cur_joint3 = msg.cur_joint3;
    }
    else {
      resolved.cur_joint3 = 0.0
    }

    if (msg.cur_joint4 !== undefined) {
      resolved.cur_joint4 = msg.cur_joint4;
    }
    else {
      resolved.cur_joint4 = 0.0
    }

    if (msg.cur_joint5 !== undefined) {
      resolved.cur_joint5 = msg.cur_joint5;
    }
    else {
      resolved.cur_joint5 = 0.0
    }

    if (msg.cur_joint6 !== undefined) {
      resolved.cur_joint6 = msg.cur_joint6;
    }
    else {
      resolved.cur_joint6 = 0.0
    }

    if (msg.kin_name !== undefined) {
      resolved.kin_name = msg.kin_name;
    }
    else {
      resolved.kin_name = ''
    }

    return resolved;
    }
};

class kinemaricsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.joint5 = null;
      this.joint6 = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.Roll = null;
      this.Pitch = null;
      this.Yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('joint5')) {
        this.joint5 = initObj.joint5
      }
      else {
        this.joint5 = 0.0;
      }
      if (initObj.hasOwnProperty('joint6')) {
        this.joint6 = initObj.joint6
      }
      else {
        this.joint6 = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('Roll')) {
        this.Roll = initObj.Roll
      }
      else {
        this.Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Pitch')) {
        this.Pitch = initObj.Pitch
      }
      else {
        this.Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw')) {
        this.Yaw = initObj.Yaw
      }
      else {
        this.Yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinemaricsResponse
    // Serialize message field [joint1]
    bufferOffset = _serializer.float64(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float64(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float64(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float64(obj.joint4, buffer, bufferOffset);
    // Serialize message field [joint5]
    bufferOffset = _serializer.float64(obj.joint5, buffer, bufferOffset);
    // Serialize message field [joint6]
    bufferOffset = _serializer.float64(obj.joint6, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [Roll]
    bufferOffset = _serializer.float64(obj.Roll, buffer, bufferOffset);
    // Serialize message field [Pitch]
    bufferOffset = _serializer.float64(obj.Pitch, buffer, bufferOffset);
    // Serialize message field [Yaw]
    bufferOffset = _serializer.float64(obj.Yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinemaricsResponse
    let len;
    let data = new kinemaricsResponse(null);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint5]
    data.joint5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint6]
    data.joint6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Roll]
    data.Roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Pitch]
    data.Pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Yaw]
    data.Yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dofbot_info/kinemaricsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '906df963bc5a51f2145b13de1507f439';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response
    float64 joint1
    float64 joint2
    float64 joint3
    float64 joint4
    float64 joint5
    float64 joint6
    float64 x
    float64 y
    float64 z
    float64 Roll
    float64 Pitch
    float64 Yaw
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinemaricsResponse(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    if (msg.joint5 !== undefined) {
      resolved.joint5 = msg.joint5;
    }
    else {
      resolved.joint5 = 0.0
    }

    if (msg.joint6 !== undefined) {
      resolved.joint6 = msg.joint6;
    }
    else {
      resolved.joint6 = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.Roll !== undefined) {
      resolved.Roll = msg.Roll;
    }
    else {
      resolved.Roll = 0.0
    }

    if (msg.Pitch !== undefined) {
      resolved.Pitch = msg.Pitch;
    }
    else {
      resolved.Pitch = 0.0
    }

    if (msg.Yaw !== undefined) {
      resolved.Yaw = msg.Yaw;
    }
    else {
      resolved.Yaw = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: kinemaricsRequest,
  Response: kinemaricsResponse,
  md5sum() { return 'd4d7066ccc45dfff67e7b0b528d14e9b'; },
  datatype() { return 'dofbot_info/kinemarics'; }
};
