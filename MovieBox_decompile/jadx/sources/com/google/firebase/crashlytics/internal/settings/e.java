package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.c0;
import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.common.g0;
import com.google.firebase.crashlytics.internal.common.x0;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

public class e implements yb.b {

    private final Context f30926a;

    private final h f30927b;

    private final f f30928c;

    private final c0 f30929d;

    private final yb.a f30930e;

    private final i f30931f;

    private final d0 f30932g;

    private final AtomicReference f30933h;

    private final AtomicReference f30934i;

    class a implements SuccessContinuation {

        final CrashlyticsWorkers f30935a;

        a(CrashlyticsWorkers crashlyticsWorkers) {
            this.f30935a = crashlyticsWorkers;
        }

        public JSONObject b() {
            return e.this.f30931f.a(e.this.f30927b, true);
        }

        @Override
        public Task then(Void r10) throws Throwable {
            JSONObject jSONObject = (JSONObject) this.f30935a.f30475d.c().submit(new Callable() {
                @Override
                public final Object call() {
                    return this.f30925a.b();
                }
            }).get();
            if (jSONObject != null) {
                c cVarB = e.this.f30928c.b(jSONObject);
                e.this.f30930e.c(cVarB.f30914c, jSONObject);
                e.this.q(jSONObject, "Loaded settings: ");
                e eVar = e.this;
                eVar.r(eVar.f30927b.f30943f);
                e.this.f30933h.set(cVarB);
                ((TaskCompletionSource) e.this.f30934i.get()).trySetResult(cVarB);
            }
            return Tasks.forResult(null);
        }
    }

    e(Context context, h hVar, c0 c0Var, f fVar, yb.a aVar, i iVar, d0 d0Var) {
        AtomicReference atomicReference = new AtomicReference();
        this.f30933h = atomicReference;
        this.f30934i = new AtomicReference(new TaskCompletionSource());
        this.f30926a = context;
        this.f30927b = hVar;
        this.f30929d = c0Var;
        this.f30928c = fVar;
        this.f30930e = aVar;
        this.f30931f = iVar;
        this.f30932g = d0Var;
        atomicReference.set(com.google.firebase.crashlytics.internal.settings.a.b(c0Var));
    }

    public static e l(Context context, String str, g0 g0Var, wb.b bVar, String str2, String str3, xb.g gVar, d0 d0Var) {
        String strG = g0Var.g();
        x0 x0Var = new x0();
        return new e(context, new h(str, g0Var.h(), g0Var.i(), g0Var.j(), g0Var, CommonUtils.h(CommonUtils.m(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(strG).getId()), x0Var, new f(x0Var), new yb.a(gVar), new b(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), d0Var);
    }

    private c m(SettingsCacheBehavior settingsCacheBehavior) throws Throwable {
        c cVar = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject jSONObjectB = this.f30930e.b();
                if (jSONObjectB != null) {
                    c cVarB = this.f30928c.b(jSONObjectB);
                    if (cVarB != null) {
                        q(jSONObjectB, "Loaded cached settings: ");
                        long jA = this.f30929d.a();
                        if (SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) || !cVarB.a(jA)) {
                            try {
                                qb.g.f().i("Returning cached settings.");
                                cVar = cVarB;
                            } catch (Exception e10) {
                                e = e10;
                                cVar = cVarB;
                                qb.g.f().e("Failed to get cached settings", e);
                            }
                        } else {
                            qb.g.f().i("Cached settings have expired.");
                        }
                    } else {
                        qb.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    qb.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return cVar;
    }

    private String n() {
        return CommonUtils.q(this.f30926a).getString("existing_instance_identifier", "");
    }

    public void q(JSONObject jSONObject, String str) {
        qb.g.f().b(str + jSONObject.toString());
    }

    public boolean r(String str) {
        SharedPreferences.Editor editorEdit = CommonUtils.q(this.f30926a).edit();
        editorEdit.putString("existing_instance_identifier", str);
        editorEdit.apply();
        return true;
    }

    @Override
    public Task a() {
        return ((TaskCompletionSource) this.f30934i.get()).getTask();
    }

    @Override
    public c b() {
        return (c) this.f30933h.get();
    }

    boolean k() {
        return !n().equals(this.f30927b.f30943f);
    }

    public Task o(CrashlyticsWorkers crashlyticsWorkers) {
        return p(SettingsCacheBehavior.USE_CACHE, crashlyticsWorkers);
    }

    public Task p(SettingsCacheBehavior settingsCacheBehavior, CrashlyticsWorkers crashlyticsWorkers) throws Throwable {
        c cVarM;
        if (!k() && (cVarM = m(settingsCacheBehavior)) != null) {
            this.f30933h.set(cVarM);
            ((TaskCompletionSource) this.f30934i.get()).trySetResult(cVarM);
            return Tasks.forResult(null);
        }
        c cVarM2 = m(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (cVarM2 != null) {
            this.f30933h.set(cVarM2);
            ((TaskCompletionSource) this.f30934i.get()).trySetResult(cVarM2);
        }
        return this.f30932g.k().onSuccessTask(crashlyticsWorkers.f30472a, new a(crashlyticsWorkers));
    }
}
