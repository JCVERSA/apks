package io.appmetrica.analytics.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public abstract class AbstractC2516ee {
    public final int a = -1;
    public final int b = 0;
    public final int c = 1;

    public final int a(Boolean bool) {
        if (bool == null) {
            return this.a;
        }
        if (y45.e(bool, Boolean.FALSE)) {
            return this.b;
        }
        if (y45.e(bool, Boolean.TRUE)) {
            return this.c;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Boolean a(int i) {
        if (i == this.b) {
            return Boolean.FALSE;
        }
        if (i == this.c) {
            return Boolean.TRUE;
        }
        return null;
    }
}
