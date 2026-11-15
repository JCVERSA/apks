package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.hk;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

@MainThread
public final class hk implements xf {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final zf d;
    private final CopyOnWriteArrayList<wf> e;
    private ws f;

    public hk(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, zf zfVar) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(zfVar, "adLoadControllerFactory");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = zfVar;
        this.e = new CopyOnWriteArrayList<>();
        lt0Var.a();
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (wf wfVar : this.e) {
            wfVar.a((ws) null);
            wfVar.e();
        }
        this.e.clear();
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                hk.a(this.b, v7Var);
            }
        });
    }

    public static final void a(hk hkVar, v7 v7Var) {
        y45.j(hkVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        wf wfVarA = hkVar.d.a(hkVar.a, hkVar, v7Var, null);
        hkVar.e.add(wfVarA);
        wfVarA.a(v7Var.a());
        wfVarA.a(hkVar.f);
        wfVarA.b(v7Var);
    }

    @Override
    public final void a(jd0 jd0Var) {
        wf wfVar = (wf) jd0Var;
        y45.j(wfVar, "loadController");
        this.b.a();
        wfVar.a((ws) null);
        this.e.remove(wfVar);
    }

    @Override
    @MainThread
    public final void a(rl2 rl2Var) {
        this.b.a();
        this.f = rl2Var;
        Iterator<wf> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a((ws) rl2Var);
        }
    }
}
