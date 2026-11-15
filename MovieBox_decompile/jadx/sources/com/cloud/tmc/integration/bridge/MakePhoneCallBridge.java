package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.Permission;
import org.mvel2.ast.ASTNode;

public class MakePhoneCallBridge implements BridgeExtension {
    private static final String TAG = "MakePhoneCall";

    @Override
    public void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void makePhoneCall(@BindingParam(name = {"phoneNumber"}) String str, @BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        Context context = appContext.getContext();
        if (context == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
            bridgeCallback.sendSuccessResponse();
        } catch (Exception e10) {
            TmcLogger.e(TAG, e10);
            bridgeCallback.sendFailResponse();
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
