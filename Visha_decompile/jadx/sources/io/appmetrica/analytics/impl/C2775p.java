package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class C2775p extends H7 {
    public Application a;
    public volatile EnumC2750o b = EnumC2750o.d;
    public final C2960wa c = new C2960wa(true);

    @AnyThread
    public final synchronized void a(@NonNull Context context) {
        if (this.a == null) {
            try {
                this.a = (Application) context.getApplicationContext();
            } catch (Throwable unused) {
            }
        }
        b();
    }

    public final synchronized void b() {
        EnumC2750o enumC2750o = this.b;
        EnumC2750o enumC2750o2 = EnumC2750o.b;
        if (enumC2750o != enumC2750o2 && !this.c.a.isEmpty()) {
            if (this.a == null) {
                this.b = EnumC2750o.c;
            } else {
                this.b = enumC2750o2;
                this.a.registerActivityLifecycleCallbacks(this);
            }
        }
    }

    public final synchronized void c() {
        if (this.b == EnumC2750o.b && this.c.a.isEmpty()) {
            this.b = EnumC2750o.d;
            Application application = this.a;
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(this);
            }
        }
    }

    @Override
    @MainThread
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        a(activity, EnumC2700m.CREATED);
    }

    @Override
    public final void onActivityDestroyed(@NonNull Activity activity) {
        a(activity, EnumC2700m.DESTROYED);
    }

    @Override
    @MainThread
    public final void onActivityPaused(@NonNull Activity activity) {
        a(activity, EnumC2700m.PAUSED);
    }

    @Override
    @MainThread
    public final void onActivityResumed(@NonNull Activity activity) {
        a(activity, EnumC2700m.RESUMED);
    }

    @Override
    public final void onActivityStarted(@NonNull Activity activity) {
        a(activity, EnumC2700m.STARTED);
    }

    @Override
    public final void onActivityStopped(@NonNull Activity activity) {
        a(activity, EnumC2700m.STOPPED);
    }

    @AnyThread
    public final synchronized void a(@NonNull Application application) {
        try {
            if (this.a == null) {
                this.a = application;
            }
            b();
        } catch (Throwable th) {
            throw th;
        }
    }

    @NonNull
    @AnyThread
    public final EnumC2750o a() {
        return this.b;
    }

    public final void a(Activity activity, EnumC2700m enumC2700m) {
        Collection collection;
        synchronized (this) {
            collection = (Collection) this.c.a.get(enumC2700m);
        }
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                ((InterfaceC2725n) it.next()).a(activity, enumC2700m);
            }
        }
    }

    @AnyThread
    public final synchronized void b(@NonNull InterfaceC2725n interfaceC2725n, EnumC2700m... enumC2700mArr) {
        if (enumC2700mArr != null) {
            try {
                if (enumC2700mArr.length == 0) {
                    enumC2700mArr = EnumC2700m.values();
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            enumC2700mArr = EnumC2700m.values();
        }
        for (EnumC2700m enumC2700m : enumC2700mArr) {
            C2960wa c2960wa = this.c;
            Collection collection = (Collection) c2960wa.a.get(enumC2700m);
            if (collection != null && collection.remove(interfaceC2725n)) {
                if (collection.isEmpty() && c2960wa.b) {
                    c2960wa.a.remove(enumC2700m);
                }
                new ArrayList(collection);
            }
        }
        c();
    }

    @AnyThread
    public final synchronized void a(@NonNull InterfaceC2725n interfaceC2725n, @Nullable EnumC2700m... enumC2700mArr) {
        if (enumC2700mArr != null) {
            try {
                if (enumC2700mArr.length == 0) {
                    enumC2700mArr = EnumC2700m.values();
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            enumC2700mArr = EnumC2700m.values();
        }
        for (EnumC2700m enumC2700m : enumC2700mArr) {
            this.c.a(enumC2700m, interfaceC2725n);
        }
        b();
    }
}
