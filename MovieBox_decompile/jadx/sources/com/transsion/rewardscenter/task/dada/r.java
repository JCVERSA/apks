package com.transsion.rewardscenter.task.dada;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class r {

    private DadaTaskState f49187a;

    /* JADX WARN: Multi-variable type inference failed */
    public r() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final DadaTaskState a() {
        return this.f49187a;
    }

    public final void b(DadaTaskState dadaTaskState) {
        Intrinsics.h(dadaTaskState, "<set-?>");
        this.f49187a = dadaTaskState;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && this.f49187a == ((r) obj).f49187a;
    }

    public int hashCode() {
        return this.f49187a.hashCode();
    }

    public String toString() {
        return "DadaTaskItem(taskState=" + this.f49187a + ")";
    }

    public r(DadaTaskState taskState) {
        Intrinsics.h(taskState, "taskState");
        this.f49187a = taskState;
    }

    public r(DadaTaskState dadaTaskState, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? DadaTaskState.NORMAL : dadaTaskState);
    }
}
