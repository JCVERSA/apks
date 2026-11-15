package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.callback.PrivacyCallback;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import kotlin.jvm.internal.Intrinsics;

public final class PermissionDialogPointImp implements PermissionDialogPoint {
    public PrivacyCallback OooO00o;

    @Override
    public void privacyDialogDismiss(String appId, long j10) {
        Intrinsics.h(appId, "appId");
        PrivacyCallback privacyCallback = this.OooO00o;
        if (privacyCallback != null) {
            privacyCallback.privacyDismiss(appId, j10);
        }
    }

    @Override
    public void registerCallback(PrivacyCallback privacyCallback) {
        Intrinsics.h(privacyCallback, "privacyCallback");
        this.OooO00o = privacyCallback;
    }

    @Override
    public void onFinalized() {
    }

    @Override
    public void onInitialized() {
    }
}
