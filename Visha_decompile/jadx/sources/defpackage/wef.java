package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Executor;

public final class wef implements Executor {
    public final Handler b = new zzf(Looper.getMainLooper());

    @Override
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.b.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            zzv.zzq();
            zzs.zzN(zzv.zzp().e(), th);
            throw th;
        }
    }
}
