package com.transsion.postdetail.shorttv.factory;

import android.content.Context;
import android.view.View;
import com.tn.lib.view.NoNetworkBigView;
import kotlin.jvm.internal.Intrinsics;

public final class n implements ur.l {
    @Override
    public View a(Context context) {
        Intrinsics.h(context, "context");
        return new NoNetworkBigView(context);
    }
}
