package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class i extends Lambda implements Function0 {

    public final su.i f54551a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(su.i iVar) {
        super(0);
        this.f54551a = iVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54551a.getArguments();
        return Integer.valueOf(arguments != null ? arguments.getInt("dialogStyle", 0) : 0);
    }
}
