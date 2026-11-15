package com.transsion.hubsdk.api.window;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.IBinder;
import android.view.Surface;
import com.transsion.hubsdk.aosp.view.TranScrollCaptureResponseExt;
import com.transsion.hubsdk.aosp.window.TranAospWindowManagerExt;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.window.TranThubWindowManagerExt;
import com.transsion.hubsdk.interfaces.window.ITranWindowManagerExtAdapter;
import java.util.List;

public class TranWindowManagerExt {
    private static final String TAG = "TranWindowManagerExt";
    private TranAospWindowManagerExt mAospService;
    private TranThubWindowManagerExt mThubService;

    public interface ITranScrollCaptureCallbacks {
        void onCaptureEnded();

        void onCaptureStarted();

        void onImageRequestCompleted(int i, Rect rect);
    }

    public interface TranDisplayFoldListener {
        void onDisplayFoldChanged(int i, boolean z);
    }

    public interface TranKeyguardDismissCallback {
        void onDismissCancelled();

        void onDismissError();

        void onDismissSucceeded();
    }

    public interface TranSystemGestureExclusionListener {
        void onSystemGestureExclusionChanged(int i, Region region, Region region2);
    }

    public void dismissKeyguard(TranKeyguardDismissCallback tranKeyguardDismissCallback, CharSequence charSequence) {
        getService(TranVersion.Core.VERSION_33151).dismissKeyguard(tranKeyguardDismissCallback, charSequence);
    }

    public void endCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt) {
        if (tranScrollCaptureResponseExt == null) {
            throw new IllegalArgumentException("TranScrollCaptureResponseExt is null.");
        }
        getService().endCapture(tranScrollCaptureResponseExt);
    }

    public TranScreenshotHardwareBuffer getBuffer(int i, Rect rect) {
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("displayId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33201).getBuffer(i, rect);
    }

    public int getDockedStackSide() {
        return getService(TranVersion.Core.VERSION_33311).getDockedStackSide();
    }

    public int getInitialDisplayDensity(int i) {
        return getService(TranVersion.Core.VERSION_33281).getInitialDisplayDensity(i);
    }

    public ITranWindowManagerExtAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubWindowManagerExt tranThubWindowManagerExt = this.mThubService;
            if (tranThubWindowManagerExt != null) {
                return tranThubWindowManagerExt;
            }
            TranThubWindowManagerExt tranThubWindowManagerExt2 = new TranThubWindowManagerExt();
            this.mThubService = tranThubWindowManagerExt2;
            return tranThubWindowManagerExt2;
        }
        TranSdkLog.i(TAG, "TranAospWindowManagerExtra");
        TranAospWindowManagerExt tranAospWindowManagerExt = this.mAospService;
        if (tranAospWindowManagerExt != null) {
            return tranAospWindowManagerExt;
        }
        TranAospWindowManagerExt tranAospWindowManagerExt2 = new TranAospWindowManagerExt();
        this.mAospService = tranAospWindowManagerExt2;
        return tranAospWindowManagerExt2;
    }

    public List<ComponentName> notifyScreenshotListeners(int i) {
        if (i <= Integer.MIN_VALUE || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("displayId is wrong");
        }
        return getService(TranVersion.Core.VERSION_33211).notifyScreenshotListeners(i);
    }

    public void registerDisplayFoldListener(TranDisplayFoldListener tranDisplayFoldListener) {
        if (tranDisplayFoldListener == null) {
            throw new NullPointerException("parameter TranDisplayFoldListener is null!!!");
        }
        getService(TranVersion.Core.VERSION_33181).registerDisplayFoldListener(tranDisplayFoldListener);
    }

    public void registerSystemGestureExclusionListener(TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        if (tranSystemGestureExclusionListener == null) {
            throw new NullPointerException("listener cannot be null !!!");
        }
        getService(TranVersion.Core.VERSION_33141).registerSystemGestureExclusionListener(tranSystemGestureExclusionListener, i);
    }

    public void requestImage(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Rect rect) {
        if (tranScrollCaptureResponseExt == null) {
            throw new IllegalArgumentException("TranScrollCaptureResponseExt is null.");
        }
        getService().requestImage(tranScrollCaptureResponseExt, rect);
    }

    public void requestScrollCapture(Context context, int i, IBinder iBinder, int i2, TranAospWindowManagerExt.ITranScrollCaptureResponseListener iTranScrollCaptureResponseListener) {
        getService().requestScrollCapture(context, i, iBinder, i2, iTranScrollCaptureResponseListener);
    }

    public void startCapture(TranScrollCaptureResponseExt tranScrollCaptureResponseExt, Surface surface, ITranScrollCaptureCallbacks iTranScrollCaptureCallbacks) {
        if (tranScrollCaptureResponseExt == null) {
            throw new IllegalArgumentException("TranScrollCaptureResponseExt is null.");
        }
        if (surface == null) {
            throw new IllegalArgumentException("Surface is null.");
        }
        if (iTranScrollCaptureCallbacks == null) {
            throw new IllegalArgumentException("ITranScrollCaptureCallbacks is null.");
        }
        getService().startCapture(tranScrollCaptureResponseExt, surface, iTranScrollCaptureCallbacks);
    }

    public void unregisterDisplayFoldListener(TranDisplayFoldListener tranDisplayFoldListener) {
        if (tranDisplayFoldListener == null) {
            throw new NullPointerException("parameter TranDisplayFoldListener is null!!!");
        }
        getService(TranVersion.Core.VERSION_33181).unregisterDisplayFoldListener(tranDisplayFoldListener);
    }

    public void unregisterSystemGestureExclusionListener(TranSystemGestureExclusionListener tranSystemGestureExclusionListener, int i) {
        if (tranSystemGestureExclusionListener == null) {
            throw new NullPointerException("listener cannot be null !!!");
        }
        getService(TranVersion.Core.VERSION_33141).unregisterSystemGestureExclusionListener(tranSystemGestureExclusionListener, i);
    }

    private ITranWindowManagerExtAdapter getService() {
        TranAospWindowManagerExt tranAospWindowManagerExt = this.mAospService;
        if (tranAospWindowManagerExt != null) {
            return tranAospWindowManagerExt;
        }
        TranAospWindowManagerExt tranAospWindowManagerExt2 = new TranAospWindowManagerExt();
        this.mAospService = tranAospWindowManagerExt2;
        return tranAospWindowManagerExt2;
    }
}
