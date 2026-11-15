package com.cloud.tmc.miniapp;

import android.os.Bundle;
import com.cloud.tmc.kernel.proxy.network.IChangeUrlProxy;
import kotlin.jvm.internal.Intrinsics;

public final class DynamicChangeUrlImpl implements IChangeUrlProxy {
    @Override
    public Object getConfigValue(Bundle bundle, String key) {
        Intrinsics.h(key, "key");
        if (bundle != null) {
            return bundle.get(key);
        }
        return null;
    }
}
