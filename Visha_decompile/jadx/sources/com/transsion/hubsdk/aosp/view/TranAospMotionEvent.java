package com.transsion.hubsdk.aosp.view;

import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranMotionEventAdapter;

public class TranAospMotionEvent implements ITranMotionEventAdapter {
    private static final String TAG = "TranAospMotionEvent";
    private Context mContext = TranHubSdkManager.getContext();

    @Override
    public MotionEvent obtain(long j, long j2, int i, int i2, MotionEvent.PointerProperties[] pointerPropertiesArr, MotionEvent.PointerCoords[] pointerCoordsArr, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8, int i9) {
        Class cls = Long.TYPE;
        Class cls2 = Integer.TYPE;
        Class cls3 = Float.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(MotionEvent.class, "obtain", cls, cls, cls2, cls2, MotionEvent.PointerProperties[].class, MotionEvent.PointerCoords[].class, cls2, cls2, cls3, cls3, cls2, cls2, cls2, cls2, cls2), MotionEvent.class, Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i), Integer.valueOf(i2), pointerPropertiesArr, pointerCoordsArr, Integer.valueOf(i3), Integer.valueOf(i4), Float.valueOf(f), Float.valueOf(f2), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9));
        if (objInvokeMethod instanceof MotionEvent) {
            return (MotionEvent) objInvokeMethod;
        }
        return null;
    }

    @Override
    public void setTouchFromConnect(InputEvent inputEvent, boolean z) {
        try {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(MotionEvent.class, "setTouchFromConnect", Boolean.TYPE), inputEvent, Boolean.valueOf(z));
        } catch (Exception e) {
            throw new AssertionError(e);
        }
    }
}
