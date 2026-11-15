package com.transsion.audiotagger.tag.datatype;

import java.util.Iterator;
import java.util.Map;

public interface HashMapInterface<K, V> {
    Map<K, V> getKeyToValue();

    Map<V, K> getValueToKey();

    Iterator<V> iterator();
}
