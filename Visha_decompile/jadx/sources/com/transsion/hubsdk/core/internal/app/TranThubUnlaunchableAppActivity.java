package com.transsion.hubsdk.core.internal.app;

import android.content.Intent;
import com.transsion.hubsdk.interfaces.internal.app.ITranUnlaunchableAppActivityAdapter;
import com.transsion.hubsdk.internal.app.TranUnlaunchableAppActivity;

public class TranThubUnlaunchableAppActivity implements ITranUnlaunchableAppActivityAdapter {
    @Override
    public Intent createInQuietModeDialogIntent(int i) {
        return TranUnlaunchableAppActivity.createInQuietModeDialogIntent(i);
    }
}
