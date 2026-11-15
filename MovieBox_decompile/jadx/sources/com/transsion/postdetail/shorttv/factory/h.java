package com.transsion.postdetail.shorttv.factory;

import android.content.Context;
import android.content.Intent;
import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.jvm.internal.Intrinsics;

public final class h implements ur.i {
    private final qx.a c() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    @Override
    public boolean a() {
        qx.a aVarC = c();
        return aVarC != null && aVarC.a();
    }

    @Override
    public Intent b(Context context) {
        Intrinsics.h(context, "context");
        qx.a aVarC = c();
        if (aVarC != null) {
            return aVarC.p(context);
        }
        return null;
    }

    @Override
    public String getUserId() {
        UserInfo userInfoI;
        qx.a aVarC = c();
        if (aVarC == null || (userInfoI = aVarC.i()) == null) {
            return null;
        }
        return userInfoI.getUserId();
    }
}
