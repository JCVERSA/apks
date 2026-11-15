package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Map;

final class a extends SchedulerConfig {

    private final e9.a f23758a;

    private final Map f23759b;

    a(e9.a aVar, Map map) {
        if (aVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f23758a = aVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f23759b = map;
    }

    @Override
    e9.a e() {
        return this.f23758a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        return this.f23758a.equals(schedulerConfig.e()) && this.f23759b.equals(schedulerConfig.h());
    }

    @Override
    Map h() {
        return this.f23759b;
    }

    public int hashCode() {
        return ((this.f23758a.hashCode() ^ 1000003) * 1000003) ^ this.f23759b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f23758a + ", values=" + this.f23759b + "}";
    }
}
