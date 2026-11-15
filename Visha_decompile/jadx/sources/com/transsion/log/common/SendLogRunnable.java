package com.transsion.log.common;

import android.text.TextUtils;
import defpackage.yb9;
import java.io.File;

public abstract class SendLogRunnable implements Runnable {
    public static final int FINISH = 10002;
    public static final int SENDING = 10001;
    private a mCallBackListener;
    protected yb9 mSendAction;

    public interface a {
        void a(int i);
    }

    public void finish() {
        a aVar = this.mCallBackListener;
        if (aVar != null) {
            aVar.a(10002);
        }
    }

    @Override
    public void run() {
        yb9 yb9Var = this.mSendAction;
        if (yb9Var == null || TextUtils.isEmpty(yb9Var.b)) {
            finish();
        } else if (TextUtils.isEmpty(this.mSendAction.c)) {
            finish();
        } else {
            sendLog(new File(this.mSendAction.c));
        }
    }

    public abstract void sendLog(File file);

    public void setCallBackListener(a aVar) {
        this.mCallBackListener = aVar;
    }

    public void setSendAction(yb9 yb9Var) {
        this.mSendAction = yb9Var;
    }
}
