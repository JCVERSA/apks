package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class h extends Lambda implements Function0 {

    public final su.i f54550a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(su.i iVar) {
        super(0);
        this.f54550a = iVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54550a.getArguments();
        if (arguments != null) {
            int i10 = arguments.getInt("confirmButtonTextColor", 0);
            Integer numValueOf = Integer.valueOf(i10);
            if (i10 != 0) {
                return numValueOf;
            }
        }
        return null;
    }
}
