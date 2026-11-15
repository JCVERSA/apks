package com.google.common.collect;

public enum BoundType {
    OPEN(false),
    CLOSED(true);

    final boolean inclusive;

    BoundType(boolean z10) {
        this.inclusive = z10;
    }

    static BoundType forBoolean(boolean z10) {
        return z10 ? CLOSED : OPEN;
    }
}
