package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.aosp.view.TranAospScrollCaptureResponse;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubScrollCaptureResponse;
import com.transsion.hubsdk.interfaces.view.ITranScrollCaptureResponseAdapter;

public class TranScrollCaptureResponse {
    private static final String TAG = "TranScrollCaptureResponse";
    private TranAospScrollCaptureResponse mAospService;
    private TranThubScrollCaptureResponse mThubService;

    public Object getConnection(Object obj) {
        return getService(TranVersion.Core.VERSION_33171).getConnection(obj);
    }

    public ITranScrollCaptureResponseAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubScrollCaptureResponse");
            TranThubScrollCaptureResponse tranThubScrollCaptureResponse = this.mThubService;
            if (tranThubScrollCaptureResponse != null) {
                return tranThubScrollCaptureResponse;
            }
            TranThubScrollCaptureResponse tranThubScrollCaptureResponse2 = new TranThubScrollCaptureResponse();
            this.mThubService = tranThubScrollCaptureResponse2;
            return tranThubScrollCaptureResponse2;
        }
        TranSdkLog.i(TAG, "TranAospPhysical");
        TranAospScrollCaptureResponse tranAospScrollCaptureResponse = this.mAospService;
        if (tranAospScrollCaptureResponse != null) {
            return tranAospScrollCaptureResponse;
        }
        TranAospScrollCaptureResponse tranAospScrollCaptureResponse2 = new TranAospScrollCaptureResponse();
        this.mAospService = tranAospScrollCaptureResponse2;
        return tranAospScrollCaptureResponse2;
    }
}
