package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.Priority;
import defpackage.hy0;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public abstract class SchedulerConfig {

    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public static class a {
        public hy0 a;
        public Map b = new HashMap();

        public a a(Priority priority, b bVar) {
            this.b.put(priority, bVar);
            return this;
        }

        public SchedulerConfig b() {
            if (this.a == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.b.keySet().size() < Priority.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map map = this.b;
            this.b = new HashMap();
            return SchedulerConfig.d(this.a, map);
        }

        public a c(hy0 hy0Var) {
            this.a = hy0Var;
            return this;
        }
    }

    public static abstract class b {

        public static abstract class a {
            public abstract b a();

            public abstract a b(long j);

            public abstract a c(Set set);

            public abstract a d(long j);
        }

        public static a a() {
            return new com.google.android.datatransport.runtime.scheduling.jobscheduling.b.C0075b().c(Collections.emptySet());
        }

        public abstract long b();

        public abstract Set c();

        public abstract long d();
    }

    public static a b() {
        return new a();
    }

    public static SchedulerConfig d(hy0 hy0Var, Map map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(hy0Var, map);
    }

    public static SchedulerConfig f(hy0 hy0Var) {
        return b().a(Priority.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(Priority.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(Priority.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(Flag.DEVICE_IDLE)).a()).c(hy0Var).b();
    }

    public static Set i(Object... objArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(objArr)));
    }

    public final long a(int i, long j) {
        int i2 = i - 1;
        return (long) (Math.pow(3.0d, i2) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2L) * ((long) i2))));
    }

    public JobInfo.Builder c(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(g(priority, j, i));
        j(builder, ((b) h().get(priority)).c());
        return builder;
    }

    public abstract hy0 e();

    public long g(Priority priority, long j, int i) {
        long jA = j - e().a();
        b bVar = (b) h().get(priority);
        return Math.min(Math.max(a(i, bVar.b()), jA), bVar.d());
    }

    public abstract Map h();

    public final void j(JobInfo.Builder builder, Set set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }
}
