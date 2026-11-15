package com.transsion.hubsdk.core.os;

import android.os.Bundle;
import com.transsion.hubsdk.api.os.TranVibratorManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.os.ITranVibratorManagerAdapter;
import com.transsion.hubsdk.os.ITranMediaCallback;
import com.transsion.hubsdk.os.TranVibrator;

public class TranThubVibratorManager implements ITranVibratorManagerAdapter {
    private static final String TAG = "TranThubVibratorManager";
    private TranVibrator mTranVibrator = new TranVibrator();

    public class MediaCallback implements ITranMediaCallback {
        private TranVibratorManager.IMediaCallback mCallback;

        public MediaCallback(TranVibratorManager.IMediaCallback iMediaCallback) {
            this.mCallback = iMediaCallback;
        }

        public int getCurrentPosition() {
            if (TranThubVibratorManager.this.mTranVibrator != null) {
                return this.mCallback.getCurrentPosition();
            }
            return -1;
        }
    }

    @Override
    public void stop() {
        TranSdkLog.d(TAG, "stop vibrate");
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.stop();
        }
    }

    @Override
    public void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback) {
        MediaCallback mediaCallback = iMediaCallback != null ? new MediaCallback(iMediaCallback) : null;
        TranSdkLog.d(TAG, "vibrate by file and callback: " + str);
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.vibrate(str, mediaCallback);
        }
    }

    @Override
    public void vibrate(String str) {
        TranSdkLog.d(TAG, "vibrate by file: " + str);
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.vibrate(str);
        }
    }

    @Override
    public void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback, Bundle bundle) {
        MediaCallback mediaCallback = iMediaCallback != null ? new MediaCallback(iMediaCallback) : null;
        TranSdkLog.d(TAG, "vibrate by file and callback: " + str);
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.vibrate(str, mediaCallback, bundle);
        }
    }

    @Override
    public void vibrate(String str, Bundle bundle) {
        TranSdkLog.d(TAG, "vibrate by file: " + str);
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.vibrate(str, bundle);
        }
    }

    @Override
    public void vibrate(int i) {
        TranSdkLog.d(TAG, "vibrate by type: " + i);
        TranVibrator tranVibrator = this.mTranVibrator;
        if (tranVibrator != null) {
            tranVibrator.vibrate(i);
        }
    }
}
