# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from struct_with_variable_length_vector/imgDataArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import struct_with_variable_length_vector.msg

class imgDataArray(genpy.Message):
  _md5sum = "5acf757ce2cf62eba4d588b11014b16c"
  _type = "struct_with_variable_length_vector/imgDataArray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """imgData[] images

================================================================================
MSG: struct_with_variable_length_vector/imgData
int32 upperLeft
int32 lowerRight
string color
string cameraID
string label
int16 size
int16 stride
int16 dataOffset
int16[] Data
"""
  __slots__ = ['images']
  _slot_types = ['struct_with_variable_length_vector/imgData[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       images

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(imgDataArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.images is None:
        self.images = []
    else:
      self.images = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.images)
      buff.write(_struct_I.pack(length))
      for val1 in self.images:
        _x = val1
        buff.write(_struct_2i.pack(_x.upperLeft, _x.lowerRight))
        _x = val1.color
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.cameraID
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_3h.pack(_x.size, _x.stride, _x.dataOffset))
        length = len(val1.Data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sh'%length
        buff.write(struct.pack(pattern, *val1.Data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.images is None:
        self.images = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.images = []
      for i in range(0, length):
        val1 = struct_with_variable_length_vector.msg.imgData()
        _x = val1
        start = end
        end += 8
        (_x.upperLeft, _x.lowerRight,) = _struct_2i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.color = str[start:end].decode('utf-8')
        else:
          val1.color = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.cameraID = str[start:end].decode('utf-8')
        else:
          val1.cameraID = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 6
        (_x.size, _x.stride, _x.dataOffset,) = _struct_3h.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sh'%length
        start = end
        end += struct.calcsize(pattern)
        val1.Data = struct.unpack(pattern, str[start:end])
        self.images.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.images)
      buff.write(_struct_I.pack(length))
      for val1 in self.images:
        _x = val1
        buff.write(_struct_2i.pack(_x.upperLeft, _x.lowerRight))
        _x = val1.color
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.cameraID
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_3h.pack(_x.size, _x.stride, _x.dataOffset))
        length = len(val1.Data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sh'%length
        buff.write(val1.Data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.images is None:
        self.images = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.images = []
      for i in range(0, length):
        val1 = struct_with_variable_length_vector.msg.imgData()
        _x = val1
        start = end
        end += 8
        (_x.upperLeft, _x.lowerRight,) = _struct_2i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.color = str[start:end].decode('utf-8')
        else:
          val1.color = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.cameraID = str[start:end].decode('utf-8')
        else:
          val1.cameraID = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 6
        (_x.size, _x.stride, _x.dataOffset,) = _struct_3h.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sh'%length
        start = end
        end += struct.calcsize(pattern)
        val1.Data = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
        self.images.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3h = struct.Struct("<3h")
_struct_2i = struct.Struct("<2i")