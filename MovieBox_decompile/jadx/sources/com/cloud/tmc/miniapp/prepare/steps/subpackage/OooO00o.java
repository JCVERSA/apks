package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Intent;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import kotlin.jvm.internal.Intrinsics;

public class OooO00o implements OooOo {
    @Override
    public void backgroundDownloadZipAsync(AppModel appModelNew, boolean z10) {
        Intrinsics.h(appModelNew, "appModelNew");
    }

    @Override
    public void refreshAppInfo(AppModel appModelNew) {
        Intrinsics.h(appModelNew, "appModelNew");
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
    public void updateStepProgress(LoadStepAction loadStepAction) {
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
