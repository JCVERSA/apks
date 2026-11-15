package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzfom;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

public final class gyh {
    public static final HashMap g = new HashMap();
    public final Context a;
    public final hyh b;
    public final rwh c;
    public final owh d;
    public yxh e;
    public final Object f = new Object();

    public gyh(Context context, hyh hyhVar, rwh rwhVar, owh owhVar) {
        this.a = context;
        this.b = hyhVar;
        this.c = rwhVar;
        this.d = owhVar;
    }

    public final uwh a() {
        yxh yxhVar;
        synchronized (this.f) {
            yxhVar = this.e;
        }
        return yxhVar;
    }

    public final zxh b() {
        synchronized (this.f) {
            try {
                yxh yxhVar = this.e;
                if (yxhVar == null) {
                    return null;
                }
                return yxhVar.f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(zxh zxhVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                yxh yxhVar = new yxh(d(zxhVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.a, "msa-r", zxhVar.e(), null, new Bundle(), 2), zxhVar, this.b, this.c);
                if (!yxhVar.h()) {
                    throw new zzfom(FlacTagCreator.DEFAULT_PADDING, "init failed");
                }
                int iE = yxhVar.e();
                if (iE != 0) {
                    throw new zzfom(4001, "ci: " + iE);
                }
                synchronized (this.f) {
                    yxh yxhVar2 = this.e;
                    if (yxhVar2 != null) {
                        try {
                            yxhVar2.g();
                        } catch (zzfom e) {
                            this.c.c(e.zza(), -1L, e);
                        }
                        this.e = yxhVar;
                    } else {
                        this.e = yxhVar;
                    }
                    throw th;
                }
                this.c.d(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzfom(2004, e2);
            }
        } catch (zzfom e3) {
            this.c.c(e3.zza(), System.currentTimeMillis() - jCurrentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.c.c(4010, System.currentTimeMillis() - jCurrentTimeMillis, e4);
            return false;
        }
    }

    public final synchronized Class d(zxh zxhVar) {
        try {
            String strK0 = zxhVar.a().k0();
            HashMap map = g;
            Class cls = (Class) map.get(strK0);
            if (cls != null) {
                return cls;
            }
            try {
                if (!this.d.a(zxhVar.c())) {
                    throw new zzfom(2026, "VM did not pass signature verification");
                }
                try {
                    File fileB = zxhVar.b();
                    if (!fileB.exists()) {
                        fileB.mkdirs();
                    }
                    Class<?> clsLoadClass = new DexClassLoader(zxhVar.c().getAbsolutePath(), fileB.getAbsolutePath(), null, this.a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    map.put(strK0, clsLoadClass);
                    return clsLoadClass;
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                    throw new zzfom(2008, e);
                }
            } catch (GeneralSecurityException e2) {
                throw new zzfom(2026, e2);
            }
            throw th;
        } catch (Throwable th) {
            throw th;
        }
    }
}
