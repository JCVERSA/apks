package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.core.os.UserManagerCompat;
import com.google.firebase.heartbeatinfo.a;
import defpackage.d50;
import defpackage.ep4;
import defpackage.fp4;
import defpackage.ic1;
import defpackage.k82;
import defpackage.ljb;
import defpackage.nc1;
import defpackage.pj8;
import defpackage.vk8;
import defpackage.vo4;
import defpackage.xda;
import defpackage.xo4;
import defpackage.zb1;
import defpackage.zi5;
import defpackage.zv3;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

public class a implements xo4, HeartBeatInfo {
    public final pj8 a;
    public final Context b;
    public final pj8 c;
    public final Set d;
    public final Executor e;

    public a(final Context context, final String str, Set set, pj8 pj8Var, Executor executor) {
        this(new zi5(new pj8() {
            @Override
            public final Object get() {
                return a.j(context, str);
            }
        }), set, executor, pj8Var, context);
    }

    public static zb1 g() {
        final vk8 vk8VarA = vk8.a(d50.class, Executor.class);
        return zb1.f(a.class, xo4.class, HeartBeatInfo.class).b(k82.k(Context.class)).b(k82.k(zv3.class)).b(k82.m(vo4.class)).b(k82.l(ljb.class)).b(k82.j(vk8VarA)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return a.h(vk8VarA, ic1Var);
            }
        }).d();
    }

    public static a h(vk8 vk8Var, ic1 ic1Var) {
        return new a((Context) ic1Var.a(Context.class), ((zv3) ic1Var.a(zv3.class)).n(), ic1Var.c(vo4.class), ic1Var.e(ljb.class), (Executor) ic1Var.d(vk8Var));
    }

    public static ep4 j(Context context, String str) {
        return new ep4(context, str);
    }

    @Override
    public synchronized HeartBeatInfo.HeartBeat a(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ep4 ep4Var = (ep4) this.a.get();
        if (!ep4Var.q(jCurrentTimeMillis)) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        ep4Var.o();
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    @Override
    public xda b() {
        return !UserManagerCompat.isUserUnlocked(this.b) ? com.google.android.gms.tasks.a.e("") : com.google.android.gms.tasks.a.c(this.e, new Callable() {
            @Override
            public final Object call() {
                return this.b.i();
            }
        });
    }

    public final String i() {
        String string;
        synchronized (this) {
            try {
                ep4 ep4Var = (ep4) this.a.get();
                List listG = ep4Var.g();
                ep4Var.f();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < listG.size(); i++) {
                    fp4 fp4Var = (fp4) listG.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", fp4Var.c());
                    jSONObject.put("dates", new JSONArray((Collection) fp4Var.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } catch (Throwable th) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        return string;
    }

    public final Void k() {
        synchronized (this) {
            ((ep4) this.a.get()).s(System.currentTimeMillis(), ((ljb) this.c.get()).getUserAgent());
        }
        return null;
    }

    public xda l() {
        if (this.d.size() > 0 && UserManagerCompat.isUserUnlocked(this.b)) {
            return com.google.android.gms.tasks.a.c(this.e, new Callable() {
                @Override
                public final Object call() {
                    return this.b.k();
                }
            });
        }
        return com.google.android.gms.tasks.a.e(null);
    }

    public a(pj8 pj8Var, Set set, Executor executor, pj8 pj8Var2, Context context) {
        this.a = pj8Var;
        this.d = set;
        this.e = executor;
        this.c = pj8Var2;
        this.b = context;
    }
}
