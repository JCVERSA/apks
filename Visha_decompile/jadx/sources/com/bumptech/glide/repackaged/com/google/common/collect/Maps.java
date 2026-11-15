package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Function;
import com.bumptech.glide.repackaged.com.google.common.base.Joiner;
import java.util.Map;

public final class Maps {
    static final Joiner.MapJoiner STANDARD_JOINER = Collections2.STANDARD_JOINER.withKeyValueSeparator("=");

    public static class AnonymousClass1 extends TransformedIterator {
        final Function val$function;

        @Override
        public Map.Entry transform(Object obj) {
            return Maps.immutableEntry(obj, this.val$function.apply(obj));
        }
    }

    public enum EntryFunction implements Function<Map.Entry<?, ?>, Object> {
        KEY {
            @Override
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE {
            @Override
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        EntryFunction(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static boolean equalsImpl(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static <K, V> Map.Entry<K, V> immutableEntry(K k, V v) {
        return new ImmutableEntry(k, v);
    }

    public static String toStringImpl(Map<?, ?> map) {
        StringBuilder sbNewStringBuilderForCollection = Collections2.newStringBuilderForCollection(map.size());
        sbNewStringBuilderForCollection.append('{');
        STANDARD_JOINER.appendTo(sbNewStringBuilderForCollection, map);
        sbNewStringBuilderForCollection.append('}');
        return sbNewStringBuilderForCollection.toString();
    }

    public static <V> Function<Map.Entry<?, V>, V> valueFunction() {
        return EntryFunction.VALUE;
    }
}
