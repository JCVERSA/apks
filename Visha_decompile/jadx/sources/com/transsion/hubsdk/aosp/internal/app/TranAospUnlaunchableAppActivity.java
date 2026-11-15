package com.transsion.hubsdk.aosp.internal.app;

import android.content.Intent;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.internal.app.ITranUnlaunchableAppActivityAdapter;

public class TranAospUnlaunchableAppActivity implements ITranUnlaunchableAppActivityAdapter {
    private static final String TAG = "TranAospUnlaunchableAppActivity";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.app.UnlaunchableAppActivity");

    @Override
    public Intent createInQuietModeDialogIntent(int i) {
        return (Intent) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "createInQuietModeDialogIntent", Integer.TYPE), null, Integer.valueOf(i));
    }
}
