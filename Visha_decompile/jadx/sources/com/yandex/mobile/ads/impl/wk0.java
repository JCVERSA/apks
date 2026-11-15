package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class wk0 {
    private static final vk0 a = new vk0(op1.b.S, op1.b.R, op1.b.T, op1.b.U);
    private static final vk0 b = new vk0(op1.b.y, op1.b.x, op1.b.z, op1.b.A);

    public static vk0 a(s9 s9Var) {
        y45.j(s9Var, "adStructureType");
        int iOrdinal = s9Var.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return a;
        }
        if (iOrdinal == 2) {
            return b;
        }
        throw new NoWhenBranchMatchedException();
    }
}
