package com.transsion.aicore.nexusflow;

import android.util.Log;
import defpackage.c74;
import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@nt1(c = "com.transsion.aicore.nexusflow.SafeExecutor$safeRunOnMainThread$1", f = "SafeExecutor.kt", l = {}, m = "invokeSuspend")
public final class SafeExecutor$b extends SuspendLambda implements s74 {
    public final c74 a;
    public final String b;
    public final e74 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeExecutor$b(c74 c74Var, String str, e74 e74Var, wh1<? super SafeExecutor$b> wh1Var) {
        super(2, wh1Var);
        this.a = c74Var;
        this.b = str;
        this.c = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SafeExecutor$b(this.a, this.b, this.c, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((SafeExecutor$b) create((nk1) obj, (wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        c.b(obj);
        try {
            this.a.invoke();
        } catch (Error e) {
            Log.e(this.b, "Safe main thread execution failed with Error: " + e.getMessage(), e);
            e74 e74Var = this.c;
            if (e74Var != null) {
                e74Var.invoke(e);
            }
        } catch (Exception e2) {
            Log.e(this.b, "Safe main thread execution failed: " + e2.getMessage(), e2);
            e74 e74Var2 = this.c;
            if (e74Var2 != null) {
                e74Var2.invoke(e2);
            }
        } catch (Throwable th) {
            Log.e(this.b, "Safe main thread execution failed with Throwable: " + th.getMessage(), th);
            e74 e74Var3 = this.c;
            if (e74Var3 != null) {
                e74Var3.invoke(th);
            }
        }
        return zfb.a;
    }
}
