package defpackage;

import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivSizeUnit;

public final class aha {
    public final String a;
    public final int b;
    public final int c;
    public final DivSizeUnit d;
    public final String e;
    public final DivFontWeight f;
    public final Integer g;
    public final Integer h;
    public final int i;
    public final int j;

    public aha(String str, int i, int i2, DivSizeUnit divSizeUnit, String str2, DivFontWeight divFontWeight, Integer num, Integer num2, int i3) {
        y45.j(str, "text");
        y45.j(divSizeUnit, "fontSizeUnit");
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = divSizeUnit;
        this.e = str2;
        this.f = divFontWeight;
        this.g = num;
        this.h = num2;
        this.i = i3;
        this.j = str.length();
    }

    public final String a() {
        return this.e;
    }

    public final int b() {
        return this.c;
    }

    public final DivFontWeight c() {
        return this.f;
    }

    public final Integer d() {
        return this.g;
    }

    public final Integer e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aha)) {
            return false;
        }
        aha ahaVar = (aha) obj;
        return y45.e(this.a, ahaVar.a) && this.b == ahaVar.b && this.c == ahaVar.c && this.d == ahaVar.d && y45.e(this.e, ahaVar.e) && this.f == ahaVar.f && y45.e(this.g, ahaVar.g) && y45.e(this.h, ahaVar.h) && this.i == ahaVar.i;
    }

    public final int f() {
        return this.i;
    }

    public final int g() {
        return this.j;
    }

    public int hashCode() {
        int iHashCode = ((((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode()) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        DivFontWeight divFontWeight = this.f;
        int iHashCode3 = (iHashCode2 + (divFontWeight == null ? 0 : divFontWeight.hashCode())) * 31;
        Integer num = this.g;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.h;
        return ((iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31) + Integer.hashCode(this.i);
    }

    public String toString() {
        return "TextData(text=" + this.a + ", fontSize=" + this.b + ", fontSizeValue=" + this.c + ", fontSizeUnit=" + this.d + ", fontFamily=" + this.e + ", fontWeight=" + this.f + ", fontWeightValue=" + this.g + ", lineHeight=" + this.h + ", textColor=" + this.i + ')';
    }
}
