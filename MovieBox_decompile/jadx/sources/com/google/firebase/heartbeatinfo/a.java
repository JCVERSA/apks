package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.core.os.t;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import ic.h;
import ic.p;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import ob.b0;
import ob.r;
import ob.u;
import org.json.JSONArray;
import org.json.JSONObject;
import zc.i;

public class a implements h, HeartBeatInfo {

    private final kc.b f31034a;

    private final Context f31035b;

    private final kc.b f31036c;

    private final Set f31037d;

    private final Executor f31038e;

    private a(final Context context, final String str, Set set, kc.b bVar, Executor executor) {
        this(new u(new kc.b() {
            @Override
            public final Object get() {
                return com.google.firebase.heartbeatinfo.a.j(context, str);
            }
        }), set, executor, bVar, context);
    }

    public static ob.c g() {
        final b0 b0VarA = b0.a(nb.a.class, Executor.class);
        return ob.c.d(a.class, h.class, HeartBeatInfo.class).b(r.k(Context.class)).b(r.k(com.google.firebase.f.class)).b(r.o(ic.f.class)).b(r.m(i.class)).b(r.l(b0VarA)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return com.google.firebase.heartbeatinfo.a.h(b0VarA, eVar);
            }
        }).d();
    }

    public static a h(b0 b0Var, ob.e eVar) {
        return new a((Context) eVar.a(Context.class), ((com.google.firebase.f) eVar.a(com.google.firebase.f.class)).o(), eVar.e(ic.f.class), eVar.h(i.class), (Executor) eVar.f(b0Var));
    }

    public String i() {
        String string;
        synchronized (this) {
            try {
                f fVar = (f) this.f31034a.get();
                List listG = fVar.g();
                fVar.f();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < listG.size(); i10++) {
                    p pVar = (p) listG.get(i10);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", pVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) pVar.b()));
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
                    } catch (Throwable th2) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
        return string;
    }

    public static f j(Context context, String str) {
        return new f(context, str);
    }

    public Void k() {
        synchronized (this) {
            ((f) this.f31034a.get()).s(System.currentTimeMillis(), ((i) this.f31036c.get()).getUserAgent());
        }
        return null;
    }

    @Override
    public Task a() {
        return !t.a(this.f31035b) ? Tasks.forResult("") : Tasks.call(this.f31038e, new Callable() {
            @Override
            public final Object call() {
                return this.f62042a.i();
            }
        });
    }

    @Override
    public synchronized HeartBeatInfo.HeartBeat b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        f fVar = (f) this.f31034a.get();
        if (!fVar.q(jCurrentTimeMillis)) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        fVar.o();
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    public Task l() {
        if (this.f31037d.size() <= 0) {
            return Tasks.forResult(null);
        }
        return !t.a(this.f31035b) ? Tasks.forResult(null) : Tasks.call(this.f31038e, new Callable() {
            @Override
            public final Object call() {
                return this.f62043a.k();
            }
        });
    }

    a(kc.b bVar, Set set, Executor executor, kc.b bVar2, Context context) {
        this.f31034a = bVar;
        this.f31037d = set;
        this.f31038e = executor;
        this.f31036c = bVar2;
        this.f31035b = context;
    }
}
