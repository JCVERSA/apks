package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ow1 implements vr1 {
    private final int a;
    private final String b;

    public ow1(int i, String str) {
        y45.j(str, "type");
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow1)) {
            return false;
        }
        ow1 ow1Var = (ow1) obj;
        return this.a == ow1Var.a && y45.e(this.b, ow1Var.b);
    }

    @Override
    public final int getAmount() {
        return this.a;
    }

    @Override
    public final String getType() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "SdkReward(amount=" + this.a + ", type=" + this.b + ")";
    }
}
