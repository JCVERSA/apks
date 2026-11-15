package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.content.IntentFilter;
import android.os.BatteryManager;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;

public class BatteryBridge implements BridgeExtension {
    private JsonObject getJsonObject(@NonNull int i10, boolean z10) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(PermissionConstant.level, Integer.valueOf(i10));
        jsonObject.addProperty("isCharging", Boolean.valueOf(z10));
        return jsonObject;
    }

    @Override
    public void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getBatteryInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        int intProperty;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = app.getAppContext().getContext();
        boolean z10 = false;
        try {
            intProperty = ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4);
            try {
                int intExtra = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
                if (intExtra == 2 || intExtra == 5) {
                    z10 = true;
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            intProperty = 0;
        }
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse(getJsonObject(intProperty, z10));
        }
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
