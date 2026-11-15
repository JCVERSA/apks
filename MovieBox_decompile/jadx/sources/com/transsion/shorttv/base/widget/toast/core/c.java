package com.transsion.shorttv.base.widget.toast.core;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

public final class c extends Handler {

    private final Handler f50972a;

    public c(Handler mHandler) {
        Intrinsics.h(mHandler, "mHandler");
        this.f50972a = mHandler;
    }

    @Override
    public void handleMessage(Message msg) {
        Intrinsics.h(msg, "msg");
        try {
            this.f50972a.handleMessage(msg);
        } catch (WindowManager.BadTokenException e10) {
            e10.printStackTrace();
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        }
    }
}
