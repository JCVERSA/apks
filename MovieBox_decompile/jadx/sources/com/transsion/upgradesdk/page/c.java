package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class c extends Lambda implements Function0 {

    public final f f54533a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(f fVar) {
        super(0);
        this.f54533a = fVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54533a.getArguments();
        return Integer.valueOf(arguments != null ? arguments.getInt("dialogStyle", 0) : 0);
    }
}
