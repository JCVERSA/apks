package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

public final class jra {
    public static WeakReference d;
    public final SharedPreferences a;
    public rg9 b;
    public final Executor c;

    public jra(SharedPreferences sharedPreferences, Executor executor) {
        this.c = executor;
        this.a = sharedPreferences;
    }

    public static synchronized jra a(Context context, Executor executor) {
        jra jraVar;
        try {
            WeakReference weakReference = d;
            jraVar = weakReference != null ? (jra) weakReference.get() : null;
            if (jraVar == null) {
                jraVar = new jra(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                jraVar.c();
                d = new WeakReference(jraVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return jraVar;
    }

    public synchronized vqa b() {
        return vqa.a(this.b.e());
    }

    public final synchronized void c() {
        this.b = rg9.c(this.a, "topic_operation_queue", StringUtils.COMMA, this.c);
    }

    public synchronized boolean d(vqa vqaVar) {
        return this.b.f(vqaVar.e());
    }
}
