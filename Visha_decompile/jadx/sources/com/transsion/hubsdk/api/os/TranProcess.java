package com.transsion.hubsdk.api.os;

import com.transsion.hubsdk.aosp.os.TranAospProcess;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.os.TranThubProcess;
import com.transsion.hubsdk.interfaces.os.ITranProcessAdapter;

public class TranProcess {
    private static final String TAG = "TranProcess";
    protected static ITranProcessAdapter sAospService;
    protected static ITranProcessAdapter sThubService;

    public static String getAllCpuLoading() {
        return getService(TranVersion.Core.VERSION_33281).getAllCpuLoading();
    }

    public static double getCpuInfo() {
        return getService(TranVersion.Core.VERSION_33281).getCpuInfo();
    }

    public static ITranProcessAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubProcess");
            ITranProcessAdapter iTranProcessAdapter = sThubService;
            if (iTranProcessAdapter != null) {
                return iTranProcessAdapter;
            }
            TranThubProcess tranThubProcess = new TranThubProcess();
            sThubService = tranThubProcess;
            return tranThubProcess;
        }
        TranSdkLog.i(TAG, "TranAospProcess");
        ITranProcessAdapter iTranProcessAdapter2 = sAospService;
        if (iTranProcessAdapter2 != null) {
            return iTranProcessAdapter2;
        }
        TranAospProcess tranAospProcess = new TranAospProcess();
        sAospService = tranAospProcess;
        return tranAospProcess;
    }
}
