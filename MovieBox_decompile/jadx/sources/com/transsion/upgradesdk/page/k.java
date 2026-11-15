package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class k extends Lambda implements Function0 {

    public final su.i f54553a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(su.i iVar) {
        super(0);
        this.f54553a = iVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54553a.getArguments();
        return Boolean.valueOf(arguments != null ? arguments.getBoolean("isManualClick") : false);
    }
}
