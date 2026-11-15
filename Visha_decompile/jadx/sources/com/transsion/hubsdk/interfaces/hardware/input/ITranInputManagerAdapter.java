package com.transsion.hubsdk.interfaces.hardware.input;

import android.graphics.Region;
import android.os.Bundle;
import android.os.IBinder;
import android.view.InputEvent;
import android.view.KeyEvent;
import com.transsion.hubsdk.api.view.ITranGestureCallback;
import com.transsion.hubsdk.api.view.ITranInputEventCallback;
import com.transsion.hubsdk.api.view.ITranInputMonitor;
import com.transsion.hubsdk.api.view.ITranTouchEventHandler;
import com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener;

public interface ITranInputManagerAdapter {
    boolean ignoreMultiWindowGesture();

    boolean injectInputEvent(InputEvent inputEvent, int i);

    ITranInputMonitor monitorGestureInput(String str, int i, ITranTouchEventHandler iTranTouchEventHandler);

    void registerInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i);

    void registerStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener);

    void registerTranGestureMonitor(ITranGestureCallback iTranGestureCallback, Bundle bundle);

    void setBackGestureMode(boolean z);

    void setBackGestureResult(IBinder iBinder, boolean z);

    void setTouchRegion(ITranGestureCallback iTranGestureCallback, Region region);

    void singleKeyPanicBehaviorCheck(KeyEvent keyEvent);

    void tranPilferPointers(ITranGestureCallback iTranGestureCallback);

    void tranPilferPointersAwhile(ITranGestureCallback iTranGestureCallback, boolean z);

    void unregisterInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i);

    void unregisterStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener);

    void unregisterTranGestureMonitor(ITranGestureCallback iTranGestureCallback);

    void updateBackGestureRegion(IBinder iBinder, Region region);
}
