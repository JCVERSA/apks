package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j0;

public final class bve {
    public final Object a = new Object();
    public j0 b = null;
    public boolean c = false;

    public final Activity a() {
        synchronized (this.a) {
            try {
                j0 j0Var = this.b;
                if (j0Var == null) {
                    return null;
                }
                return j0Var.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Context b() {
        synchronized (this.a) {
            try {
                j0 j0Var = this.b;
                if (j0Var == null) {
                    return null;
                }
                return j0Var.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(ave aveVar) {
        synchronized (this.a) {
            try {
                if (this.b == null) {
                    this.b = new j0();
                }
                this.b.f(aveVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Context context) {
        synchronized (this.a) {
            try {
                if (!this.c) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                    if (application == null) {
                        int i = zze.zza;
                        zzo.zzj("Can not cast Context to Application");
                    } else {
                        if (this.b == null) {
                            this.b = new j0();
                        }
                        this.b.g(application, context);
                        this.c = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(ave aveVar) {
        synchronized (this.a) {
            try {
                j0 j0Var = this.b;
                if (j0Var == null) {
                    return;
                }
                j0Var.h(aveVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
