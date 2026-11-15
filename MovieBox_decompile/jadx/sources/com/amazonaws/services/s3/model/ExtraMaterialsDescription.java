package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ExtraMaterialsDescription implements Serializable {
    public static final ExtraMaterialsDescription NONE = new ExtraMaterialsDescription(Collections.EMPTY_MAP);
    private final Map<String, String> extra;
    private final ConflictResolution resolve;

    static class AnonymousClass1 {

        static final int[] f18082a;

        static {
            int[] iArr = new int[ConflictResolution.values().length];
            f18082a = iArr;
            try {
                iArr[ConflictResolution.FAIL_FAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18082a[ConflictResolution.OVERRIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18082a[ConflictResolution.OVERRIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ConflictResolution {
        FAIL_FAST,
        OVERRIDE,
        OVERRIDDEN
    }

    public ExtraMaterialsDescription(Map<String, String> map) {
        this(map, ConflictResolution.FAIL_FAST);
    }

    public ConflictResolution getConflictResolution() {
        return this.resolve;
    }

    public Map<String, String> getMaterialDescription() {
        return this.extra;
    }

    public Map<String, String> mergeInto(Map<String, String> map) {
        if (this.extra.size() == 0) {
            return map;
        }
        if (map == null || map.size() == 0) {
            return this.extra;
        }
        int i10 = AnonymousClass1.f18082a[this.resolve.ordinal()];
        if (i10 == 1) {
            int size = map.size() + this.extra.size();
            HashMap map2 = new HashMap(map);
            map2.putAll(this.extra);
            if (size == map2.size()) {
                return Collections.unmodifiableMap(map2);
            }
            throw new IllegalArgumentException("The supplemental material descriptions contains conflicting entries");
        }
        if (i10 == 2) {
            HashMap map3 = new HashMap(this.extra);
            map3.putAll(map);
            return Collections.unmodifiableMap(map3);
        }
        if (i10 != 3) {
            throw new UnsupportedOperationException();
        }
        HashMap map4 = new HashMap(map);
        map4.putAll(this.extra);
        return Collections.unmodifiableMap(map4);
    }

    public ExtraMaterialsDescription(Map<String, String> map, ConflictResolution conflictResolution) {
        if (map == null || conflictResolution == null) {
            throw new IllegalArgumentException();
        }
        this.extra = Collections.unmodifiableMap(new HashMap(map));
        this.resolve = conflictResolution;
    }
}
