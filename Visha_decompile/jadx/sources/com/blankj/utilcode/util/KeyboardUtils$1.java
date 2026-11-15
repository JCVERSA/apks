package com.blankj.utilcode.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import defpackage.bg5;

class KeyboardUtils$1 extends ResultReceiver {
    public KeyboardUtils$1(Handler handler) {
        super(handler);
    }

    @Override
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 1 || i == 3) {
            bg5.h();
        }
    }
}
