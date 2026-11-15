package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class jre {
    public final im5 a;

    public jre(final Context context, Executor executor) {
        this.a = j8.j(new Callable(this) {
            @Override
            public final Object call() {
                Context context2 = context;
                try {
                    return zwh.a(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
                } catch (Throwable unused) {
                    return null;
                }
            }
        }, executor);
    }

    public final im5 a() {
        return this.a;
    }
}
