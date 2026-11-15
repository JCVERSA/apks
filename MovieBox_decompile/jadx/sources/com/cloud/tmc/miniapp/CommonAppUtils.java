package com.cloud.tmc.miniapp;

import android.content.Context;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.intf.ICommonApp;

public final class CommonAppUtils implements ICommonApp {
    public static final CommonAppUtils INSTANCE = new CommonAppUtils();

    private CommonAppUtils() {
    }

    @Override
    public boolean getDefaultAutoAgreePrivacy() {
        return true;
    }

    @Override
    public int getDefaultMultiTaskCount() {
        return 0;
    }

    @Override
    public String getStartFromChannel() {
        return "mb";
    }

    @Override
    public boolean isTargetApp(Context context) {
        return AppUtils.INSTANCE.isMovieBox(context);
    }
}
