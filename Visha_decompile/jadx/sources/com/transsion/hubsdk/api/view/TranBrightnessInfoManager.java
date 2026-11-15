package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.aosp.view.TranAospBrightnessInfoService;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubBrightnessInfoService;
import com.transsion.hubsdk.interfaces.view.ITranBrightnessInfoAdapter;

public class TranBrightnessInfoManager {
    private static final String TAG = "TranBrightnessInfoManager";
    private TranAospBrightnessInfoService mAospService;
    private TranThubBrightnessInfoService mThubService;

    public TranBrightnessInfo getBrightnessInfo() {
        return getService(TranVersion.Core.VERSION_33151).getBrightnessInfo();
    }

    public ITranBrightnessInfoAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubBrightnessInfoService tranThubBrightnessInfoService = this.mThubService;
            if (tranThubBrightnessInfoService != null) {
                return tranThubBrightnessInfoService;
            }
            TranThubBrightnessInfoService tranThubBrightnessInfoService2 = new TranThubBrightnessInfoService();
            this.mThubService = tranThubBrightnessInfoService2;
            return tranThubBrightnessInfoService2;
        }
        TranAospBrightnessInfoService tranAospBrightnessInfoService = this.mAospService;
        if (tranAospBrightnessInfoService != null) {
            return tranAospBrightnessInfoService;
        }
        TranAospBrightnessInfoService tranAospBrightnessInfoService2 = new TranAospBrightnessInfoService();
        this.mAospService = tranAospBrightnessInfoService2;
        return tranAospBrightnessInfoService2;
    }
}
