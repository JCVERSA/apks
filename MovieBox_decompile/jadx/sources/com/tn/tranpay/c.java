package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {

    private String f40529a;

    private String f40530b;

    private String f40531c;

    private String f40532d;

    private boolean f40533e;

    public c() {
        this(null, null, null, null, false, 31, null);
    }

    public c(String str, String str2, String str3, String str4, boolean z10) {
        this.f40529a = str;
        this.f40530b = str2;
        this.f40531c = str3;
        this.f40532d = str4;
        this.f40533e = z10;
    }

    public c(String str, String str2, String str3, String str4, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) == 0 ? str4 : null, (i10 & 16) != 0 ? false : z10);
    }
}
