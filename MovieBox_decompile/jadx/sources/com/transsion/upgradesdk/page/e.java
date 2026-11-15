package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class e extends Lambda implements Function0 {

    public final f f54535a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar) {
        super(0);
        this.f54535a = fVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54535a.getArguments();
        return Boolean.valueOf(arguments != null ? arguments.getBoolean("isManualClick") : false);
    }
}
