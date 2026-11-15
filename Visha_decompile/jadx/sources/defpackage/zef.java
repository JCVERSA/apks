package defpackage;

import androidx.webkit.Profile;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.m8;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class zef {
    public static final g8i a;
    public static final g8i b;
    public static final g8i c;
    public static final ScheduledExecutorService d;
    public static final h8i e;
    public static final g8i f;
    public static final g8i g;

    /* JADX WARN: Code duplicated, block: B:14:0x0091  */
    static {
        Executor threadPoolExecutor;
        ExecutorService executorServiceB;
        ExecutorService executorServiceA;
        if (yx0.a()) {
            ozh.a();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new vef(Profile.DEFAULT_PROFILE_NAME)));
        } else {
            qxe qxeVar = cye.sb;
            if (zzbd.zzc().c(qxeVar) == null || !((Boolean) zzbd.zzc().c(qxeVar)).booleanValue()) {
                threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new vef(Profile.DEFAULT_PROFILE_NAME));
            } else {
                qxe qxeVar2 = cye.tb;
                if (zzbd.zzc().c(qxeVar2) != null) {
                    qxe qxeVar3 = cye.ub;
                    if (zzbd.zzc().c(qxeVar3) != null) {
                        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(((Integer) zzbd.zzc().c(qxeVar2)).intValue(), ((Integer) zzbd.zzc().c(qxeVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new vef(Profile.DEFAULT_PROFILE_NAME));
                        threadPoolExecutor2.allowCoreThreadTimeOut(((Boolean) zzbd.zzc().c(qxeVar3)).booleanValue());
                        threadPoolExecutor = threadPoolExecutor2;
                    } else {
                        threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new vef(Profile.DEFAULT_PROFILE_NAME));
                    }
                } else {
                    threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new vef(Profile.DEFAULT_PROFILE_NAME));
                }
            }
        }
        yef yefVar = null;
        a = new xef(threadPoolExecutor, yefVar);
        if (yx0.a()) {
            executorServiceB = ozh.a().b(5, new vef("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new vef("Loader"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executorServiceB = threadPoolExecutor3;
        }
        b = new xef(executorServiceB, yefVar);
        if (yx0.a()) {
            executorServiceA = ozh.a().a(new vef("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new vef("Activeview"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            executorServiceA = threadPoolExecutor4;
        }
        c = new xef(executorServiceA, yefVar);
        uef uefVar = new uef(3, new vef("Schedule"));
        d = uefVar;
        e = m8.b(uefVar);
        f = new xef(new wef(), yefVar);
        g = new xef(m8.c(), yefVar);
    }
}
