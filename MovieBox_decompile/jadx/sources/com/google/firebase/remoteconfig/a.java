package com.google.firebase.remoteconfig;

import ad.i;
import ad.j;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.abt.AbtException;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.e;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    public static final byte[] f31581n = new byte[0];

    private final Context f31582a;

    private final f f31583b;

    private final jb.b f31584c;

    private final Executor f31585d;

    private final e f31586e;

    private final e f31587f;

    private final e f31588g;

    private final ConfigFetchHandler f31589h;

    private final m f31590i;

    private final n f31591j;

    private final lc.e f31592k;

    private final o f31593l;

    private final bd.e f31594m;

    a(Context context, f fVar, lc.e eVar, jb.b bVar, Executor executor, e eVar2, e eVar3, e eVar4, ConfigFetchHandler configFetchHandler, m mVar, n nVar, o oVar, bd.e eVar5) {
        this.f31582a = context;
        this.f31583b = fVar;
        this.f31592k = eVar;
        this.f31584c = bVar;
        this.f31585d = executor;
        this.f31586e = eVar2;
        this.f31587f = eVar3;
        this.f31588g = eVar4;
        this.f31589h = configFetchHandler;
        this.f31590i = mVar;
        this.f31591j = nVar;
        this.f31593l = oVar;
        this.f31594m = eVar5;
    }

    public static a k() {
        return l(f.l());
    }

    public static a l(f fVar) {
        return ((c) fVar.j(c.class)).g();
    }

    private static boolean q(com.google.firebase.remoteconfig.internal.f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        return fVar2 == null || !fVar.h().equals(fVar2.h());
    }

    public Task r(Task task, Task task2, Task task3) {
        if (!task.isSuccessful() || task.getResult() == null) {
            return Tasks.forResult(Boolean.FALSE);
        }
        com.google.firebase.remoteconfig.internal.f fVar = (com.google.firebase.remoteconfig.internal.f) task.getResult();
        return (!task2.isSuccessful() || q(fVar, (com.google.firebase.remoteconfig.internal.f) task2.getResult())) ? this.f31587f.k(fVar).continueWith(this.f31585d, new Continuation() {
            @Override
            public final Object then(Task task4) {
                return Boolean.valueOf(this.f286a.v(task4));
            }
        }) : Tasks.forResult(Boolean.FALSE);
    }

    public static Task s(ConfigFetchHandler.a aVar) {
        return Tasks.forResult(null);
    }

    public Task t(Void r10) {
        return f();
    }

    public Void u(j jVar) {
        this.f31591j.l(jVar);
        return null;
    }

    public boolean v(Task task) {
        if (!task.isSuccessful()) {
            return false;
        }
        this.f31586e.d();
        com.google.firebase.remoteconfig.internal.f fVar = (com.google.firebase.remoteconfig.internal.f) task.getResult();
        if (fVar == null) {
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            return true;
        }
        A(fVar.e());
        this.f31594m.g(fVar);
        return true;
    }

    static List z(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    void A(JSONArray jSONArray) {
        if (this.f31584c == null) {
            return;
        }
        try {
            this.f31584c.m(z(jSONArray));
        } catch (AbtException e10) {
            Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e10);
        } catch (JSONException e11) {
            Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e11);
        }
    }

    public Task f() {
        final Task taskE = this.f31586e.e();
        final Task taskE2 = this.f31587f.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskE, taskE2}).continueWithTask(this.f31585d, new Continuation() {
            @Override
            public final Object then(Task task) {
                return this.f281a.r(taskE, taskE2, task);
            }
        });
    }

    public Task g() {
        return this.f31589h.i().onSuccessTask(FirebaseExecutors.a(), new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return com.google.firebase.remoteconfig.a.s((ConfigFetchHandler.a) obj);
            }
        });
    }

    public Task h() {
        return g().onSuccessTask(this.f31585d, new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return this.f280a.t((Void) obj);
            }
        });
    }

    public Map i() {
        return this.f31590i.d();
    }

    public i j() {
        return this.f31591j.c();
    }

    public Set m(String str) {
        return this.f31590i.g(str);
    }

    public long n(String str) {
        return this.f31590i.i(str);
    }

    bd.e o() {
        return this.f31594m;
    }

    public String p(String str) {
        return this.f31590i.k(str);
    }

    public Task w(final j jVar) {
        return Tasks.call(this.f31585d, new Callable() {
            @Override
            public final Object call() {
                return this.f284a.u(jVar);
            }
        });
    }

    void x(boolean z10) {
        this.f31593l.b(z10);
    }

    void y() {
        this.f31587f.e();
        this.f31588g.e();
        this.f31586e.e();
    }
}
