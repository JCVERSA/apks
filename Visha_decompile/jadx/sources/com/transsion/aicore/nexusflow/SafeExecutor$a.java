package com.transsion.aicore.nexusflow;

import android.util.Log;
import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@nt1(c = "com.transsion.aicore.nexusflow.SafeExecutor$safeRunAsync$1", f = "SafeExecutor.kt", l = {83}, m = "invokeSuspend")
public final class SafeExecutor$a extends SuspendLambda implements s74 {
    public int a;
    public final e74 b;
    public final String c;
    public final e74 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeExecutor$a(e74 e74Var, String str, e74 e74Var2, wh1<? super SafeExecutor$a> wh1Var) {
        super(2, wh1Var);
        this.b = e74Var;
        this.c = str;
        this.d = e74Var2;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SafeExecutor$a(this.b, this.c, this.d, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((SafeExecutor$a) create((nk1) obj, (wh1) obj2)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.a;
        try {
            if (i == 0) {
                c.b(obj);
                e74 e74Var = this.b;
                this.a = 1;
                Object objInvoke = e74Var.invoke(this);
                this = objInvoke;
                if (objInvoke == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this = this;
            }
        } catch (Error e) {
            Log.e(this.c, "Safe async execution failed with Error: " + e.getMessage(), e);
            e74 e74Var2 = this.d;
            if (e74Var2 != null) {
                e74Var2.invoke(e);
            }
        } catch (Exception e2) {
            Log.e(this.c, "Safe async execution failed: " + e2.getMessage(), e2);
            e74 e74Var3 = this.d;
            if (e74Var3 != null) {
                e74Var3.invoke(e2);
            }
        } catch (Throwable th) {
            Log.e(this.c, "Safe async execution failed with Throwable: " + th.getMessage(), th);
            e74 e74Var4 = this.d;
            if (e74Var4 != null) {
                e74Var4.invoke(th);
            }
        }
        return zfb.a;
    }
}
