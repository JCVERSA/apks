package com.transsion.hubsdk.api.widget;

import android.content.Context;
import android.view.View;
import com.transsion.hubsdk.aosp.widget.TranAospToastPresenter;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.widget.TranThubToastPresenter;
import com.transsion.hubsdk.interfaces.widget.ITranToastPresenterAdapter;

public class TranToastPresenter {
    private static final String TAG = "TranToastPresenter";
    private TranAospToastPresenter mAospService;
    private TranThubToastPresenter mThubService;

    public ITranToastPresenterAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubToastPresenter");
            TranThubToastPresenter tranThubToastPresenter = this.mThubService;
            if (tranThubToastPresenter != null) {
                return tranThubToastPresenter;
            }
            TranThubToastPresenter tranThubToastPresenter2 = new TranThubToastPresenter();
            this.mThubService = tranThubToastPresenter2;
            return tranThubToastPresenter2;
        }
        TranSdkLog.i(TAG, "TranAospToastPresenter");
        TranAospToastPresenter tranAospToastPresenter = this.mAospService;
        if (tranAospToastPresenter != null) {
            return tranAospToastPresenter;
        }
        TranAospToastPresenter tranAospToastPresenter2 = new TranAospToastPresenter();
        this.mAospService = tranAospToastPresenter2;
        return tranAospToastPresenter2;
    }

    public View getTextToastView(Context context, CharSequence charSequence) {
        return getService(TranVersion.Core.VERSION_33181).getTextToastView(context, charSequence);
    }
}
