package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.ChannelTypes;
import com.transsion.audiotagger.tag.id3.valuepair.EventTimingTimestampTypes;
import com.transsion.audiotagger.tag.id3.valuepair.EventTimingTypes;
import com.transsion.audiotagger.tag.id3.valuepair.InterpolationTypes;
import com.transsion.audiotagger.tag.id3.valuepair.ReceivedAsTypes;
import com.transsion.audiotagger.tag.id3.valuepair.SynchronisedLyricsContentType;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import com.transsion.audiotagger.utils.EqualsUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;

public class NumberHashMap extends NumberFixedLength implements HashMapInterface<Integer, String> {
    private boolean hasEmptyValue;
    private Map<Integer, String> keyToValue;
    private Map<String, Integer> valueToKey;

    public NumberHashMap(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody, i);
        this.keyToValue = null;
        this.valueToKey = null;
        this.hasEmptyValue = false;
        if (str.equals(DataTypes.OBJ_GENRE)) {
            this.valueToKey = GenreTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = GenreTypes.getInstanceOf().getIdToValueMap();
            this.hasEmptyValue = true;
            return;
        }
        if (str.equals(DataTypes.OBJ_TEXT_ENCODING)) {
            this.valueToKey = TextEncoding.getInstanceOf().getValueToIdMap();
            this.keyToValue = TextEncoding.getInstanceOf().getIdToValueMap();
            return;
        }
        if (str.equals(DataTypes.OBJ_INTERPOLATION_METHOD)) {
            this.valueToKey = InterpolationTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = InterpolationTypes.getInstanceOf().getIdToValueMap();
            return;
        }
        if (str.equals(DataTypes.OBJ_PICTURE_TYPE)) {
            this.valueToKey = PictureTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = PictureTypes.getInstanceOf().getIdToValueMap();
            this.hasEmptyValue = true;
            return;
        }
        if (str.equals(DataTypes.OBJ_TYPE_OF_EVENT)) {
            this.valueToKey = EventTimingTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = EventTimingTypes.getInstanceOf().getIdToValueMap();
            return;
        }
        if (str.equals(DataTypes.OBJ_TIME_STAMP_FORMAT)) {
            this.valueToKey = EventTimingTimestampTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = EventTimingTimestampTypes.getInstanceOf().getIdToValueMap();
            return;
        }
        if (str.equals(DataTypes.OBJ_TYPE_OF_CHANNEL)) {
            this.valueToKey = ChannelTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = ChannelTypes.getInstanceOf().getIdToValueMap();
            return;
        }
        if (str.equals(DataTypes.OBJ_RECIEVED_AS)) {
            this.valueToKey = ReceivedAsTypes.getInstanceOf().getValueToIdMap();
            this.keyToValue = ReceivedAsTypes.getInstanceOf().getIdToValueMap();
        } else if (str.equals(DataTypes.OBJ_CONTENT_TYPE)) {
            this.valueToKey = SynchronisedLyricsContentType.getInstanceOf().getValueToIdMap();
            this.keyToValue = SynchronisedLyricsContentType.getInstanceOf().getIdToValueMap();
        } else {
            throw new IllegalArgumentException("Hashmap identifier not defined in this class: " + str);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NumberHashMap)) {
            return false;
        }
        NumberHashMap numberHashMap = (NumberHashMap) obj;
        return EqualsUtil.areEqual(this.hasEmptyValue, numberHashMap.hasEmptyValue) && EqualsUtil.areEqual(this.keyToValue, numberHashMap.keyToValue) && EqualsUtil.areEqual(this.valueToKey, numberHashMap.valueToKey) && super.equals(numberHashMap);
    }

    @Override
    public Map<Integer, String> getKeyToValue() {
        return this.keyToValue;
    }

    @Override
    public Map<String, Integer> getValueToKey() {
        return this.valueToKey;
    }

    @Override
    public Iterator<String> iterator() {
        if (this.keyToValue == null) {
            return null;
        }
        TreeSet treeSet = new TreeSet(this.keyToValue.values());
        if (this.hasEmptyValue) {
            treeSet.add("");
        }
        return treeSet.iterator();
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        super.readByteArray(bArr, i);
        Integer numValueOf = Integer.valueOf(((Long) this.value).intValue());
        if (this.keyToValue.containsKey(numValueOf)) {
            return;
        }
        if (!this.hasEmptyValue) {
            throw new InvalidDataTypeException(ErrorMessage.MP3_REFERENCE_KEY_INVALID.getMsg(this.identifier, numValueOf));
        }
        if (this.identifier.equals(DataTypes.OBJ_PICTURE_TYPE)) {
            AbstractDataType.logger.warning(ErrorMessage.MP3_PICTURE_TYPE_INVALID.getMsg(this.value));
        }
    }

    @Override
    public void setValue(Object obj) {
        if (obj instanceof Byte) {
            this.value = Long.valueOf(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            this.value = Long.valueOf(((Short) obj).shortValue());
        } else if (obj instanceof Integer) {
            this.value = Long.valueOf(((Integer) obj).intValue());
        } else {
            this.value = obj;
        }
    }

    @Override
    public String toString() {
        Object obj = this.value;
        return (obj == null || this.keyToValue.get(obj) == null) ? "" : this.keyToValue.get(this.value);
    }

    public NumberHashMap(NumberHashMap numberHashMap) {
        super(numberHashMap);
        this.keyToValue = null;
        this.valueToKey = null;
        this.hasEmptyValue = false;
        this.hasEmptyValue = numberHashMap.hasEmptyValue;
        this.keyToValue = numberHashMap.keyToValue;
        this.valueToKey = numberHashMap.valueToKey;
    }
}
