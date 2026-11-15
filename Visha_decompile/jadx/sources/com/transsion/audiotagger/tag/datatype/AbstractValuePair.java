package com.transsion.audiotagger.tag.datatype;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class AbstractValuePair<I, V> {
    protected final Map<I, V> idToValue;
    protected Iterator<I> iterator;
    protected String value;
    protected final List<V> valueList;
    protected final Map<V, I> valueToId;

    public AbstractValuePair() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.idToValue = linkedHashMap;
        this.valueToId = new LinkedHashMap();
        this.valueList = new ArrayList();
        this.iterator = linkedHashMap.keySet().iterator();
    }

    public List<V> getAlphabeticalValueList() {
        return this.valueList;
    }

    public Map<I, V> getIdToValueMap() {
        return this.idToValue;
    }

    public int getSize() {
        return this.valueList.size();
    }

    public Map<V, I> getValueToIdMap() {
        return this.valueToId;
    }
}
