package com.transsion.postdetail.shorttv_pugc.factory;

import android.content.Context;
import android.view.View;
import com.tn.lib.view.NoNetworkBigView;
import kotlin.jvm.internal.Intrinsics;

public final class k implements vs.i {
    @Override
    public View a(Context context) {
        Intrinsics.h(context, "context");
        return new NoNetworkBigView(context);
    }
}
