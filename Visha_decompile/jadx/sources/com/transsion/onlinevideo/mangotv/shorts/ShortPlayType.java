package com.transsion.onlinevideo.mangotv.shorts;

public enum ShortPlayType {
    PREVIEW(0),
    DETAIL(1);

    final int value;

    ShortPlayType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
