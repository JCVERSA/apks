package com.cloud.tmc.miniapp;

import com.cloud.tmc.miniapp.base.BaseActivity;
import kotlin.jvm.internal.Intrinsics;

public final class FwDevDownloadUtils {
    public static final FwDevDownloadUtils INSTANCE = new FwDevDownloadUtils();

    private FwDevDownloadUtils() {
    }

    public final void init(BaseActivity activity) {
        Intrinsics.h(activity, "activity");
    }

    public final void showApiMode(BaseActivity activity) {
        Intrinsics.h(activity, "activity");
    }
}
