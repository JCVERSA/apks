package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;

public final class ufh implements eeh {
    public final g8i a;

    public ufh(rwe rweVar, g8i g8iVar, Context context) {
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 45;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable(this) {
            @Override
            public final Object call() {
                return new vfh(new JSONObject());
            }
        });
    }
}
