package com.cloud.tmc.miniapp.defaultimpl;

import android.app.Activity;
import android.app.Application;
import android.content.res.Resources;
import com.cloud.tmc.kernel.service.EnvironmentService;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniutils.util.ActivityUtils;
import com.cloud.tmc.miniutils.util.AppUtils;
import com.cloud.tmc.miniutils.util.LanguageUtils;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public final class EnvironmentServiceImpl implements EnvironmentService {
    @Override
    public String defaultPlatform() {
        return "TMC";
    }

    @Override
    public String getAppLanguage() {
        return LanguageUtils.getAppContextLanguage().getLanguage();
    }

    @Override
    public String getAppName() {
        String appName = AppUtils.getAppName();
        Intrinsics.g(appName, "getAppName()");
        return appName;
    }

    @Override
    public Application getApplicationContext() {
        return ByteAppManager.getSApplication();
    }

    @Override
    public int getLpid() {
        return ProcessUtils.getPid();
    }

    @Override
    public String getProductVersion() {
        String appVersionName = AppUtils.getAppVersionName();
        Intrinsics.g(appVersionName, "getAppVersionName()");
        return appVersionName;
    }

    @Override
    public Resources getResources() {
        Resources resources = getApplicationContext().getResources();
        Intrinsics.g(resources, "applicationContext.resources");
        return resources;
    }

    @Override
    public WeakReference<Activity> getTopActivity() {
        return new WeakReference<>(ActivityUtils.getTopActivity());
    }
}
