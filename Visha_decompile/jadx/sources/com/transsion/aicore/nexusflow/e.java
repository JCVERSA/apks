package com.transsion.aicore.nexusflow;

import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.media3.common.C;
import com.transsion.aicore.nexusflow.e;
import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s2d;
import defpackage.s74;
import defpackage.wh1;
import defpackage.x09;
import defpackage.xe9;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@nt1(c = "com.transsion.aicore.nexusflow.FlowManager$initializeCapabilities$1$1", f = "FlowManager.kt", l = {}, m = "invokeSuspend")
public final class e extends SuspendLambda implements s74 {
    public final List<String> a;
    public final b b;
    public final Bundle c;
    public final e74 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List list, b bVar, Bundle bundle, e74 e74Var, wh1 wh1Var) {
        super(2, wh1Var);
        this.a = list;
        this.c = bundle;
        this.d = e74Var;
    }

    public static final zfb a(e74 e74Var, Bundle bundle) {
        x09 x09Var = x09.a;
        try {
            Log.v("NexusFlow.Manager", "Executing safe operation");
            e74Var.invoke(bundle);
            zfb zfbVar = zfb.a;
        } catch (Error e) {
            Log.e("NexusFlow.Manager", "Safe execution failed with Error: " + e.getMessage(), e);
        } catch (Exception e2) {
            Log.e("NexusFlow.Manager", "Safe execution failed: " + e2.getMessage(), e2);
        } catch (Throwable th) {
            Log.e("NexusFlow.Manager", "Safe execution failed with Throwable: " + th.getMessage(), th);
        }
        return zfb.a;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new e(this.a, null, this.c, this.d, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((e) create((nk1) obj, (wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        c.b(obj);
        x09 x09Var = x09.a;
        final List<String> list = this.a;
        final Bundle bundle = this.c;
        final e74 e74Var = this.d;
        try {
            try {
                Log.v("NexusFlow.Manager", "Executing safe operation");
                Log.d("NexusFlow.Manager", "Starting capability initialization: " + list);
                final String strValueOf = String.valueOf(Process.myPid());
                Log.d("NexusFlow.Manager", "Client process ID: " + strValueOf);
                final long j = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
                Log.d("NexusFlow.Manager", "Initialization parameters: " + s2d.c(new e74() {
                    @Override
                    public final Object invoke(Object obj2) {
                        return e.a(list, j, strValueOf, bundle, (Bundle) obj2);
                    }
                }));
                new e74() {
                    @Override
                    public final Object invoke(Object obj2) {
                        return e.a(e74Var, (Bundle) obj2);
                    }
                };
                throw null;
            } catch (Error e) {
                Log.e("NexusFlow.Manager", "Safe execution failed with Error: " + e.getMessage(), e);
                return zfb.a;
            }
        } catch (Exception e2) {
            Log.e("NexusFlow.Manager", "Safe execution failed: " + e2.getMessage(), e2);
            return zfb.a;
        } catch (Throwable th) {
            Log.e("NexusFlow.Manager", "Safe execution failed with Throwable: " + th.getMessage(), th);
            return zfb.a;
        }
    }

    public static final zfb a(List list, long j, String str, Bundle bundle, Bundle bundle2) {
        bundle2.putStringArray("capabilities", (String[]) list.toArray(new String[0]));
        bundle2.putLong("timeout_ms", j);
        bundle2.putString("client_process_id", str);
        bundle2.putLong("timestamp", System.currentTimeMillis());
        s2d.f(bundle, bundle2, xe9.d("capabilities"));
        return zfb.a;
    }
}
