package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.transsion.athena.data.TrackData;

public class u06 {
    public static volatile u06 e;
    public yj a;
    public fw3 b;
    public int c = 2;
    public Context d;

    public static u06 c() {
        if (e == null) {
            synchronized (u06.class) {
                try {
                    if (e == null) {
                        e = new u06();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final void a() {
        if (this.a == null && this.b == null) {
            throw new IllegalStateException("you have not been called init method");
        }
    }

    public Context b() {
        return this.d;
    }

    public final void d(Context context, int i) {
        this.d = context.getApplicationContext();
        this.c = i;
    }

    public void e(Context context, String str, int i, int i2, boolean z, boolean z2) {
        f(context, str, i, z2, i2);
        int i3 = this.c;
        if (i3 == 0 || i3 == 2) {
            this.a.b(z);
        }
        int i4 = this.c;
        if (i4 == 1 || i4 == 2) {
            this.b.g(z);
        }
    }

    public void f(Context context, String str, int i, boolean z, int i2) {
        d(context, i2);
        int i3 = this.c;
        if (i3 == 0 || i3 == 2) {
            this.a = new yj(this.d, str, z, i);
        }
        int i4 = this.c;
        if (i4 == 1 || i4 == 2) {
            this.b = new fw3(this.d, str);
        }
    }

    public void g() {
        a();
        int i = this.c;
        if (i == 0 || i == 2) {
            this.a.a();
        }
        int i2 = this.c;
        if (i2 == 1 || i2 == 2) {
            this.b.f();
        }
    }

    public void h(boolean z) {
        a();
        int i = this.c;
        if (i == 0 || i == 2) {
            this.a.c(z);
        }
        int i2 = this.c;
        if (i2 == 1 || i2 == 2) {
            this.b.i(z);
        }
    }

    public void i(String str, Bundle bundle, long j) {
        a();
        int i = this.c;
        if (i == 0 || i == 2) {
            this.a.d(str, bundle, j);
        }
        int i2 = this.c;
        if (i2 == 1 || i2 == 2) {
            this.b.j(str, bundle, j);
        }
    }

    public void j(String str, TrackData trackData, long j) {
        a();
        int i = this.c;
        if (i == 0 || i == 2) {
            this.a.e(str, trackData, j);
        }
    }
}
