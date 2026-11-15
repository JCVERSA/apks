package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.util.Log;
import androidx.p009lifecycle.Lifecycle;

public abstract class Utils {

    private static Application f19456a;

    public static abstract class Task<Result> extends ThreadUtils.SimpleTask<Result> {
        private b mConsumer;

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

    public interface b {
        void accept(Object obj);
    }

    public static Application a() {
        Application application = f19456a;
        if (application != null) {
            return application;
        }
        b(e0.j());
        if (f19456a == null) {
            throw new NullPointerException("reflect failed.");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(e0.k());
        sb2.append(" reflect app success.");
        return f19456a;
    }

    public static void b(Application application) {
        if (application == null) {
            Log.e("Utils", "app is null.");
            return;
        }
        Application application2 = f19456a;
        if (application2 == null) {
            f19456a = application;
            e0.v(application);
            e0.G();
        } else {
            if (application2.equals(application)) {
                return;
            }
            e0.L(f19456a);
            f19456a = application;
            e0.v(application);
        }
    }

    public static class a {
        public void a(Activity activity) {
        }

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
}
