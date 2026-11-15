package com.transsion.playercommon.utils;

@Deprecated(since = "废弃，使用 com.transsion.dbdata.utils.SortUtil.SortType.MANUAL")
public enum SortType {
    SORT_MANUALLY(5);

    private final int value;

    SortType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
