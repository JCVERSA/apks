package defpackage;

import android.os.Bundle;

public final class o2g {
    public static final String c;
    public static final String d;
    public final String a;
    public final int b;

    static {
        int i = kfh.a;
        c = Integer.toString(0, 36);
        d = Integer.toString(1, 36);
    }

    public o2g(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(c, this.a);
        bundle.putInt(d, this.b);
        return bundle;
    }
}
