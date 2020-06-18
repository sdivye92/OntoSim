// Auto-generated. Do not edit!

// (in-package ros_nodes.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Communication {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agentid = null;
      this.uri = null;
    }
    else {
      if (initObj.hasOwnProperty('agentid')) {
        this.agentid = initObj.agentid
      }
      else {
        this.agentid = '';
      }
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Communication
    // Serialize message field [agentid]
    bufferOffset = _serializer.string(obj.agentid, buffer, bufferOffset);
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Communication
    let len;
    let data = new Communication(null);
    // Deserialize message field [agentid]
    data.agentid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agentid.length;
    length += object.uri.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_nodes/Communication';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c03c71c688e6039580a604205a7b40fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string agentid
    string uri
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Communication(null);
    if (msg.agentid !== undefined) {
      resolved.agentid = msg.agentid;
    }
    else {
      resolved.agentid = ''
    }

    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    return resolved;
    }
};

module.exports = Communication;
