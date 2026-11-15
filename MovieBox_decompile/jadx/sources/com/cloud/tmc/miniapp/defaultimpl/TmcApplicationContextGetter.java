package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Application;
import android.content.Context;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniutils.util.Utils;
import kotlin.jvm.internal.Intrinsics;

public final class TmcApplicationContextGetter implements IApplicationContextGetter {
    @Override
    public Application getApplication() {
        Application application$com_cloud_tmc_miniapp_sdk = ByteAppManager.INSTANCE.getApplication$com_cloud_tmc_miniapp_sdk();
        if (application$com_cloud_tmc_miniapp_sdk != null) {
            return application$com_cloud_tmc_miniapp_sdk;
        }
        Application app = Utils.getApp();
        Intrinsics.g(app, "getApp()");
        return app;
    }

    @Override
    public Context getApplicationContext() {
        Context applicationContext = getApplication().getApplicationContext();
        Intrinsics.g(applicationContext, "application.applicationContext");
        return applicationContext;
    }
}
