package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

public abstract class erh {
    public static final im5 d = j8.h(null);
    public final g8i a;
    public final ScheduledExecutorService b;
    public final frh c;

    public erh(g8i g8iVar, ScheduledExecutorService scheduledExecutorService, frh frhVar) {
        this.a = g8iVar;
        this.b = scheduledExecutorService;
        this.c = frhVar;
    }

    public final vqh a(Object obj, im5... im5VarArr) {
        return new vqh(this, obj, Arrays.asList(im5VarArr), null);
    }

    public final crh b(Object obj, im5 im5Var) {
        return new crh(this, obj, im5Var, Collections.singletonList(im5Var), im5Var);
    }

    public abstract String f(Object obj);
}
