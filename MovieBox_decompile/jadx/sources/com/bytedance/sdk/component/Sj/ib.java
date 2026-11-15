package com.bytedance.sdk.component.Sj;

public enum ib {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    @Override
    public String toString() {
        if (this == PRIVATE) {
            return "private";
        }
        return this == PROTECTED ? "protected" : "public";
    }
}
