package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Callable;

public final class leh implements eeh {
    public final Context a;
    public final g8i b;

    public leh(Context context, g8i g8iVar) {
        this.a = context;
        this.b = g8iVar;
    }

    public static meh a(leh lehVar) {
        Context context = lehVar.a;
        return new meh(jxe.b(context), jxe.a(context));
    }

    @Override
    public final int zza() {
        return 59;
    }

    @Override
    public final im5 zzb() {
        return ((Boolean) rze.b.e()).booleanValue() ? this.b.m(new Callable() {
            @Override
            public final Object call() {
                return leh.a(this.b);
            }
        }) : j8.h(new meh(-1, -1));
    }
}
