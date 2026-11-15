package com.cloud.tmc.miniapp.utils.toast;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.utils.toast.config.IToastInterceptor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ToastLogInterceptor implements IToastInterceptor {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "ToastLogInterceptor";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override
    public boolean intercept(ToastParams params) {
        Intrinsics.h(params, "params");
        TmcLogger.d(TAG, String.valueOf(params.getText()));
        return false;
    }
}
