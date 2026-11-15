package com.cloud.tmc.miniapp.utils.toast;

import android.app.Application;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.transsion.push.PushConstants;
import kotlin.jvm.internal.Intrinsics;

public final class ApplicationToast extends CustomToast {
    private final Application application;
    private ToastDialog mToastDialog;

    public ApplicationToast(Application application) {
        Intrinsics.h(application, "application");
        this.application = application;
    }

    @Override
    public void cancel() {
        ToastDialog toastDialog = this.mToastDialog;
        if (toastDialog != null) {
            toastDialog.cancel();
        }
    }

    @Override
    public boolean isShow() {
        ToastDialog toastDialog = this.mToastDialog;
        if (toastDialog != null) {
            return toastDialog.isShow();
        }
        return false;
    }

    @Override
    public void show() {
        try {
            ToastDialog toastDialog = this.mToastDialog;
            if (toastDialog == null) {
                toastDialog = new ToastDialog(this.application, (CustomToast) this);
                this.mToastDialog = toastDialog;
            }
            toastDialog.show();
        } catch (Throwable th2) {
            TmcLogger.e("ApplicationToast", PushConstants.PUSH_SERVICE_TYPE_SHOW, th2);
        }
    }
}
