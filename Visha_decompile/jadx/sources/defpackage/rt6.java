package defpackage;

import android.content.Context;

public class rt6 {
    public static volatile rt6 c;
    public boolean a;
    public int b;

    public rt6(Context context) {
        this.a = w6c.c(context, "music_fade_open", false);
        this.b = w6c.d(context, "music_fade_time", 500);
    }

    public static rt6 b(Context context) {
        if (c == null) {
            synchronized (rt6.class) {
                try {
                    if (c == null) {
                        c = new rt6(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public int a() {
        return this.b;
    }

    public boolean c() {
        return this.a;
    }

    public void d(Context context) {
        w6c.r(context, "music_fade_open", this.a);
        w6c.t(context, "music_fade_time", this.b);
    }

    public void e(int i) {
        this.b = i;
    }

    public void f(boolean z) {
        this.a = z;
    }
}
