package defpackage;

import android.content.Context;

public final class xzh extends wzh {
    public static xzh i;

    public xzh(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final xzh k(Context context) {
        xzh xzhVar;
        synchronized (xzh.class) {
            try {
                if (i == null) {
                    i = new xzh(context);
                }
                xzhVar = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xzhVar;
    }

    public final tzh i(long j, boolean z) {
        tzh tzhVarB;
        synchronized (xzh.class) {
            tzhVarB = b(null, null, j, z);
        }
        return tzhVarB;
    }

    public final tzh j(String str, String str2, long j, boolean z) {
        tzh tzhVarB;
        synchronized (xzh.class) {
            tzhVarB = b(str, str2, j, z);
        }
        return tzhVarB;
    }

    public final void l() {
        synchronized (xzh.class) {
            f(false);
        }
    }

    public final void m() {
        synchronized (xzh.class) {
            f(true);
        }
    }
}
