package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import defpackage.hy0;
import java.util.Map;
import org.apache.commons.text.StringSubstitutor;

public final class a extends SchedulerConfig {
    public final hy0 a;
    public final Map b;

    public a(hy0 hy0Var, Map map) {
        if (hy0Var == null) {
            throw new NullPointerException("Null clock");
        }
        this.a = hy0Var;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.b = map;
    }

    @Override
    public hy0 e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        return this.a.equals(schedulerConfig.e()) && this.b.equals(schedulerConfig.h());
    }

    @Override
    public Map h() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.a + ", values=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
