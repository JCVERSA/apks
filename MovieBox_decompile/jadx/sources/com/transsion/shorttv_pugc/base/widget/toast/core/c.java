package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

public final class c extends Handler {

    private final Handler f51952a;

    public c(Handler mHandler) {
        Intrinsics.h(mHandler, "mHandler");
        this.f51952a = mHandler;
    }

    @Override
    public void handleMessage(Message msg) {
        Intrinsics.h(msg, "msg");
        try {
            this.f51952a.handleMessage(msg);
        } catch (WindowManager.BadTokenException e10) {
            e10.printStackTrace();
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        }
    }
}
