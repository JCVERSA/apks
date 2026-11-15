package com.cloud.tmc.integration.permission;

import androidx.collection.y0;

public class TmcNativePermissionRequestManager implements TmcNativePermissionRequestProxy {
    private y0 callbackArray = new y0();
    private Integer lastRequestCode = 0;

    @Override
    public void addPermRequestCallback(int i10, IPermissionRequestCallback iPermissionRequestCallback) {
        y0 y0Var = this.callbackArray;
        if (y0Var != null) {
            y0Var.l(i10, iPermissionRequestCallback);
        }
    }

    @Override
    public int getRequestCode() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(this.lastRequestCode.intValue() + 1);
            this.lastRequestCode = numValueOf;
        }
        return numValueOf.intValue();
    }

    @Override
    public void onRequestPermissionResult(int i10, String[] strArr, int[] iArr) {
        IPermissionRequestCallback iPermissionRequestCallback;
        y0 y0Var = this.callbackArray;
        if (y0Var == null || (iPermissionRequestCallback = (IPermissionRequestCallback) y0Var.g(i10)) == null) {
            return;
        }
        iPermissionRequestCallback.onRequestPermissionResult(i10, strArr, iArr);
        this.callbackArray.m(i10);
    }
}
