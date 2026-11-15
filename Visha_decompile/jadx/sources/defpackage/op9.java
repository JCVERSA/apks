package defpackage;

import android.graphics.Typeface;
import androidx.media3.extractor.text.ttml.TtmlNode;

public final class op9 {
    public final float a;
    public final Typeface b;
    public final float c;
    public final float d;
    public final int e;

    public op9(float f, Typeface typeface, float f2, float f3, int i) {
        y45.j(typeface, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        this.a = f;
        this.b = typeface;
        this.c = f2;
        this.d = f3;
        this.e = i;
    }

    public final float a() {
        return this.a;
    }

    public final Typeface b() {
        return this.b;
    }

    public final float c() {
        return this.c;
    }

    public final float d() {
        return this.d;
    }

    public final int e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof op9)) {
            return false;
        }
        op9 op9Var = (op9) obj;
        return Float.compare(this.a, op9Var.a) == 0 && y45.e(this.b, op9Var.b) && Float.compare(this.c, op9Var.c) == 0 && Float.compare(this.d, op9Var.d) == 0 && this.e == op9Var.e;
    }

    public int hashCode() {
        return (((((((Float.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31) + Integer.hashCode(this.e);
    }

    public String toString() {
        return "SliderTextStyle(fontSize=" + this.a + ", fontWeight=" + this.b + ", offsetX=" + this.c + ", offsetY=" + this.d + ", textColor=" + this.e + ')';
    }
}
