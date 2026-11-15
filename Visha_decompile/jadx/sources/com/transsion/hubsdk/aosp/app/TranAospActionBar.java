package com.transsion.hubsdk.aosp.app;

import android.app.ActionBar;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranActionBarAdapter;

public class TranAospActionBar implements ITranActionBarAdapter {
    private static final String TAG = "TranAospActionBar";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.ActionBar");

    @Override
    public void setShowHideAnimationEnabled(ActionBar actionBar, boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setShowHideAnimationEnabled", Boolean.TYPE), actionBar, Boolean.valueOf(z));
    }
}
