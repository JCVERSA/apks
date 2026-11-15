package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class gy {
    private final gy a;
    private final fx b;
    private final boolean c;
    private final List<iy> d;

    /* JADX WARN: Multi-variable type inference failed */
    public gy(gy gyVar, fx fxVar, boolean z, List<? extends iy> list) {
        y45.j(fxVar, "destination");
        y45.j(list, "uiData");
        this.a = gyVar;
        this.b = fxVar;
        this.c = z;
        this.d = list;
    }

    public static gy a(gy gyVar, gy gyVar2, fx fxVar, boolean z, List list, int i) {
        if ((i & 1) != 0) {
            gyVar2 = gyVar.a;
        }
        if ((i & 2) != 0) {
            fxVar = gyVar.b;
        }
        if ((i & 4) != 0) {
            z = gyVar.c;
        }
        if ((i & 8) != 0) {
            list = gyVar.d;
        }
        gyVar.getClass();
        y45.j(fxVar, "destination");
        y45.j(list, "uiData");
        return new gy(gyVar2, fxVar, z, list);
    }

    public final gy b() {
        return this.a;
    }

    public final List<iy> c() {
        return this.d;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gy)) {
            return false;
        }
        gy gyVar = (gy) obj;
        return y45.e(this.a, gyVar.a) && y45.e(this.b, gyVar.b) && this.c == gyVar.c && y45.e(this.d, gyVar.d);
    }

    public final int hashCode() {
        gy gyVar = this.a;
        return this.d.hashCode() + a7.a(this.c, (this.b.hashCode() + ((gyVar == null ? 0 : gyVar.hashCode()) * 31)) * 31, 31);
    }

    public final String toString() {
        return "DebugPanelUiState(prevState=" + this.a + ", destination=" + this.b + ", isLoading=" + this.c + ", uiData=" + this.d + ")";
    }

    public final fx a() {
        return this.b;
    }
}
