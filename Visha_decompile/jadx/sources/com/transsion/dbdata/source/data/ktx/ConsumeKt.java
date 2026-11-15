package com.transsion.dbdata.source.data.ktx;

import android.os.SystemClock;
import defpackage.c74;
import defpackage.e74;
import defpackage.vmb;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a?\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u000e\b\u0004\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0014\b\u0006\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a1\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\n\u001a\u00020\t2\u000e\b\u0004\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"T", "Lkotlin/Function0;", "action", "Lkotlin/Function1;", "", "Lzfb;", "onTimeMeasured", "measureExecutionTime", "(Lc74;Le74;)Ljava/lang/Object;", "", "methodName", "(Ljava/lang/String;Lc74;)Ljava/lang/Object;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ConsumeKt {
    public static final <T> T measureExecutionTime(c74 c74Var, e74 e74Var) {
        y45.j(c74Var, "action");
        y45.j(e74Var, "onTimeMeasured");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        T t = (T) c74Var.invoke();
        e74Var.invoke(Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        return t;
    }

    public static Object measureExecutionTime$default(c74 c74Var, e74 e74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            e74Var = new e74() {
                @Override
                public Object invoke(Object obj2) {
                    invoke(((Number) obj2).longValue());
                    return zfb.a;
                }

                public final void invoke(long j) {
                    vmb.e("MeasureExecutionTime", "The total execution time of the measureExecutionTime function is " + j + " ms");
                }
            };
        }
        y45.j(c74Var, "action");
        y45.j(e74Var, "onTimeMeasured");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Object objInvoke = c74Var.invoke();
        e74Var.invoke(Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        return objInvoke;
    }

    public static final <T> T measureExecutionTime(String str, c74 c74Var) {
        y45.j(str, "methodName");
        y45.j(c74Var, "action");
        vmb.e("MeasureExecutionTime", "The " + str + " function start Execute");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        T t = (T) c74Var.invoke();
        vmb.e("MeasureExecutionTime", "The " + str + " function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
        return t;
    }
}
