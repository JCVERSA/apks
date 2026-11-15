package com.transsion.hubsdk.api.hardware.devicestate;

import com.transsion.hubsdk.aosp.hardware.devicestate.TranAospDeviceStateManager;
import com.transsion.hubsdk.aosp.hardware.devicestate.TranAospDeviceStateManagerExt;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.devicestate.TranThubDeviceStateManager;
import com.transsion.hubsdk.interfaces.hardware.devicestate.ITranDeviceStateManagerAdapter;
import java.util.concurrent.Executor;

public class TranDeviceStateManager {
    public static final String CALLBACK_ARGUMENT_EXCEPTION = "callback cannot be empty.";
    public static final String EXECUTOR_ARGUMENT_EXCEPTION = "Executor cannot be empty";
    private static final String TAG = "TranDeviceStateManager";
    private TranAospDeviceStateManager mAospService;
    private ITranDeviceStateCallback mCallback;
    private TranThubDeviceStateManager mThubService;

    @Deprecated
    private final TranAospDeviceStateManagerExt.ITranDeviceStateCallback mTranDeviceStateCallback = new TranAospDeviceStateManagerExt.ITranDeviceStateCallback() {
        @Override
        public void onBaseStateChanged(int i) {
            if (TranDeviceStateManager.this.mCallback != null) {
                TranDeviceStateManager.this.mCallback.onBaseStateChanged(i);
            }
        }

        @Override
        public void onStateChanged(int i) {
            if (TranDeviceStateManager.this.mCallback != null) {
                TranDeviceStateManager.this.mCallback.onStateChanged(i);
            }
        }

        @Override
        public void onSupportedStatesChanged(int[] iArr) {
            if (TranDeviceStateManager.this.mCallback != null) {
                TranDeviceStateManager.this.mCallback.onSupportedStatesChanged(iArr);
            }
        }
    };

    @Deprecated
    public interface ITranDeviceStateCallback {
        void onBaseStateChanged(int i);

        void onStateChanged(int i);

        void onSupportedStatesChanged(int[] iArr);
    }

    public int getCurrentState() {
        return getService(TranVersion.Core.VERSION_33231).getCurrentState();
    }

    public ITranDeviceStateManagerAdapter getService() {
        TranAospDeviceStateManager tranAospDeviceStateManager = this.mAospService;
        if (tranAospDeviceStateManager != null) {
            return tranAospDeviceStateManager;
        }
        TranAospDeviceStateManager tranAospDeviceStateManager2 = new TranAospDeviceStateManager();
        this.mAospService = tranAospDeviceStateManager2;
        return tranAospDeviceStateManager2;
    }

    @Deprecated
    public void registerCallback(Executor executor, ITranDeviceStateCallback iTranDeviceStateCallback) {
        if (executor == null) {
            throw new IllegalArgumentException(EXECUTOR_ARGUMENT_EXCEPTION);
        }
        if (iTranDeviceStateCallback == null) {
            throw new IllegalArgumentException(CALLBACK_ARGUMENT_EXCEPTION);
        }
        this.mCallback = iTranDeviceStateCallback;
        getService().registerCallback(executor, this.mTranDeviceStateCallback);
    }

    @Deprecated
    public void unregisterCallback(ITranDeviceStateCallback iTranDeviceStateCallback) {
        if (iTranDeviceStateCallback == null) {
            throw new IllegalArgumentException(CALLBACK_ARGUMENT_EXCEPTION);
        }
        getService().unregisterCallback(this.mTranDeviceStateCallback);
    }

    public ITranDeviceStateManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubDeviceStateManager tranThubDeviceStateManager = this.mThubService;
            if (tranThubDeviceStateManager != null) {
                return tranThubDeviceStateManager;
            }
            TranThubDeviceStateManager tranThubDeviceStateManager2 = new TranThubDeviceStateManager();
            this.mThubService = tranThubDeviceStateManager2;
            return tranThubDeviceStateManager2;
        }
        TranAospDeviceStateManager tranAospDeviceStateManager = this.mAospService;
        if (tranAospDeviceStateManager != null) {
            return tranAospDeviceStateManager;
        }
        TranAospDeviceStateManager tranAospDeviceStateManager2 = new TranAospDeviceStateManager();
        this.mAospService = tranAospDeviceStateManager2;
        return tranAospDeviceStateManager2;
    }
}
