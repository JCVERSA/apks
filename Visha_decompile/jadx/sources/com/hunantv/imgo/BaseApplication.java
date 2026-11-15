package com.hunantv.imgo;

import android.content.Context;

public class BaseApplication {
    protected static Context mContext;
    private final String SDK_VERSION = "1.0.5";

    public static Context getContext() {
        return mContext;
    }

    public static void setContext(Context context) {
        mContext = context;
    }
}
