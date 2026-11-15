package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.Priority;
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

        private e9.a f23756a;

        private Map f23757b = new HashMap();

        public a a(Priority priority, b bVar) {
            this.f23757b.put(priority, bVar);
            return this;
        }

        public SchedulerConfig b() {
            if (this.f23756a == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.f23757b.keySet().size() < Priority.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map map = this.f23757b;
            this.f23757b = new HashMap();
            return SchedulerConfig.d(this.f23756a, map);
        }

        public a c(e9.a aVar) {
            this.f23756a = aVar;
            return this;
        }
    }

    public static abstract class b {

        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new com.google.android.datatransport.runtime.scheduling.jobscheduling.b.C0339b().c(Collections.emptySet());
        }

        abstract long b();

        abstract Set c();

        abstract long d();
    }

    private long a(int i10, long j10) {
        int i11 = i10 - 1;
        return (long) (Math.pow(3.0d, i11) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * ((long) i11))));
    }

    public static a b() {
        return new a();
    }

    static SchedulerConfig d(e9.a aVar, Map map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(aVar, map);
    }

    public static SchedulerConfig f(e9.a aVar) {
        return b().a(Priority.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(Priority.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(Priority.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(Flag.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static Set i(Object... objArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(objArr)));
    }

    private void j(JobInfo.Builder builder, Set set) {
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

    public JobInfo.Builder c(JobInfo.Builder builder, Priority priority, long j10, int i10) {
        builder.setMinimumLatency(g(priority, j10, i10));
        j(builder, ((b) h().get(priority)).c());
        return builder;
    }

    abstract e9.a e();

    public long g(Priority priority, long j10, int i10) {
        long time = j10 - e().getTime();
        b bVar = (b) h().get(priority);
        return Math.min(Math.max(a(i10, bVar.b()), time), bVar.d());
    }

    abstract Map h();
}
