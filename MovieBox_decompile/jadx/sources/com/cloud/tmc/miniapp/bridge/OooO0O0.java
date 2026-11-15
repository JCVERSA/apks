package com.cloud.tmc.miniapp.bridge;

import android.content.Context;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

public final class OooO0O0 extends Lambda implements Function0<Unit> {
    public final App OooO00o;
    public final Context OooO0O0;
    public final BridgeCallback OooO0OO;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0O0(App app, Context context, BridgeCallback bridgeCallback) {
        super(0);
        this.OooO00o = app;
        this.OooO0O0 = context;
        this.OooO0OO = bridgeCallback;
    }

    @Override
    public Object invoke() {
        this.OooO00o.putBooleanValue(TmcConstants.MINIAPP_HAS_UPDATE_REQUESTING, false);
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        Context context = this.OooO0O0;
        String appId = this.OooO00o.getAppId();
        if (appId == null) {
            appId = "";
        }
        boolean zIsNeedUpdate = miniAppLaunch.isNeedUpdate(context, appId);
        this.OooO00o.putBooleanValue(TmcConstants.MINIAPP_HAS_UPDATE, zIsNeedUpdate);
        BridgeCallback bridgeCallback = this.OooO0OO;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("hasUpdate", Boolean.valueOf(zIsNeedUpdate));
        bridgeCallback.sendSuccessResponse(jsonObject);
        return Unit.f64096a;
    }
}
