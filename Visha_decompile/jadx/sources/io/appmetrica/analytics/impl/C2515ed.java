package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter;
import java.util.Map;

public final class C2515ed implements ModuleSelfReporter {
    public final Fj a = AbstractC2802q1.a();
    public final int b = 4;

    @Override
    public final void reportError(String str, Throwable th) {
        Fj fj = this.a;
        fj.getClass();
        fj.a(new C2546fj(str, th));
    }

    @Override
    public final void reportEvent(String str) {
        Fj fj = this.a;
        ModuleEvent moduleEventBuild = ModuleEvent.newBuilder(this.b).withName(str).build();
        fj.getClass();
        fj.a(new C2919uj(moduleEventBuild));
    }

    @Override
    public final void reportError(String str, String str2) {
        this.a.reportError(str, str2);
    }

    @Override
    public final void reportEvent(String str, Map<String, ? extends Object> map) {
        Fj fj = this.a;
        ModuleEvent moduleEventBuild = ModuleEvent.newBuilder(this.b).withName(str).withAttributes(map).build();
        fj.getClass();
        fj.a(new C2919uj(moduleEventBuild));
    }

    @Override
    public final void reportEvent(String str, String str2) {
        Fj fj = this.a;
        ModuleEvent moduleEventBuild = ModuleEvent.newBuilder(this.b).withName(str).withValue(str2).build();
        fj.getClass();
        fj.a(new C2919uj(moduleEventBuild));
    }

    @Override
    public final void reportEvent(int i, String str, String str2) {
        Fj fj = this.a;
        ModuleEvent moduleEventBuild = ModuleEvent.newBuilder(i).withName(str).withValue(str2).build();
        fj.getClass();
        fj.a(new C2919uj(moduleEventBuild));
    }
}
