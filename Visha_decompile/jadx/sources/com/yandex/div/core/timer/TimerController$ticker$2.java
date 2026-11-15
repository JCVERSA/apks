package com.yandex.div.core.timer;

import defpackage.e74;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class TimerController$ticker$2 extends FunctionReferenceImpl implements e74 {
    public TimerController$ticker$2(Object obj) {
        super(1, obj, TimerController.class, "updateTimerVariable", "updateTimerVariable(J)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke(((Number) obj).longValue());
        return zfb.a;
    }

    public final void invoke(long j) {
        ((TimerController) this.receiver).n(j);
    }
}
