package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import kotlin.jvm.internal.Intrinsics;

public final class OooOOOO extends com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o {
    public final String OooO00o;
    public final ISubpackageLoadCheckCallback OooO0O0;
    public final String OooO0OO;

    public OooOOOO(String str, ISubpackageLoadCheckCallback iSubpackageLoadCheckCallback, String str2) {
        this.OooO00o = str;
        this.OooO0O0 = iSubpackageLoadCheckCallback;
        this.OooO0OO = str2;
    }

    public static final void OooO00o(ISubpackageLoadCheckCallback loadCheckCallback, String path) {
        Intrinsics.h(loadCheckCallback, "$loadCheckCallback");
        Intrinsics.h(path, "$path");
        ToastUtils.hideLoading();
        loadCheckCallback.onLoadSuccess(path);
    }

    @Override
    public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
        OooOOO.OooO00o.OooO00o().remove(this.OooO00o);
        ToastUtils.hideLoading();
    }

    @Override
    public void onPackageLoadSuccess() {
        OooOOO.OooO00o.OooO00o().remove(this.OooO00o);
        final ISubpackageLoadCheckCallback iSubpackageLoadCheckCallback = this.OooO0O0;
        final String str = this.OooO0OO;
        ExecutorUtils.runOnMain(new Runnable() {
            @Override
            public final void run() {
                OooOOOO.OooO00o(iSubpackageLoadCheckCallback, str);
            }
        });
    }
}
