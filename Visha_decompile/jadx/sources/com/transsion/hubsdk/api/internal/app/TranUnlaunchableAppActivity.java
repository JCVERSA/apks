package com.transsion.hubsdk.api.internal.app;

import android.content.Intent;
import com.transsion.hubsdk.aosp.internal.app.TranAospUnlaunchableAppActivity;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.app.TranThubUnlaunchableAppActivity;
import com.transsion.hubsdk.interfaces.internal.app.ITranUnlaunchableAppActivityAdapter;

public class TranUnlaunchableAppActivity {
    private static TranAospUnlaunchableAppActivity sAospService;
    private static TranThubUnlaunchableAppActivity sThubService;

    public static Intent createInQuietModeDialogIntent(int i) {
        return getService(TranVersion.Core.VERSION_33171).createInQuietModeDialogIntent(i);
    }

    public static ITranUnlaunchableAppActivityAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubUnlaunchableAppActivity tranThubUnlaunchableAppActivity = sThubService;
            if (tranThubUnlaunchableAppActivity != null) {
                return tranThubUnlaunchableAppActivity;
            }
            TranThubUnlaunchableAppActivity tranThubUnlaunchableAppActivity2 = new TranThubUnlaunchableAppActivity();
            sThubService = tranThubUnlaunchableAppActivity2;
            return tranThubUnlaunchableAppActivity2;
        }
        TranAospUnlaunchableAppActivity tranAospUnlaunchableAppActivity = sAospService;
        if (tranAospUnlaunchableAppActivity != null) {
            return tranAospUnlaunchableAppActivity;
        }
        TranAospUnlaunchableAppActivity tranAospUnlaunchableAppActivity2 = new TranAospUnlaunchableAppActivity();
        sAospService = tranAospUnlaunchableAppActivity2;
        return tranAospUnlaunchableAppActivity2;
    }
}
