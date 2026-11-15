package com.bytedance.adsdk.ugeno.yoga;

public enum HiB {
    LEFT(0),
    TOP(1),
    RIGHT(2),
    BOTTOM(3),
    START(4),
    END(5),
    HORIZONTAL(6),
    VERTICAL(7),
    ALL(8);

    private final int TEQ;

    HiB(int i10) {
        this.TEQ = i10;
    }

    public int Sj() {
        return this.TEQ;
    }
}
