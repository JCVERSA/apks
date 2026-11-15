package com.transsion.hubsdk.api.view.inputmethod;

import android.view.MotionEvent;

public interface ITranGlobalWritingListener {
    void onHandwritingStart();

    void onStylusHandwritingMotionEvent(MotionEvent motionEvent, boolean z);
}
