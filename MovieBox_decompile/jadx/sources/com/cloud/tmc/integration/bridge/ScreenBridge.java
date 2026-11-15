package com.cloud.tmc.integration.bridge;

import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.JsonObject;

public class ScreenBridge implements BridgeExtension {
    private JsonObject getJsonObject(@NonNull float f10) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("screenBrightness", Float.valueOf(f10));
        return jsonObject;
    }

    @Override
    public void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getScreenBrightness(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (page == null || page.getPageContext() == null || page.getPageContext().getActivity() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        float f10 = page.getPageContext().getActivity().getWindow().getAttributes().screenBrightness;
        if (f10 != -1.0f) {
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(getJsonObject(f10));
                return;
            }
            return;
        }
        try {
            float f11 = Settings.System.getInt(app.getAppContext().getContext().getContentResolver(), "screen_brightness") / 255.0f;
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse(getJsonObject(f11));
            }
        } catch (Exception unused) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @Override
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void setScreenBrightness(@BindingParam(name = {"screenBrightness"}) float f10, @BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (page == null || page.getPageContext() == null || page.getPageContext().getActivity() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        if (f10 != -1.0f && (Math.min(0.0f, f10) != 0.0f || Math.max(1.0f, f10) != 1.0f)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            Window window = page.getPageContext().getActivity().getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.screenBrightness = f10;
            window.setAttributes(attributes);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Exception unused) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @Override
    public void onFinalized() {
    }

    @Override
    public void onInitialized() {
    }
}
