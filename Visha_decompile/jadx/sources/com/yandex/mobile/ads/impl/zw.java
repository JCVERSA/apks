package com.yandex.mobile.ads.impl;

import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class zw {
    private final String a;
    private final int b;
    private final int c;

    public zw(@AttrRes int i, @StyleRes int i2, String str) {
        y45.j(str, "text");
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zw)) {
            return false;
        }
        zw zwVar = (zw) obj;
        return y45.e(this.a, zwVar.a) && this.b == zwVar.b && this.c == zwVar.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + dy1.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "DebugPanelColoredText(text=" + this.a + ", color=" + this.b + ", style=" + this.c + ")";
    }

    public zw(String str, int i) {
        this(i, R.style.DebugPanelText_Body2, str);
    }
}
