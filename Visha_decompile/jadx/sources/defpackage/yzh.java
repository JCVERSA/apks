package defpackage;

import android.content.Context;

public final class yzh extends wzh {
    public static yzh i;

    public yzh(Context context) {
        super(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
    }

    public static final yzh j(Context context) {
        yzh yzhVar;
        synchronized (yzh.class) {
            try {
                if (i == null) {
                    i = new yzh(context);
                }
                yzhVar = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return yzhVar;
    }

    public final tzh i(long j, boolean z) {
        synchronized (yzh.class) {
            try {
                if (this.g.d()) {
                    return b(null, null, j, z);
                }
                return new tzh();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k() {
        synchronized (yzh.class) {
            try {
                if (g(false)) {
                    f(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
