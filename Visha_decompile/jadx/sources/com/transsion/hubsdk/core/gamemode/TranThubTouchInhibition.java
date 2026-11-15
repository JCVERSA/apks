package com.transsion.hubsdk.core.gamemode;

import android.content.Context;
import android.graphics.Rect;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.gamemode.TranTouchInhibition;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInhibitionAdapter;

public class TranThubTouchInhibition implements ITranTouchInhibitionAdapter {
    private static final String TAG = "TranThubTouchInhibition";
    private final Context mContext;

    public TranThubTouchInhibition(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public boolean acquire() {
        TranSdkLog.d(TAG, "acquire");
        Context context = this.mContext;
        if (context != null) {
            return TranTouchInhibition.acquire(context);
        }
        TranSdkLog.e(TAG, "acquire mContext is null");
        return false;
    }

    @Override
    public void clear() {
        TranSdkLog.d(TAG, "clear");
        TranTouchInhibition.clear();
    }

    @Override
    public void inhibit(Rect rect, int i) {
        TranSdkLog.d(TAG, "inhibit level=" + i);
        TranTouchInhibition.inhibit(rect, i);
    }

    @Override
    public void release() {
        TranSdkLog.d(TAG, "release");
        TranTouchInhibition.release();
    }

    @Override
    public void submit() {
        TranSdkLog.d(TAG, "submit");
        TranTouchInhibition.submit();
    }

    @Override
    public void inhibit(Rect rect, int i, int i2) {
        TranSdkLog.d(TAG, "inhibit level=" + i + " type=" + i2);
        TranTouchInhibition.inhibit(rect, i, i2);
    }
}
