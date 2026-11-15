package com.cloud.tmc.integration.internalBridge;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;

public class NativeLogBridge implements BridgeExtension {
    private static final String TAG = "NativeLog";

    @Override
    public void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void nativeLog(@BindingParam(name = {NotificationCompat.CATEGORY_MESSAGE}) String str) {
        TmcLogger.e(TAG, str);
    }

    @Override
    public Permission permit() {
        return null;
    }

    @Override
    public void onFinalized() {
    }

    @Override
    public void onInitialized() {
    }
}
