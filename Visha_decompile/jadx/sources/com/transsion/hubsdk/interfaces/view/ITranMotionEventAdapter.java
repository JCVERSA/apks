package com.transsion.hubsdk.interfaces.view;

import android.view.InputEvent;
import android.view.MotionEvent;

public interface ITranMotionEventAdapter {
    MotionEvent obtain(long j, long j2, int i, int i2, MotionEvent.PointerProperties[] pointerPropertiesArr, MotionEvent.PointerCoords[] pointerCoordsArr, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8, int i9);

    void setTouchFromConnect(InputEvent inputEvent, boolean z);
}
