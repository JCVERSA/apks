package com.transsion.rewardscenter.task.dada;

import com.tencent.mmkv.MMKV;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class q {

    public static final q f49184a = new q();

    private static final Lazy f49185b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return q.d();
        }
    });

    public static final int f49186c = 8;

    private q() {
    }

    private final MMKV b() {
        return (MMKV) f49185b.getValue();
    }

    public static final MMKV d() {
        return MMKV.I("DadaCache");
    }

    public final DadaTaskState c(List list) {
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            int i10 = b().getInt("task_state_" + str, -1);
            if (i10 != -1) {
                return DadaTaskState.getEntries().get(i10);
            }
        }
        return null;
    }

    public final void e(String str, DadaTaskState taskState) {
        Intrinsics.h(taskState, "taskState");
        if (str == null) {
            return;
        }
        b().putInt("task_state_" + str, taskState.ordinal());
    }
}
