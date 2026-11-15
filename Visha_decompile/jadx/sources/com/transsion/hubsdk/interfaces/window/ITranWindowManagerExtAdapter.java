package com.transsion.hubsdk.interfaces.window;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.Surface;
import com.transsion.hubsdk.aosp.view.TranScrollCaptureResponseExt;
import com.transsion.hubsdk.aosp.window.TranAospWindowManagerExt;
import com.transsion.hubsdk.api.window.TranScreenshotHardwareBuffer;
import com.transsion.hubsdk.api.window.TranWindowManagerExt;
import java.util.List;

public interface ITranWindowManagerExtAdapter {
    void dismissKeyguard(TranWindowManagerExt.TranKeyguardDismissCallback tranKeyguardDismissCallback, CharSequence charSequence);

    void endCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt);

    TranScreenshotHardwareBuffer getBuffer(int i, Rect rect);

    int getDockedStackSide();

    int getInitialDisplayDensity(int i);

    List<ComponentName> notifyScreenshotListeners(int i);

    void registerDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener);

    void registerSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i);

    void requestImage(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Rect rect);

    void requestScrollCapture(Context context, int i, IBinder iBinder, int i2, TranAospWindowManagerExt.ITranScrollCaptureResponseListener iTranScrollCaptureResponseListener);

    void startCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Surface surface, TranWindowManagerExt.ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks);

    void unregisterDisplayFoldListener(TranWindowManagerExt.TranDisplayFoldListener tranDisplayFoldListener);

    void unregisterSystemGestureExclusionListener(TranWindowManagerExt.TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i);
}
