package com.transsion.aicore.nexusflow;

import android.os.Bundle;
import android.util.Log;
import com.transsion.aicore.nexusflow.d;
import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s2d;
import defpackage.s74;
import defpackage.wh1;
import defpackage.ye9;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@nt1(c = "com.transsion.aicore.nexusflow.FlowManager$executeInitialization$1", f = "FlowManager.kt", l = {}, m = "invokeSuspend")
public final class d extends SuspendLambda implements s74 {
    public final b a;
    public final e74 b;
    public final long c;
    public final Bundle d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(b bVar, e74 e74Var, long j, Bundle bundle, wh1<? super d> wh1Var) {
        super(2, wh1Var);
        this.b = e74Var;
        this.c = j;
        this.d = bundle;
    }

    public static final zfb a(long j, Bundle bundle, Bundle bundle2) {
        bundle2.putString("action", "FLOW_INIT");
        bundle2.putString("flowId", "init_" + System.currentTimeMillis());
        bundle2.putLong("timeout_ms", j);
        bundle2.putLong("timestamp", System.currentTimeMillis());
        s2d.f(bundle, bundle2, ye9.f());
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new d(null, this.b, this.c, this.d, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((d) create((nk1) obj, (wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        c.b(obj);
        final long j = this.c;
        final Bundle bundle = this.d;
        Log.d("NexusFlow.Manager", "Initialization parameters: " + s2d.c(new e74() {
            @Override
            public final Object invoke(Object obj2) {
                return d.a(j, bundle, (Bundle) obj2);
            }
        }));
        b.d(null);
        Log.e("NexusFlow.Manager", "Service not bound, cannot execute initialization");
        this.b.invoke(s2d.b(0, "Service not bound, cannot execute initialization", null));
        return zfb.a;
    }
}
