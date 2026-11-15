package com.transsion.hubsdk.interfaces.util;

import android.content.Context;

public interface ITranFeatureFlagUtilsAdapter {
    boolean isEnabled(Context context, String str);
}
