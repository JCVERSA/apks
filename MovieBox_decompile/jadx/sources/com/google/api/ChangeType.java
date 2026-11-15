package com.google.api;

import com.google.protobuf.y;

public enum ChangeType implements y.c {
    CHANGE_TYPE_UNSPECIFIED(0),
    ADDED(1),
    REMOVED(2),
    MODIFIED(3),
    UNRECOGNIZED(-1);

    public static final int ADDED_VALUE = 1;
    public static final int CHANGE_TYPE_UNSPECIFIED_VALUE = 0;
    public static final int MODIFIED_VALUE = 3;
    public static final int REMOVED_VALUE = 2;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public ChangeType findValueByNumber(int i10) {
            return ChangeType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29368a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return ChangeType.forNumber(i10) != null;
        }
    }

    ChangeType(int i10) {
        this.value = i10;
    }

    public static ChangeType forNumber(int i10) {
        if (i10 == 0) {
            return CHANGE_TYPE_UNSPECIFIED;
        }
        if (i10 == 1) {
            return ADDED;
        }
        if (i10 == 2) {
            return REMOVED;
        }
        if (i10 != 3) {
            return null;
        }
        return MODIFIED;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29368a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static ChangeType valueOf(int i10) {
        return forNumber(i10);
    }
}
