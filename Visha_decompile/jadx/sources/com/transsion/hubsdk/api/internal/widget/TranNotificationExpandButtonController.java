package com.transsion.hubsdk.api.internal.widget;

import com.transsion.hubsdk.aosp.internal.widget.TranAospNotificationExpandButton;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.widget.TranThubNotificationExpandButton;
import com.transsion.hubsdk.interfaces.internal.widget.ITranNotificationExpandButtonAdapter;

public class TranNotificationExpandButtonController {
    private static final String TAG = "TranNotificationExpandButtonController";
    private TranAospNotificationExpandButton mAospService;
    private TranThubNotificationExpandButton mThubService;

    public ITranNotificationExpandButtonAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubNotificationExpandButton");
            TranThubNotificationExpandButton tranThubNotificationExpandButton = this.mThubService;
            if (tranThubNotificationExpandButton != null) {
                return tranThubNotificationExpandButton;
            }
            TranThubNotificationExpandButton tranThubNotificationExpandButton2 = new TranThubNotificationExpandButton();
            this.mThubService = tranThubNotificationExpandButton2;
            return tranThubNotificationExpandButton2;
        }
        TranSdkLog.i(TAG, "TranAospNotificationExpandButton");
        TranAospNotificationExpandButton tranAospNotificationExpandButton = this.mAospService;
        if (tranAospNotificationExpandButton != null) {
            return tranAospNotificationExpandButton;
        }
        TranAospNotificationExpandButton tranAospNotificationExpandButton2 = new TranAospNotificationExpandButton();
        this.mAospService = tranAospNotificationExpandButton2;
        return tranAospNotificationExpandButton2;
    }

    public void setExpandedVisibility(Object obj, boolean z) {
        if (obj == null) {
            throw new IllegalArgumentException("button is null");
        }
        getService(TranVersion.Core.VERSION_33311).setExpandedVisibility(obj, z);
    }
}
