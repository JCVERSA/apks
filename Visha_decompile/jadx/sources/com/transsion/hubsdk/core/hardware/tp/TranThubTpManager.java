package com.transsion.hubsdk.core.hardware.tp;

import android.os.RemoteException;
import android.util.ArrayMap;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.hardware.tp.TranTpManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.hardware.tp.ITranTpCallback;
import com.transsion.hubsdk.hardware.tp.ITranTpManager;
import com.transsion.hubsdk.interfaces.hardware.tp.ITranTpManagerAdapter;

public class TranThubTpManager implements ITranTpManagerAdapter {
    private static final String TAG = "TranThubTpManager";
    private final ArrayMap<TranTpManager.TranTpCallback, TranThubTpCallback> mCallbackMap = new ArrayMap<>();
    private ITranTpManager mService = ITranTpManager.Stub.asInterface(TranServiceManager.getServiceIBinder("trantp"));

    public class TranThubTpCallback extends ITranTpCallback.Stub {
        private TranTpManager.TranTpCallback mCallback;

        public TranThubTpCallback(TranTpManager.TranTpCallback tranTpCallback) {
            this.mCallback = tranTpCallback;
        }

        public void onEvent(int i, String str) throws RemoteException {
            TranTpManager.TranTpCallback tranTpCallback = this.mCallback;
            if (tranTpCallback != null) {
                tranTpCallback.onEvent(i, str);
            }
        }
    }

    @Override
    public String getValue(int i) {
        try {
            ITranTpManager iTranTpManager = this.mService;
            if (iTranTpManager != null) {
                return iTranTpManager.getValue(i);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getValue exception: " + e);
            return null;
        }
    }

    @Override
    public void registerCallback(int i, TranTpManager.TranTpCallback tranTpCallback) {
        TranThubTpCallback tranThubTpCallback = new TranThubTpCallback(tranTpCallback);
        this.mCallbackMap.put(tranTpCallback, tranThubTpCallback);
        try {
            ITranTpManager iTranTpManager = this.mService;
            if (iTranTpManager != null) {
                iTranTpManager.registerCallback(i, tranThubTpCallback);
            }
            TranSdkLog.i(TAG, "registerCallback success");
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerCallback exception: " + e);
        }
    }

    @Override
    public boolean setValue(int i, String str) {
        try {
            ITranTpManager iTranTpManager = this.mService;
            if (iTranTpManager != null) {
                return iTranTpManager.setValue(i, str);
            }
            return false;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setValue exception: " + e);
            return false;
        }
    }

    @Override
    public void unregisterCallback(TranTpManager.TranTpCallback tranTpCallback) {
        TranThubTpCallback tranThubTpCallback = this.mCallbackMap.get(tranTpCallback);
        try {
            try {
                ITranTpManager iTranTpManager = this.mService;
                if (iTranTpManager != null && tranThubTpCallback != null) {
                    iTranTpManager.unregisterCallback(tranThubTpCallback);
                }
                TranSdkLog.i(TAG, "unregisterCallback success");
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "unregisterCallback exception: " + e);
            }
        } finally {
            this.mCallbackMap.remove(tranTpCallback);
        }
    }
}
