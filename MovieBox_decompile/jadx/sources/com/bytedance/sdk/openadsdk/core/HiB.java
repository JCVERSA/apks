package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;

public class HiB extends vS {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile HiB Sj;

    private HiB(Context context) {
        super(context);
    }

    @Override
    public vS.TKC Sj() {
        return super.Sj();
    }

    public static HiB Sj(Context context) {
        if (Sj == null) {
            synchronized (HiB.class) {
                try {
                    if (Sj == null) {
                        Sj = new HiB(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }
}
