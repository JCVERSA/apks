package com.google.firebase.perf.session.gauges;

import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import com.google.firebase.perf.util.Timer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class c {

    private static final uc.a f31507g = uc.a.e();

    private static final long f31508h = TimeUnit.SECONDS.toMicros(1);

    private ScheduledFuture f31513e = null;

    private long f31514f = -1;

    public final ConcurrentLinkedQueue f31509a = new ConcurrentLinkedQueue();

    private final ScheduledExecutorService f31510b = Executors.newSingleThreadScheduledExecutor();

    private final String f31511c = "/proc/" + Integer.toString(Process.myPid()) + "/stat";

    private final long f31512d = e();

    c() {
    }

    private long d(long j10) {
        return Math.round((j10 / this.f31512d) * f31508h);
    }

    private long e() {
        return Os.sysconf(OsConstants._SC_CLK_TCK);
    }

    public static boolean f(long j10) {
        return j10 <= 0;
    }

    public void g(Timer timer) {
        com.google.firebase.perf.v1.d dVarM = m(timer);
        if (dVarM != null) {
            this.f31509a.add(dVarM);
        }
    }

    public void h(Timer timer) {
        com.google.firebase.perf.v1.d dVarM = m(timer);
        if (dVarM != null) {
            this.f31509a.add(dVarM);
        }
    }

    private synchronized void i(final Timer timer) {
        try {
            this.f31510b.schedule(new Runnable() {
                @Override
                public final void run() {
                    this.f31505a.g(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            f31507g.j("Unable to collect Cpu Metric: " + e10.getMessage());
        }
    }

    private synchronized void j(long j10, final Timer timer) {
        this.f31514f = j10;
        try {
            this.f31513e = this.f31510b.scheduleAtFixedRate(new Runnable() {
                @Override
                public final void run() {
                    this.f31503a.h(timer);
                }
            }, 0L, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            f31507g.j("Unable to start collecting Cpu Metrics: " + e10.getMessage());
        }
    }

    private com.google.firebase.perf.v1.d m(Timer timer) {
        if (timer == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f31511c));
            try {
                long currentTimestampMicros = timer.getCurrentTimestampMicros();
                String[] strArrSplit = bufferedReader.readLine().split(" ");
                com.google.firebase.perf.v1.d dVar = (com.google.firebase.perf.v1.d) com.google.firebase.perf.v1.d.k().d(currentTimestampMicros).h(d(Long.parseLong(strArrSplit[14]) + Long.parseLong(strArrSplit[16]))).j(d(Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[15]))).build();
                bufferedReader.close();
                return dVar;
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            f31507g.j("Unable to read 'proc/[pid]/stat' file: " + e10.getMessage());
            return null;
        } catch (ArrayIndexOutOfBoundsException e11) {
            e = e11;
            f31507g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NullPointerException e12) {
            e = e12;
            f31507g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NumberFormatException e13) {
            e = e13;
            f31507g.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        }
    }

    public void c(Timer timer) {
        i(timer);
    }

    public void k(long j10, Timer timer) {
        long j11 = this.f31512d;
        if (j11 == -1 || j11 == 0 || f(j10)) {
            return;
        }
        if (this.f31513e == null) {
            j(j10, timer);
        } else if (this.f31514f != j10) {
            l();
            j(j10, timer);
        }
    }

    public void l() {
        ScheduledFuture scheduledFuture = this.f31513e;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f31513e = null;
        this.f31514f = -1L;
    }
}
