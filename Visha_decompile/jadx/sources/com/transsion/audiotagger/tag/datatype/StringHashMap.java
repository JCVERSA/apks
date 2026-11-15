package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.reference.Languages;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;

public class StringHashMap extends StringFixedLength implements HashMapInterface<String, String> {
    boolean hasEmptyValue;
    Map<String, String> keyToValue;
    Map<String, String> valueToKey;

    public StringHashMap(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody, i);
        this.keyToValue = null;
        this.valueToKey = null;
        this.hasEmptyValue = false;
        if (str.equals(DataTypes.OBJ_LANGUAGE)) {
            this.valueToKey = Languages.getInstanceOf().getValueToIdMap();
            this.keyToValue = Languages.getInstanceOf().getIdToValueMap();
        } else {
            throw new IllegalArgumentException("Hashmap identifier not defined in this class: " + str);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof StringHashMap)) {
            return false;
        }
        StringHashMap stringHashMap = (StringHashMap) obj;
        if (this.hasEmptyValue != stringHashMap.hasEmptyValue) {
            return false;
        }
        Map<String, String> map = this.keyToValue;
        if (map == null) {
            if (stringHashMap.keyToValue != null) {
                return false;
            }
        } else if (!map.equals(stringHashMap.keyToValue)) {
            return false;
        }
        if (this.keyToValue == null) {
            if (stringHashMap.keyToValue != null) {
                return false;
            }
        } else if (!this.valueToKey.equals(stringHashMap.valueToKey)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public Map<String, String> getKeyToValue() {
        return this.keyToValue;
    }

    @Override
    public Charset getTextEncodingCharSet() {
        return StandardCharsets.ISO_8859_1;
    }

    @Override
    public Map<String, String> getValueToKey() {
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
    public void setValue(Object obj) {
        if (!(obj instanceof String)) {
            this.value = obj;
        } else if (obj.equals(Languages.MEDIA_MONKEY_ID)) {
            this.value = obj.toString();
        } else {
            this.value = ((String) obj).toLowerCase();
        }
    }

    @Override
    public String toString() {
        Object obj = this.value;
        return (obj == null || this.keyToValue.get(obj) == null) ? "" : this.keyToValue.get(this.value);
    }

    public StringHashMap(StringHashMap stringHashMap) {
        super(stringHashMap);
        this.keyToValue = null;
        this.valueToKey = null;
        this.hasEmptyValue = false;
        this.hasEmptyValue = stringHashMap.hasEmptyValue;
        this.keyToValue = stringHashMap.keyToValue;
        this.valueToKey = stringHashMap.valueToKey;
    }
}
