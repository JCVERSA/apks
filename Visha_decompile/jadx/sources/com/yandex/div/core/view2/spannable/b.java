package com.yandex.div.core.view2.spannable;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivLineStyle;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivTextAlignmentVertical;
import defpackage.of9;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b implements Comparable {
    public static final a u = new a(null);
    public static final DivSizeUnit v = DivSizeUnit.SP;
    public final int b;
    public final int c;
    public final DivTextAlignmentVertical d;
    public final int e;
    public final String f;
    public final String g;
    public final Integer h;
    public final DivSizeUnit i;
    public final DivFontWeight j;
    public final Integer k;
    public final Double l;
    public final Integer m;
    public final DivLineStyle n;
    public final Integer o;
    public final of9 p;
    public final Integer q;
    public final Integer r;
    public final Integer s;
    public final DivLineStyle t;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(int i, int i2) {
            return new b(i, i2, null, 0, null, null, null, b.v, null, null, null, null, null, null, null, null, null, null, null);
        }

        public final b b(int i, int i2, int i3) {
            return new b(i, i2, null, 0, null, null, null, b.v, null, null, null, Integer.valueOf(i3), null, null, null, null, null, null, null);
        }

        public a() {
        }
    }

    public b(int i, int i2, DivTextAlignmentVertical divTextAlignmentVertical, int i3, String str, String str2, Integer num, DivSizeUnit divSizeUnit, DivFontWeight divFontWeight, Integer num2, Double d, Integer num3, DivLineStyle divLineStyle, Integer num4, of9 of9Var, Integer num5, Integer num6, Integer num7, DivLineStyle divLineStyle2) {
        y45.j(divSizeUnit, "fontSizeUnit");
        this.b = i;
        this.c = i2;
        this.d = divTextAlignmentVertical;
        this.e = i3;
        this.f = str;
        this.g = str2;
        this.h = num;
        this.i = divSizeUnit;
        this.j = divFontWeight;
        this.k = num2;
        this.l = d;
        this.m = num3;
        this.n = divLineStyle;
        this.o = num4;
        this.p = of9Var;
        this.q = num5;
        this.r = num6;
        this.s = num7;
        this.t = divLineStyle2;
    }

    @Override
    public int compareTo(b bVar) {
        y45.j(bVar, "other");
        return this.b - bVar.b;
    }

    public final DivTextAlignmentVertical d() {
        return this.d;
    }

    public final int e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.b == bVar.b && this.c == bVar.c && this.d == bVar.d && this.e == bVar.e && y45.e(this.f, bVar.f) && y45.e(this.g, bVar.g) && y45.e(this.h, bVar.h) && this.i == bVar.i && this.j == bVar.j && y45.e(this.k, bVar.k) && y45.e(this.l, bVar.l) && y45.e(this.m, bVar.m) && this.n == bVar.n && y45.e(this.o, bVar.o) && y45.e(this.p, bVar.p) && y45.e(this.q, bVar.q) && y45.e(this.r, bVar.r) && y45.e(this.s, bVar.s) && this.t == bVar.t;
    }

    public final int f() {
        return this.c;
    }

    public final String g() {
        return this.f;
    }

    public final String h() {
        return this.g;
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.b) * 31) + Integer.hashCode(this.c)) * 31;
        DivTextAlignmentVertical divTextAlignmentVertical = this.d;
        int iHashCode2 = (((iHashCode + (divTextAlignmentVertical == null ? 0 : divTextAlignmentVertical.hashCode())) * 31) + Integer.hashCode(this.e)) * 31;
        String str = this.f;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.h;
        int iHashCode5 = (((iHashCode4 + (num == null ? 0 : num.hashCode())) * 31) + this.i.hashCode()) * 31;
        DivFontWeight divFontWeight = this.j;
        int iHashCode6 = (iHashCode5 + (divFontWeight == null ? 0 : divFontWeight.hashCode())) * 31;
        Integer num2 = this.k;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Double d = this.l;
        int iHashCode8 = (iHashCode7 + (d == null ? 0 : d.hashCode())) * 31;
        Integer num3 = this.m;
        int iHashCode9 = (iHashCode8 + (num3 == null ? 0 : num3.hashCode())) * 31;
        DivLineStyle divLineStyle = this.n;
        int iHashCode10 = (iHashCode9 + (divLineStyle == null ? 0 : divLineStyle.hashCode())) * 31;
        Integer num4 = this.o;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        of9 of9Var = this.p;
        int iHashCode12 = (iHashCode11 + (of9Var == null ? 0 : of9Var.hashCode())) * 31;
        Integer num5 = this.q;
        int iHashCode13 = (iHashCode12 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.r;
        int iHashCode14 = (iHashCode13 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.s;
        int iHashCode15 = (iHashCode14 + (num7 == null ? 0 : num7.hashCode())) * 31;
        DivLineStyle divLineStyle2 = this.t;
        return iHashCode15 + (divLineStyle2 != null ? divLineStyle2.hashCode() : 0);
    }

    public final Integer i() {
        return this.h;
    }

    public final DivFontWeight j() {
        return this.j;
    }

    public final Integer k() {
        return this.k;
    }

    public final Double l() {
        return this.l;
    }

    public final Integer m() {
        return this.m;
    }

    public final int n() {
        return this.b;
    }

    public final DivLineStyle o() {
        return this.n;
    }

    public final Integer p() {
        return this.o;
    }

    public final of9 q() {
        return this.p;
    }

    public final Integer r() {
        return this.q;
    }

    public final Integer s() {
        return this.s;
    }

    public final Integer t() {
        return this.r;
    }

    public String toString() {
        return "SpanData(start=" + this.b + ", end=" + this.c + ", alignmentVertical=" + this.d + ", baselineOffset=" + this.e + ", fontFamily=" + this.f + ", fontFeatureSettings=" + this.g + ", fontSize=" + this.h + ", fontSizeUnit=" + this.i + ", fontWeight=" + this.j + ", fontWeightValue=" + this.k + ", letterSpacing=" + this.l + ", lineHeight=" + this.m + ", strike=" + this.n + ", textColor=" + this.o + ", textShadow=" + this.p + ", topOffset=" + this.q + ", topOffsetStart=" + this.r + ", topOffsetEnd=" + this.s + ", underline=" + this.t + ')';
    }

    public final DivLineStyle u() {
        return this.t;
    }

    public final boolean v() {
        return this.d == null && this.e == 0 && this.f == null && this.g == null && this.h == null && this.i == v && this.j == null && this.k == null && this.l == null && this.m == null && this.n == null && this.o == null && this.p == null && this.q == null && this.r == null && this.s == null && this.t == null;
    }

    public final b w(b bVar, int i, int i2) {
        y45.j(bVar, TtmlNode.TAG_SPAN);
        DivTextAlignmentVertical divTextAlignmentVertical = bVar.d;
        if (divTextAlignmentVertical == null) {
            divTextAlignmentVertical = this.d;
        }
        DivTextAlignmentVertical divTextAlignmentVertical2 = divTextAlignmentVertical;
        int i3 = bVar.e;
        if (i3 == 0) {
            i3 = this.e;
        }
        int i4 = i3;
        String str = bVar.f;
        if (str == null) {
            str = this.f;
        }
        String str2 = str;
        String str3 = bVar.g;
        if (str3 == null) {
            str3 = this.g;
        }
        String str4 = str3;
        Integer num = bVar.h;
        if (num == null) {
            num = this.h;
        }
        Integer num2 = num;
        DivSizeUnit divSizeUnit = bVar.i;
        if (divSizeUnit == v) {
            divSizeUnit = this.i;
        }
        DivSizeUnit divSizeUnit2 = divSizeUnit;
        DivFontWeight divFontWeight = bVar.j;
        if (divFontWeight == null) {
            divFontWeight = this.j;
        }
        DivFontWeight divFontWeight2 = divFontWeight;
        Integer num3 = bVar.k;
        if (num3 == null) {
            num3 = this.k;
        }
        Integer num4 = num3;
        Double d = bVar.l;
        if (d == null) {
            d = this.l;
        }
        Double d2 = d;
        Integer num5 = bVar.m;
        if (num5 == null) {
            num5 = this.m;
        }
        Integer num6 = num5;
        DivLineStyle divLineStyle = bVar.n;
        if (divLineStyle == null) {
            divLineStyle = this.n;
        }
        DivLineStyle divLineStyle2 = divLineStyle;
        Integer num7 = bVar.o;
        if (num7 == null) {
            num7 = this.o;
        }
        Integer num8 = num7;
        of9 of9Var = bVar.p;
        if (of9Var == null) {
            of9Var = this.p;
        }
        of9 of9Var2 = of9Var;
        Integer num9 = bVar.q;
        Integer num10 = num9 == null ? this.q : num9;
        Integer num11 = num9 != null ? bVar.r : this.r;
        Integer num12 = num9 != null ? bVar.s : this.s;
        DivLineStyle divLineStyle3 = bVar.t;
        return new b(i, i2, divTextAlignmentVertical2, i4, str2, str4, num2, divSizeUnit2, divFontWeight2, num4, d2, num6, divLineStyle2, num8, of9Var2, num10, num11, num12, divLineStyle3 == null ? this.t : divLineStyle3);
    }
}
