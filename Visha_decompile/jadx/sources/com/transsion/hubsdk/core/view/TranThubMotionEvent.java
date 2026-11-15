package com.transsion.hubsdk.core.view;

import android.view.InputEvent;
import android.view.MotionEvent;
import com.transsion.hubsdk.hardware.input.TranMotionEvent;
import com.transsion.hubsdk.interfaces.view.ITranMotionEventAdapter;

public class TranThubMotionEvent implements ITranMotionEventAdapter {
    private static final String TAG = "TranThubMotionEvent";
    private TranMotionEvent mTranMotionEvent;

    private TranMotionEvent getTranInputManager() {
        if (this.mTranMotionEvent == null) {
            this.mTranMotionEvent = new TranMotionEvent();
        }
        return this.mTranMotionEvent;
    }

    @Override
    public MotionEvent obtain(long j, long j2, int i, int i2, MotionEvent.PointerProperties[] pointerPropertiesArr, MotionEvent.PointerCoords[] pointerCoordsArr, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8, int i9) {
        return TranMotionEvent.obtain(j, j2, i, i2, pointerPropertiesArr, pointerCoordsArr, i3, i4, f, f2, i5, i6, i7, i8, i9);
    }

    @Override
    public void setTouchFromConnect(InputEvent inputEvent, boolean z) {
        getTranInputManager().setTouchFromConnect(inputEvent, z);
    }
}
