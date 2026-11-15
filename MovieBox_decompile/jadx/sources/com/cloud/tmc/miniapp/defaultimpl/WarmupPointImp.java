package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.integration.point.WarmupPoint;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class WarmupPointImp implements WarmupPoint {
    @Override
    public void start(Context context, int i10) {
        Intrinsics.h(context, "context");
        synchronized (context) {
            Bundle bundle = new Bundle();
            bundle.putInt("warmupType", i10);
            Unit unit = Unit.f64096a;
            PrepareContext prepareContext = new PrepareContext(context, "100000", bundle, new Bundle(), false, null, null, null, 240, null);
            PrepareController prepareControllerCreateWarmupController = ((IClientStarter) TmcProxy.get(IClientStarter.class)).createWarmupController(prepareContext, new OooO0OO(prepareContext, new OooO00o()));
            if (prepareControllerCreateWarmupController != null) {
                prepareControllerCreateWarmupController.start();
            }
        }
    }

    public static final class OooO00o implements OooOo {
        @Override
        public void backgroundDownloadZipAsync(AppModel appModelNew, boolean z10) {
            Intrinsics.h(appModelNew, "appModelNew");
        }

        @Override
        public void refreshAppInfo(AppModel appModelNew) {
            Intrinsics.h(appModelNew, "appModelNew");
        }

        @Override
        public void updateStepProgress(LoadStepAction progress) {
            Intrinsics.h(progress, "progress");
        }

        @Override
        public void killActivity() {
        }

        @Override
        public void onPackageLoadSuccess() {
        }

        @Override
        public void showLoadingView(EntryInfo entryInfo) {
        }

        @Override
        public void showUpgradeHintPrompt(String str) {
        }

        @Override
        public void startApp(Intent intent) {
        }

        @Override
        public void startAsyncApp(Intent intent) {
        }

        @Override
        public void loadError(PrepareData prepareData, PrepareException prepareException) {
        }

        @Override
        public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
        }

        @Override
        public void showTaskDescription(String str, String str2) {
        }
    }

    @Override
    public void onFinalized() {
    }

    @Override
    public void onInitialized() {
    }
}
