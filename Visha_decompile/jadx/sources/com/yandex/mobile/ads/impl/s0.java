package com.yandex.mobile.ads.impl;

import android.app.Activity;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.Lambda;

public final class s0 {
    private final ArrayList a;

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            WeakReference weakReference = (WeakReference) obj;
            y45.j(weakReference, "it");
            Activity activity = (Activity) weakReference.get();
            return Boolean.valueOf(activity == null || activity.isFinishing() || activity.isDestroyed());
        }
    }

    public static final class b extends Lambda implements e74 {
        public static final b b = new b();

        public b() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            WeakReference weakReference = (WeakReference) obj;
            y45.j(weakReference, "it");
            Activity activity = (Activity) weakReference.get();
            return Boolean.valueOf(activity == null || activity.isFinishing() || activity.isDestroyed());
        }
    }

    public s0(Activity activity) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (activity != null) {
            arrayList.add(new WeakReference(activity));
        }
    }

    public final void a(Activity activity) {
        y45.j(activity, "activity");
        synchronized (this) {
            try {
                ArrayList arrayList = this.a;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    do {
                        if (it.hasNext()) {
                        }
                    } while (!y45.e(((WeakReference) it.next()).get(), activity));
                    zfb zfbVar = zfb.a;
                }
                this.a.add(new WeakReference(activity));
                Objects.toString(activity);
                sp0.a(new Object[0]);
                zfb zfbVar2 = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Activity b() {
        Activity activity;
        synchronized (this) {
            defpackage.d81.I(this.a, b.b);
            WeakReference weakReference = (WeakReference) defpackage.i81.C0(this.a);
            activity = weakReference != null ? (Activity) weakReference.get() : null;
        }
        return activity;
    }

    public final void b(Activity activity) {
        Object next;
        y45.j(activity, "activity");
        synchronized (this) {
            try {
                Iterator it = this.a.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((WeakReference) next).get(), activity));
                WeakReference weakReference = (WeakReference) next;
                if (weakReference != null) {
                    this.a.remove(weakReference);
                    Objects.toString(activity);
                    sp0.a(new Object[0]);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Activity a() {
        Activity activity;
        synchronized (this) {
            defpackage.d81.I(this.a, a.b);
            WeakReference weakReference = (WeakReference) defpackage.i81.q0(this.a);
            activity = weakReference != null ? (Activity) weakReference.get() : null;
        }
        return activity;
    }
}
