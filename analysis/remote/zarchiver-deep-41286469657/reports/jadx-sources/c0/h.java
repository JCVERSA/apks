package c0;

import android.graphics.drawable.Drawable;

public final class h {

    public final String f419a;

    public final Drawable f420b;

    public final int f421c;

    public final Drawable f422d;

    public h(Drawable drawable) {
        this.f419a = "";
        this.f420b = drawable;
        this.f421c = -1;
    }

    public h(int i2, String str, Drawable drawable) {
        this.f419a = str;
        this.f420b = drawable;
        this.f421c = i2;
        this.f422d = null;
    }

    public h(int i2, String str, Drawable drawable, Drawable drawable2) {
        this(i2, str, drawable);
        this.f422d = drawable2;
    }
}
