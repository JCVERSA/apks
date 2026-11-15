package io.appmetrica.analytics.impl;

import defpackage.abb;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.KotlinVersion;
import kotlin.Pair;

public final class Qg implements Runnable {
    @Override
    public final void run() {
        TimePassedChecker timePassedChecker = new TimePassedChecker();
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        Oe oeX = C2910ua.E.x();
        if (timePassedChecker.didTimePassMillis(oeX.f(), TimeUnit.DAYS.toMillis(1L), "[ReportKotlinVersionTask]")) {
            KotlinVersion kotlinVersion = KotlinVersion.CURRENT;
            Pair pairA = abb.a("major", Integer.valueOf(kotlinVersion.getMajor()));
            Pair pairA2 = abb.a("minor", Integer.valueOf(kotlinVersion.getMinor()));
            Pair pairA3 = abb.a("patch", Integer.valueOf(kotlinVersion.getPatch()));
            StringBuilder sb = new StringBuilder();
            sb.append(kotlinVersion.getMajor());
            sb.append('.');
            sb.append(kotlinVersion.getMinor());
            sb.append('.');
            sb.append(kotlinVersion.getPatch());
            Map mapP = kotlin.collections.a.p(pairA, pairA2, pairA3, abb.a("version", sb.toString()));
            Fj fj = AbstractC2521ej.a;
            fj.getClass();
            fj.a(new Ej("kotlin_version", mapP));
            oeX.c(systemTimeProvider.currentTimeMillis()).b();
        }
    }
}
