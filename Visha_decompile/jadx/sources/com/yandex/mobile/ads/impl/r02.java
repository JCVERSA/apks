package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class r02 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final ui e;
    private final j02 f;
    private final List<j02> g;

    public r02() {
        this(0);
    }

    public final ui a() {
        return this.e;
    }

    public final j02 b() {
        return this.f;
    }

    public final List<j02> c() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r02)) {
            return false;
        }
        r02 r02Var = (r02) obj;
        return y45.e(this.a, r02Var.a) && y45.e(this.b, r02Var.b) && y45.e(this.c, r02Var.c) && y45.e(this.d, r02Var.d) && y45.e(this.e, r02Var.e) && y45.e(this.f, r02Var.f) && y45.e(this.g, r02Var.g);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ui uiVar = this.e;
        int iHashCode5 = (iHashCode4 + (uiVar == null ? 0 : uiVar.hashCode())) * 31;
        j02 j02Var = this.f;
        int iHashCode6 = (iHashCode5 + (j02Var == null ? 0 : j02Var.hashCode())) * 31;
        List<j02> list = this.g;
        return iHashCode6 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "SmartCenterSettings(colorWizButton=" + this.a + ", colorWizButtonText=" + this.b + ", colorWizBack=" + this.c + ", colorWizBackRight=" + this.d + ", backgroundColors=" + this.e + ", smartCenter=" + this.f + ", smartCenters=" + this.g + ")";
    }

    public r02(int i) {
        this(null, null, null, null, null, null, null);
    }

    public r02(String str, String str2, String str3, String str4, ui uiVar, j02 j02Var, List<j02> list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = uiVar;
        this.f = j02Var;
        this.g = list;
    }
}
