package org.apache.commons.text.lookup;

import java.util.Map;
import java.util.Objects;
import java.util.function.BiFunction;

final class BiFunctionStringLookup<P, R> implements BiStringLookup<P> {
    private final BiFunction<String, P, R> biFunction;

    private BiFunctionStringLookup(BiFunction<String, P, R> biFunction) {
        this.biFunction = biFunction;
    }

    public static Object lambda$on$0(Map map, String str, Object obj) {
        return map.get(str);
    }

    public static <U, T> BiFunctionStringLookup<U, T> on(BiFunction<String, U, T> biFunction) {
        return new BiFunctionStringLookup<>(biFunction);
    }

    @Override
    public String lookup(String str) {
        return lookup(str, null);
    }

    public String toString() {
        return super.toString() + " [function=" + this.biFunction + "]";
    }

    public static <U, T> BiFunctionStringLookup<U, T> on(final Map<String, T> map) {
        return on(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return BiFunctionStringLookup.lambda$on$0(map, (String) obj, obj2);
            }
        });
    }

    @Override
    public String lookup(String str, P p) {
        BiFunction<String, P, R> biFunction = this.biFunction;
        if (biFunction == null) {
            return null;
        }
        try {
            return Objects.toString(biFunction.apply(str, p), null);
        } catch (IllegalArgumentException | NullPointerException | SecurityException unused) {
            return null;
        }
    }
}
