package com.transsion.hubsdk.api.hardware.input;

import android.graphics.Region;
import android.os.Bundle;
import android.os.IBinder;
import android.view.InputEvent;
import android.view.KeyEvent;
import com.transsion.hubsdk.aosp.hardware.input.TranAospInputManager;
import com.transsion.hubsdk.api.view.ITranGestureCallback;
import com.transsion.hubsdk.api.view.ITranInputEventCallback;
import com.transsion.hubsdk.api.view.ITranInputMonitor;
import com.transsion.hubsdk.api.view.ITranTouchEventHandler;
import com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.input.TranThubInputManager;
import com.transsion.hubsdk.interfaces.hardware.input.ITranInputManagerAdapter;

public class TranInputManager {
    private TranAospInputManager mAospService;
    private TranThubInputManager mThubService;

    public ITranInputManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubInputManager tranThubInputManager = this.mThubService;
            if (tranThubInputManager != null) {
                return tranThubInputManager;
            }
            TranThubInputManager tranThubInputManager2 = new TranThubInputManager();
            this.mThubService = tranThubInputManager2;
            return tranThubInputManager2;
        }
        TranAospInputManager tranAospInputManager = this.mAospService;
        if (tranAospInputManager != null) {
            return tranAospInputManager;
        }
        TranAospInputManager tranAospInputManager2 = new TranAospInputManager();
        this.mAospService = tranAospInputManager2;
        return tranAospInputManager2;
    }

    public boolean ignoreMultiWindowGesture() {
        return getService(TranVersion.Core.VERSION_33441).ignoreMultiWindowGesture();
    }

    public boolean injectInputEvent(InputEvent inputEvent, int i) {
        return getService(TranVersion.Core.VERSION_33181).injectInputEvent(inputEvent, i);
    }

    public ITranInputMonitor monitorGestureInput(String str, int i, ITranTouchEventHandler iTranTouchEventHandler) {
        return getService(TranVersion.Core.VERSION_33121).monitorGestureInput(str, i, iTranTouchEventHandler);
    }

    public void registerInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i) {
        if (iTranInputEventCallback == null) {
            throw new NullPointerException("registerInputEventListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).registerInputEventListener(iTranInputEventCallback, i);
    }

    public void registerStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener) {
        if (iTranStylusKeyListener == null) {
            throw new NullPointerException("registerStylusKeyListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33231).registerStylusKeyListener(iTranStylusKeyListener);
    }

    public void registerTranGestureMonitor(ITranGestureCallback iTranGestureCallback, Bundle bundle) {
        if (iTranGestureCallback == null || bundle == null) {
            throw new NullPointerException("registerTranGestureMonitor() parameters must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).registerTranGestureMonitor(iTranGestureCallback, bundle);
    }

    public void setBackGestureMode(boolean z) {
        getService(TranVersion.Core.VERSION_33361).setBackGestureMode(z);
    }

    public void setBackGestureResult(IBinder iBinder, boolean z) {
        if (iBinder == null) {
            throw new NullPointerException("parameter inputChannelToken must not be null");
        }
        getService(TranVersion.Core.VERSION_33361).setBackGestureResult(iBinder, z);
    }

    public void setTouchRegion(ITranGestureCallback iTranGestureCallback, Region region) {
        if (iTranGestureCallback == null || region == null) {
            throw new NullPointerException("setTouchRegion() parameters must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).setTouchRegion(iTranGestureCallback, region);
    }

    public void singleKeyPanicBehaviorCheck(KeyEvent keyEvent) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33441).singleKeyPanicBehaviorCheck(keyEvent);
        }
    }

    public void tranPilferPointers(ITranGestureCallback iTranGestureCallback) {
        if (iTranGestureCallback == null) {
            throw new NullPointerException("tranPilferPointers() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).tranPilferPointers(iTranGestureCallback);
    }

    public void tranPilferPointersAwhile(ITranGestureCallback iTranGestureCallback, boolean z) {
        if (iTranGestureCallback == null) {
            throw new NullPointerException("tranPilferPointersAwhile() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).tranPilferPointersAwhile(iTranGestureCallback, z);
    }

    public void unregisterInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i) {
        if (iTranInputEventCallback == null) {
            throw new NullPointerException("unregisterInputEventListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).unregisterInputEventListener(iTranInputEventCallback, i);
    }

    public void unregisterStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener) {
        if (iTranStylusKeyListener == null) {
            throw new NullPointerException("unregisterStylusKeyListener() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33231).unregisterStylusKeyListener(iTranStylusKeyListener);
    }

    public void unregisterTranGestureMonitor(ITranGestureCallback iTranGestureCallback) {
        if (iTranGestureCallback == null) {
            throw new NullPointerException("unregisterTranGestureMonitor() parameter listener must not be null");
        }
        getService(TranVersion.Core.VERSION_33461).unregisterTranGestureMonitor(iTranGestureCallback);
    }

    public void updateBackGestureRegion(IBinder iBinder, Region region) {
        if (iBinder == null || region == null) {
            throw new NullPointerException("parameters must not be null");
        }
        getService(TranVersion.Core.VERSION_33361).updateBackGestureRegion(iBinder, region);
    }
}
