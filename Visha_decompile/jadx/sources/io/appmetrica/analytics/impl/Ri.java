package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.lang.ref.WeakReference;

public final class Ri implements InterfaceC2650k {
    public Ke a;
    public ScreenInfo b;
    public boolean c;
    public boolean d;
    public final Qi e = new Qi();
    public WeakReference f = new WeakReference(null);

    @WorkerThread
    public final synchronized void a(Activity activity) {
        try {
            this.f = new WeakReference(activity);
            if (!this.d) {
                if (this.a == null) {
                    this.a = new Ke(C2559g7.a(activity).a());
                }
                Ke ke = this.a;
                y45.g(ke);
                this.b = ke.p();
                if (this.a == null) {
                    this.a = new Ke(C2559g7.a(activity).a());
                }
                Ke ke2 = this.a;
                y45.g(ke2);
                this.c = ke2.t();
                this.d = true;
            }
            if (this.b == null) {
                b(activity);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(Context context) {
        if (context != null) {
            this.e.getClass();
            ScreenInfo screenInfoA = Qi.a(context);
            if (screenInfoA == null || y45.e(screenInfoA, this.b)) {
                return;
            }
            this.b = screenInfoA;
            if (this.a == null) {
                this.a = new Ke(C2559g7.a(context).a());
            }
            Ke ke = this.a;
            y45.g(ke);
            ke.a(this.b);
        }
    }

    @WorkerThread
    public final synchronized ScreenInfo a(Context context) {
        try {
            if (!this.d) {
                if (this.a == null) {
                    this.a = new Ke(C2559g7.a(context).a());
                }
                Ke ke = this.a;
                y45.g(ke);
                this.b = ke.p();
                if (this.a == null) {
                    this.a = new Ke(C2559g7.a(context).a());
                }
                Ke ke2 = this.a;
                y45.g(ke2);
                this.c = ke2.t();
                this.d = true;
            }
            b((Context) this.f.get());
            if (this.b == null) {
                if (AndroidUtils.isApiAchieved(30)) {
                    if (!this.c) {
                        b(context);
                        this.c = true;
                        if (this.a == null) {
                            this.a = new Ke(C2559g7.a(context).a());
                        }
                        Ke ke3 = this.a;
                        y45.g(ke3);
                        ke3.v();
                    }
                } else {
                    b(context);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    @VisibleForTesting
    public final void a(Ke ke) {
        this.a = ke;
    }
}
