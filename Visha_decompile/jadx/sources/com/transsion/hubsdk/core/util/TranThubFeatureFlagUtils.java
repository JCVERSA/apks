package com.transsion.hubsdk.core.util;

import android.content.Context;
import com.transsion.hubsdk.interfaces.util.ITranFeatureFlagUtilsAdapter;
import com.transsion.hubsdk.util.TranFeatureFlagUtils;

public class TranThubFeatureFlagUtils implements ITranFeatureFlagUtilsAdapter {
    @Override
    public boolean isEnabled(Context context, String str) {
        return TranFeatureFlagUtils.isEnabled(context, str);
    }
}
