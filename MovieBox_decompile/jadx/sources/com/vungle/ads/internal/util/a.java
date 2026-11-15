package com.vungle.ads.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements Application.ActivityLifecycleCallbacks {
    private static final String TAG = "ActivityManager";
    private volatile int foregroundActivityCount;
    private volatile boolean isAppInForeground;
    private volatile c targetActivityInfo;
    public static final C0691a Companion = new C0691a(null);
    private static final a instance = new a();
    private final AtomicBoolean isInitialized = new AtomicBoolean(false);
    private final CopyOnWriteArraySet<b> callbacks = new CopyOnWriteArraySet<>();

    public static final class C0691a {
        public C0691a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getInstance$vungle_ads_release$annotations() {
        }

        public final void addLifecycleListener(b listener) {
            Intrinsics.h(listener, "listener");
            getInstance$vungle_ads_release().addListener(listener);
        }

        public final void deInit$vungle_ads_release(Context context) {
            Intrinsics.h(context, "context");
            getInstance$vungle_ads_release().deInit(context);
        }

        public final a getInstance$vungle_ads_release() {
            return a.instance;
        }

        public final void init(Context context) {
            Intrinsics.h(context, "context");
            getInstance$vungle_ads_release().init(context);
        }

        public final boolean isForeground() {
            return getInstance$vungle_ads_release().isAppInForeground();
        }

        public final void removeLifecycleListener(b listener) {
            Intrinsics.h(listener, "listener");
            getInstance$vungle_ads_release().removeListener(listener);
        }

        public final boolean startWhenForeground(Context context, Intent intent, Intent intent2, com.vungle.ads.internal.ui.b bVar) {
            Intrinsics.h(context, "context");
            if (isForeground()) {
                return getInstance$vungle_ads_release().startActivitySafely(context, intent, intent2, bVar);
            }
            getInstance$vungle_ads_release().targetActivityInfo = new c(new WeakReference(context), intent, intent2, bVar);
            return false;
        }

        private C0691a() {
        }
    }

    public static class b {
        public void onBackground() {
        }

        public void onForeground() {
        }
    }

    private static final class c {
        private final com.vungle.ads.internal.ui.b adOpenCallback;
        private final WeakReference<Context> context;
        private final Intent deepLinkOverrideIntent;
        private final Intent defaultIntent;

        public c(WeakReference<Context> context, Intent intent, Intent intent2, com.vungle.ads.internal.ui.b bVar) {
            Intrinsics.h(context, "context");
            this.context = context;
            this.deepLinkOverrideIntent = intent;
            this.defaultIntent = intent2;
            this.adOpenCallback = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static c copy$default(c cVar, WeakReference weakReference, Intent intent, Intent intent2, com.vungle.ads.internal.ui.b bVar, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                weakReference = cVar.context;
            }
            if ((i10 & 2) != 0) {
                intent = cVar.deepLinkOverrideIntent;
            }
            if ((i10 & 4) != 0) {
                intent2 = cVar.defaultIntent;
            }
            if ((i10 & 8) != 0) {
                bVar = cVar.adOpenCallback;
            }
            return cVar.copy(weakReference, intent, intent2, bVar);
        }

        public final WeakReference<Context> component1() {
            return this.context;
        }

        public final Intent component2() {
            return this.deepLinkOverrideIntent;
        }

        public final Intent component3() {
            return this.defaultIntent;
        }

        public final com.vungle.ads.internal.ui.b component4() {
            return this.adOpenCallback;
        }

        public final c copy(WeakReference<Context> context, Intent intent, Intent intent2, com.vungle.ads.internal.ui.b bVar) {
            Intrinsics.h(context, "context");
            return new c(context, intent, intent2, bVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.context, cVar.context) && Intrinsics.c(this.deepLinkOverrideIntent, cVar.deepLinkOverrideIntent) && Intrinsics.c(this.defaultIntent, cVar.defaultIntent) && Intrinsics.c(this.adOpenCallback, cVar.adOpenCallback);
        }

        public final com.vungle.ads.internal.ui.b getAdOpenCallback() {
            return this.adOpenCallback;
        }

        public final WeakReference<Context> getContext() {
            return this.context;
        }

        public final Intent getDeepLinkOverrideIntent() {
            return this.deepLinkOverrideIntent;
        }

        public final Intent getDefaultIntent() {
            return this.defaultIntent;
        }

        public int hashCode() {
            int iHashCode = this.context.hashCode() * 31;
            Intent intent = this.deepLinkOverrideIntent;
            int iHashCode2 = (iHashCode + (intent == null ? 0 : intent.hashCode())) * 31;
            Intent intent2 = this.defaultIntent;
            int iHashCode3 = (iHashCode2 + (intent2 == null ? 0 : intent2.hashCode())) * 31;
            com.vungle.ads.internal.ui.b bVar = this.adOpenCallback;
            return iHashCode3 + (bVar != null ? bVar.hashCode() : 0);
        }

        public String toString() {
            return "TargetActivityInfo(context=" + this.context + ", deepLinkOverrideIntent=" + this.deepLinkOverrideIntent + ", defaultIntent=" + this.defaultIntent + ", adOpenCallback=" + this.adOpenCallback + ')';
        }
    }

    private a() {
    }

    public final void addListener(b bVar) {
        this.callbacks.add(bVar);
    }

    public final void deInit(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
        this.isInitialized.set(false);
        this.targetActivityInfo = null;
        this.foregroundActivityCount = 0;
        this.isAppInForeground = false;
        this.callbacks.clear();
    }

    public final void init(Context context) {
        Object objM453constructorimpl;
        if (this.isInitialized.getAndSet(true)) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            o.Companion.e(TAG, "Error initializing ActivityManager", thM456exceptionOrNullimpl);
            this.isInitialized.set(false);
        }
    }

    public final boolean isAppInForeground() {
        return !this.isInitialized.get() || this.isAppInForeground;
    }

    public final boolean startActivitySafely(Context context, Intent intent, Intent intent2, com.vungle.ads.internal.ui.b bVar) {
        try {
            if (intent == null) {
                if (intent2 != null) {
                    context.startActivity(intent2);
                }
                return false;
            }
            context.startActivity(intent);
            if (bVar != null) {
                bVar.onDeeplinkClick(true);
            }
            return true;
        } catch (Exception e10) {
            o.Companion.e(TAG, "Failed to start activity: " + e10);
            if (intent != null && bVar != null) {
                try {
                    bVar.onDeeplinkClick(false);
                    if (intent != null) {
                        context.startActivity(intent2);
                        return true;
                    }
                } catch (Exception unused) {
                }
            } else if (intent != null && intent2 != null) {
                context.startActivity(intent2);
                return true;
            }
        }
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.foregroundActivityCount++;
        if (this.isAppInForeground || this.foregroundActivityCount != 1) {
            return;
        }
        this.isAppInForeground = true;
        c cVar = this.targetActivityInfo;
        if (cVar != null) {
            Context it = cVar.getContext().get();
            if (it != null) {
                C0691a c0691a = Companion;
                Intrinsics.g(it, "it");
                c0691a.startWhenForeground(it, cVar.getDeepLinkOverrideIntent(), cVar.getDefaultIntent(), cVar.getAdOpenCallback());
            }
            this.targetActivityInfo = null;
        }
        Iterator<T> it2 = this.callbacks.iterator();
        while (it2.hasNext()) {
            ((b) it2.next()).onForeground();
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.foregroundActivityCount--;
        if (this.isAppInForeground && this.foregroundActivityCount == 0) {
            this.isAppInForeground = false;
            Iterator<T> it = this.callbacks.iterator();
            while (it.hasNext()) {
                ((b) it.next()).onBackground();
            }
        }
    }

    public final void removeListener(b callback) {
        Intrinsics.h(callback, "callback");
        this.callbacks.remove(callback);
    }
}
