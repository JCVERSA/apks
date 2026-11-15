package com.transsion.hubsdk.api.view;

import android.view.Display;
import com.transsion.hubsdk.aosp.view.TranAospDisplayAddress;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubDisplayAddress;
import com.transsion.hubsdk.interfaces.view.ITranDisplayAddressAdapter;

public class TranDisplayAddress {
    private static final String TAG = "TranDisplayAddress";
    private TranAospDisplayAddress mAospService;
    private TranThubDisplayAddress mThubService;

    public long getPhysicalDisplayId(Display display) {
        if (display != null) {
            return getService(TranVersion.Core.VERSION_33311).getPhysicalDisplayId(display);
        }
        throw new IllegalArgumentException("display is null");
    }

    public ITranDisplayAddressAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubDisplayAddress");
            TranThubDisplayAddress tranThubDisplayAddress = this.mThubService;
            if (tranThubDisplayAddress != null) {
                return tranThubDisplayAddress;
            }
            TranThubDisplayAddress tranThubDisplayAddress2 = new TranThubDisplayAddress();
            this.mThubService = tranThubDisplayAddress2;
            return tranThubDisplayAddress2;
        }
        TranSdkLog.i(TAG, "TranAospDisplayAddress");
        TranAospDisplayAddress tranAospDisplayAddress = this.mAospService;
        if (tranAospDisplayAddress != null) {
            return tranAospDisplayAddress;
        }
        TranAospDisplayAddress tranAospDisplayAddress2 = new TranAospDisplayAddress();
        this.mAospService = tranAospDisplayAddress2;
        return tranAospDisplayAddress2;
    }
}
