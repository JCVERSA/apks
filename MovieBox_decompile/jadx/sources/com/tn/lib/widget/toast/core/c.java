package com.tn.lib.widget.toast.core;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

public final class c extends Handler {

    private final Handler f40475a;

    public c(Handler mHandler) {
        Intrinsics.h(mHandler, "mHandler");
        this.f40475a = mHandler;
    }

    @Override
    public void handleMessage(Message msg) {
        Intrinsics.h(msg, "msg");
        try {
            this.f40475a.handleMessage(msg);
        } catch (WindowManager.BadTokenException e10) {
            e10.printStackTrace();
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        }
    }
}
