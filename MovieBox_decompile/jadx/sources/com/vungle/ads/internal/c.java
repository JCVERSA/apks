package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.y;
import kotlin.jvm.internal.Intrinsics;

public abstract class c extends AdInternal {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public y getAdSizeForAdRequest() {
        return null;
    }

    @Override
    public boolean isValidAdSize(y yVar) {
        return true;
    }
}
