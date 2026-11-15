package defpackage;

import android.os.Bundle;

public final class h5g {
    public static final String d;
    public static final String e;
    public static final String f;
    public final int a;
    public final int b;
    public final int c;

    static {
        int i = kfh.a;
        d = Integer.toString(0, 36);
        e = Integer.toString(1, 36);
        f = Integer.toString(2, 36);
    }

    public h5g(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(d, this.a);
        bundle.putInt(e, this.b);
        bundle.putInt(f, this.c);
        return bundle;
    }
}
