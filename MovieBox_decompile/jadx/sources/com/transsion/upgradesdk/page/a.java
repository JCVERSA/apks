package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class a extends Lambda implements Function0 {

    public final f f54531a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        super(0);
        this.f54531a = fVar;
    }

    @Override
    public final Object invoke() {
        Bundle arguments = this.f54531a.getArguments();
        if (arguments != null) {
            int i10 = arguments.getInt("cancelButtonTextColor", 0);
            Integer numValueOf = Integer.valueOf(i10);
            if (i10 != 0) {
                return numValueOf;
            }
        }
        return null;
    }
}
