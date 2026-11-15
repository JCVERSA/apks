package com.transsion.hubsdk.core.internal.policy;

import android.content.Context;
import com.transsion.hubsdk.interfaces.internal.policy.ITranSystemBarUtilsAdapter;
import com.transsion.hubsdk.internal.policy.TranSystemBarUtils;

public class TranThubSystemBarUtils implements ITranSystemBarUtilsAdapter {
    @Override
    public int getStatusBarHeight(Context context) {
        return TranSystemBarUtils.getStatusBarHeight(context);
    }
}
