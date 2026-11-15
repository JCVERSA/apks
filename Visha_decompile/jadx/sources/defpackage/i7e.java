package defpackage;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.C;
import com.transsion.hubsdk.display.BuildConfig;

public final class i7e {
    public final g6e a = new g6e();
    public final g7e b;
    public final h7e c;
    public boolean d;
    public Surface e;
    public float f;
    public float g;
    public float h;
    public float i;
    public int j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;

    public i7e(Context context) {
        DisplayManager displayManager;
        g7e g7eVar = (context == null || (displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR)) == null) ? null : new g7e(this, displayManager);
        this.b = g7eVar;
        this.c = g7eVar != null ? h7e.a() : null;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    public static void b(i7e i7eVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            i7eVar.k = refreshRate;
            i7eVar.l = (refreshRate * 80) / 100;
        } else {
            zrg.f("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            i7eVar.k = C.TIME_UNSET;
            i7eVar.l = C.TIME_UNSET;
        }
    }

    public final long a(long j) {
        long j2;
        if (this.p != -1) {
            g6e g6eVar = this.a;
            if (g6eVar.g()) {
                long jC = this.q + ((long) ((g6eVar.c() * (this.m - this.p)) / this.i));
                if (Math.abs(j - jC) > 20000000) {
                    l();
                } else {
                    j = jC;
                }
            }
        }
        this.n = this.m;
        this.o = j;
        h7e h7eVar = this.c;
        if (h7eVar != null && this.k != C.TIME_UNSET) {
            long j3 = h7eVar.b;
            if (j3 != C.TIME_UNSET) {
                long j4 = this.k;
                long j5 = j3 + (((j - j3) / j4) * j4);
                if (j <= j5) {
                    j2 = j5 - j4;
                } else {
                    j5 = j4 + j5;
                    j2 = j5;
                }
                long j6 = this.l;
                if (j5 - j >= j - j2) {
                    j5 = j2;
                }
                return j5 - j6;
            }
        }
        return j;
    }

    public final void c(float f) {
        this.f = f;
        this.a.f();
        m();
    }

    public final void d(long j) {
        long j2 = this.n;
        if (j2 != -1) {
            this.p = j2;
            this.q = this.o;
        }
        this.m++;
        this.a.e(j * 1000);
        m();
    }

    public final void e(float f) {
        this.i = f;
        l();
        n(false);
    }

    public final void f() {
        l();
    }

    public final void g() {
        this.d = true;
        l();
        g7e g7eVar = this.b;
        if (g7eVar != null) {
            h7e h7eVar = this.c;
            h7eVar.getClass();
            h7eVar.b();
            g7eVar.a();
        }
        n(false);
    }

    public final void h() {
        this.d = false;
        g7e g7eVar = this.b;
        if (g7eVar != null) {
            g7eVar.b();
            h7e h7eVar = this.c;
            h7eVar.getClass();
            h7eVar.c();
        }
        k();
    }

    public final void i(Surface surface) {
        if (this.e == surface) {
            return;
        }
        k();
        this.e = surface;
        n(true);
    }

    public final void j(int i) {
        if (this.j == i) {
            return;
        }
        this.j = i;
        n(true);
    }

    public final void k() {
        Surface surface;
        if (kfh.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE || this.h == 0.0f) {
            return;
        }
        this.h = 0.0f;
        f7e.a(surface, 0.0f);
    }

    public final void l() {
        this.m = 0L;
        this.p = -1L;
        this.n = -1L;
    }

    public final void m() {
        if (kfh.a < 30 || this.e == null) {
            return;
        }
        g6e g6eVar = this.a;
        float fA = g6eVar.g() ? g6eVar.a() : this.f;
        float f = this.g;
        if (fA != f) {
            if (fA != -1.0f && f != -1.0f) {
                float f2 = 1.0f;
                if (g6eVar.g() && g6eVar.d() >= 5000000000L) {
                    f2 = 0.02f;
                }
                if (Math.abs(fA - this.g) < f2) {
                    return;
                }
            } else if (fA == -1.0f && g6eVar.b() < 30) {
                return;
            }
            this.g = fA;
            n(false);
        }
    }

    public final void n(boolean z) {
        Surface surface;
        if (kfh.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE) {
            return;
        }
        float f = 0.0f;
        if (this.d) {
            float f2 = this.g;
            if (f2 != -1.0f) {
                f = this.i * f2;
            }
        }
        if (z || this.h != f) {
            this.h = f;
            f7e.a(surface, f);
        }
    }
}
