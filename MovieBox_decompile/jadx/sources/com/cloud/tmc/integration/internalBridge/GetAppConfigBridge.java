package com.cloud.tmc.integration.internalBridge;

import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.a;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.security.Permission;
import com.google.gson.Gson;
import com.google.gson.JsonParser;
import java.util.HashMap;

public class GetAppConfigBridge implements BridgeExtension {
    @Override
    public void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getAppJson(@BindingCallback BridgeCallback bridgeCallback, @BindingNode(Page.class) Page page, @BindingNode(App.class) App app) {
        AppLoadResult appLoadResult = (AppLoadResult) app.getData(AppLoadResult.class);
        if (appLoadResult == null) {
            bridgeCallback.sendFailResponse();
        } else {
            bridgeCallback.sendSuccessResponse(JsonParser.parseString(new Gson().toJson(appLoadResult.appConfigModel)).getAsJsonObject());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void getPageJson(@BindingParam(name = {FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH}) String str, @BindingCallback BridgeCallback bridgeCallback, @BindingNode(Page.class) Page page, @BindingNode(App.class) App app) {
        AppLoadResult appLoadResult = (AppLoadResult) app.getData(AppLoadResult.class);
        if (appLoadResult == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        HashMap<String, MiniAppConfigModel.PagesBean> map = appLoadResult.appConfigModel.launchParams;
        for (String str2 : map.keySet()) {
            if (str.equals(str2)) {
                bridgeCallback.sendSuccessResponse(JsonParser.parseString(new Gson().toJson(map.get(str2))).getAsJsonObject());
                return;
            }
        }
        bridgeCallback.sendFailResponse();
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
