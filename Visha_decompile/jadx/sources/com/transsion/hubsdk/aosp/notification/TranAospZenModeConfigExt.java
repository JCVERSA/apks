package com.transsion.hubsdk.aosp.notification;

import android.content.Context;
import android.service.notification.Condition;
import android.service.notification.ZenModeConfig;

public class TranAospZenModeConfigExt {
    private static final String TAG = "TranAospZenModeConfig";
    private Context mContext;

    public TranAospZenModeConfigExt(Context context) {
        this.mContext = context;
    }

    public static Condition toTimeCondition(Context context, int i, int i2) {
        return ZenModeConfig.toTimeCondition(context, i, i2);
    }
}
