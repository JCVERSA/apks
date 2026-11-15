package io.appmetrica.analytics.impl;

import defpackage.e74;
import defpackage.zfb;
import kotlin.jvm.internal.FunctionReferenceImpl;

public final class Hd extends FunctionReferenceImpl implements e74 {
    public Hd(Id id) {
        super(1, id, Id.class, "markCrashCompletedAndDeleteCompletedCrashes", "markCrashCompletedAndDeleteCompletedCrashes(Ljava/lang/String;)V", 0);
    }

    @Override
    public final Object invoke(Object obj) {
        Id id = (Id) this.receiver;
        id.a.markCrashCompleted((String) obj);
        id.a.deleteCompletedCrashes();
        return zfb.a;
    }
}
