package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;

public abstract class N2 implements ModulePreferences {
    public final Wk a;

    public N2(Wk wk) {
        this.a = wk;
    }

    public abstract String a(String str);

    @Override
    public final boolean getBoolean(String str, boolean z) {
        return ((AbstractC2988xd) this.a).c(str, z);
    }

    @Override
    public final int getInt(String str, int i) {
        return ((AbstractC2988xd) this.a).c(str, i);
    }

    @Override
    public final long getLong(String str, long j) {
        return ((AbstractC2988xd) this.a).c(a(str), j);
    }

    @Override
    public final String getString(String str, String str2) {
        return ((AbstractC2988xd) this.a).c(a(str), str2);
    }

    @Override
    public final void putBoolean(String str, boolean z) {
        AbstractC2988xd abstractC2988xd = (AbstractC2988xd) this.a;
        ((Me) ((Wk) abstractC2988xd.b(abstractC2988xd.f(a(str)), z))).b();
    }

    @Override
    public final void putInt(String str, int i) {
        AbstractC2988xd abstractC2988xd = (AbstractC2988xd) this.a;
        ((Me) ((Wk) abstractC2988xd.b(abstractC2988xd.f(str), i))).b();
    }

    @Override
    public final void putLong(String str, long j) {
        AbstractC2988xd abstractC2988xd = (AbstractC2988xd) this.a;
        ((Me) ((Wk) abstractC2988xd.b(abstractC2988xd.f(a(str)), j))).b();
    }

    @Override
    public final void putString(String str, String str2) {
        AbstractC2988xd abstractC2988xd = (AbstractC2988xd) this.a;
        ((Me) ((Wk) abstractC2988xd.b(abstractC2988xd.f(a(str)), str2))).b();
    }
}
