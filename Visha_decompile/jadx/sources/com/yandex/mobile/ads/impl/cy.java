package com.yandex.mobile.ads.impl;

import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.StyleRes;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class cy {
    private final String a;
    private final int b;
    private final Integer c;
    private final int d;

    public cy(String str, @AttrRes int i, @DrawableRes Integer num, @StyleRes int i2) {
        y45.j(str, "text");
        this.a = str;
        this.b = i;
        this.c = num;
        this.d = i2;
    }

    public final int a() {
        return this.b;
    }

    public final Integer b() {
        return this.c;
    }

    public final int c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cy)) {
            return false;
        }
        cy cyVar = (cy) obj;
        return y45.e(this.a, cyVar.a) && this.b == cyVar.b && y45.e(this.c, cyVar.c) && this.d == cyVar.d;
    }

    public final int hashCode() {
        int iA = dy1.a(this.b, this.a.hashCode() * 31, 31);
        Integer num = this.c;
        return Integer.hashCode(this.d) + ((iA + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        return "DebugPanelTextWithIcon(text=" + this.a + ", color=" + this.b + ", icon=" + this.c + ", style=" + this.d + ")";
    }

    public cy(String str, int i, Integer num, int i2, int i3) {
        this(str, (i3 & 2) != 0 ? R.attr.debug_panel_label_primary : i, (i3 & 4) != 0 ? null : num, (i3 & 8) != 0 ? R.style.DebugPanelText_Body1 : i2);
    }
}
