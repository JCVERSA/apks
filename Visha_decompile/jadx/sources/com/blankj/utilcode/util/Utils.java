package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.util.Log;
import androidx.p004lifecycle.Lifecycle;

public abstract class Utils {
    public static Application a;

    public static abstract class Task<Result> extends ThreadUtils.SimpleTask<Result> {
        private final b mConsumer;

        public Task(b bVar) {
            this.mConsumer = bVar;
        }

        @Override
        public void onSuccess(Result result) {
            b bVar = this.mConsumer;
            if (bVar != null) {
                bVar.accept(result);
            }
        }
    }

    public static class a {
        public abstract void a(Activity activity);

        public void b(Activity activity) {
        }

        public void c(Activity activity) {
        }

        public void d(Activity activity) {
        }

        public void e(Activity activity) {
        }

        public void f(Activity activity) {
        }

        public void g(Activity activity, Lifecycle.Event event) {
        }
    }

    public interface b {
        void accept(Object obj);
    }

    public interface c {
    }

    public static Application a() {
        Application application = a;
        if (application != null) {
            return application;
        }
        if (!ThreadUtils.r()) {
            return null;
        }
        b(h.k());
        if (a == null) {
            throw new NullPointerException("reflect failed.");
        }
        Log.i("Utils", h.l() + " reflect app success.");
        return a;
    }

    public static void b(Application application) {
        if (application == null) {
            Log.e("Utils", "app is null.");
            return;
        }
        Application application2 = a;
        if (application2 == null) {
            a = application;
            h.u(application);
            h.G();
        } else {
            if (application2.equals(application)) {
                return;
            }
            h.M(a);
            a = application;
            h.u(application);
        }
    }
}
