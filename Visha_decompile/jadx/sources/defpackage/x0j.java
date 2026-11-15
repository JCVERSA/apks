package defpackage;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.m6;
import java.util.Objects;

public final class x0j {
    public final k3i a;
    public final Handler b;
    public u0j c;
    public hvg d;
    public int f;
    public alf h;
    public float g = 1.0f;
    public int e = 0;

    public x0j(final Context context, Looper looper, u0j u0jVar) {
        this.a = m6.a(new k3i() {
            @Override
            public final Object zza() {
                return fnf.c(context);
            }
        });
        this.c = u0jVar;
        this.b = new Handler(looper);
    }

    public static void c(x0j x0jVar, int i) {
        if (i == -3 || i == -2) {
            if (i != -2) {
                x0jVar.h(4);
                return;
            } else {
                x0jVar.g(0);
                x0jVar.h(3);
                return;
            }
        }
        if (i == -1) {
            x0jVar.g(-1);
            x0jVar.f();
            x0jVar.h(1);
        } else if (i == 1) {
            x0jVar.h(2);
            x0jVar.g(1);
        } else {
            zrg.f("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }

    public final float a() {
        return this.g;
    }

    public final int b(boolean z, int i) {
        if (i == 1 || this.f != 1) {
            f();
            h(0);
            return 1;
        }
        if (!z) {
            int i2 = this.e;
            if (i2 != 1) {
                return i2 != 3 ? 1 : 0;
            }
            return -1;
        }
        if (this.e == 2) {
            return 1;
        }
        if (this.h == null) {
            tif tifVar = new tif(1);
            hvg hvgVar = this.d;
            hvgVar.getClass();
            tifVar.a(hvgVar);
            tifVar.b(new AudioManager.OnAudioFocusChangeListener() {
                @Override
                public final void onAudioFocusChange(int i3) {
                    x0j.c(this.b, i3);
                }
            }, this.b);
            this.h = tifVar.c();
        }
        if (fnf.b((AudioManager) this.a.zza(), this.h) == 1) {
            h(2);
            return 1;
        }
        h(1);
        return -1;
    }

    public final void d() {
        this.c = null;
        f();
        h(0);
    }

    public final void e(hvg hvgVar) {
        if (Objects.equals(this.d, hvgVar)) {
            return;
        }
        this.d = hvgVar;
        this.f = hvgVar == null ? 0 : 1;
    }

    public final void f() {
        int i = this.e;
        if (i == 1 || i == 0 || this.h == null) {
            return;
        }
        fnf.a((AudioManager) this.a.zza(), this.h);
    }

    public final void g(int i) {
        u0j u0jVar = this.c;
        if (u0jVar != null) {
            u0jVar.zza(i);
        }
    }

    public final void h(int i) {
        if (this.e == i) {
            return;
        }
        this.e = i;
        float f = i == 4 ? 0.2f : 1.0f;
        if (this.g != f) {
            this.g = f;
            u0j u0jVar = this.c;
            if (u0jVar != null) {
                u0jVar.a(f);
            }
        }
    }
}
