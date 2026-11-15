package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.b7j;
import defpackage.v1j;

public final class f implements Application.ActivityLifecycleCallbacks {
    public final g b;

    public f(g gVar, v1j v1jVar) {
        this.b = gVar;
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        e eVar;
        Uri data;
        try {
            try {
                this.b.a.b().u().a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null || (data = intent.getData()) == null || !data.isHierarchical()) {
                    eVar = this.b.a;
                } else {
                    this.b.a.N();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    this.b.a.a().w(new zzia(this, bundle == null, data, ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "gs" : TtmlNode.TEXT_EMPHASIS_AUTO, data.getQueryParameter("referrer")));
                    eVar = this.b.a;
                }
            } catch (RuntimeException e) {
                this.b.a.b().q().b("Throwable caught in onActivityCreated", e);
                eVar = this.b.a;
            }
            h hVarK = eVar.K();
        } finally {
            this.b.a.K().x(activity, bundle);
        }
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        this.b.a.K().y(activity);
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        this.b.a.K().z(activity);
        b7j b7jVarM = this.b.a.M();
        b7jVarM.a.a().w(new zzkb(b7jVarM, b7jVarM.a.c().elapsedRealtime()));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        b7j b7jVarM = this.b.a.M();
        b7jVarM.a.a().w(new zzka(b7jVarM, b7jVarM.a.c().elapsedRealtime()));
        this.b.a.K().A(activity);
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.b.a.K().B(activity, bundle);
    }

    @Override
    public final void onActivityStarted(Activity activity) {
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }
}
