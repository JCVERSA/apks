package com.cloud.tmc.integration.permission;

import com.cloud.tmc.kernel.proxy.Proxiable;

public interface TmcNativePermissionRequestProxy extends Proxiable {
    void addPermRequestCallback(int i10, IPermissionRequestCallback iPermissionRequestCallback);

    int getRequestCode();

    void onRequestPermissionResult(int i10, String[] strArr, int[] iArr);
}
