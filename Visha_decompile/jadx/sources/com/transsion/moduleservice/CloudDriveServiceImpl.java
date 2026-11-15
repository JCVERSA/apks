package com.transsion.moduleservice;

import android.content.Context;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.arouter.VishaRouterTable;
import defpackage.a41;
import defpackage.fw7;
import defpackage.ge;
import defpackage.gw7;
import defpackage.vz0;
import defpackage.w6c;

@Route(path = VishaRouterTable.PATH_SERVICE_CLOUDDRIVE)
public class CloudDriveServiceImpl implements ICloudDriveService {
    private static final String TAG = "CloudDriveService";

    @Override
    public void init(Context context) {
        try {
            b.r(context);
            LogUtils.j(TAG, "PalmIdManager initialized successfully in init method");
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to initialize PalmIdManager: " + e.getMessage());
        }
    }

    @Override
    public void initCloudDriveSdk(Context context) {
        try {
            vz0.a aVar = new vz0.a();
            boolean z = true;
            boolean z2 = ge.e() || ge.f();
            if (z2) {
                z2 = w6c.d(context, "environment_mode", 0) != 1;
            }
            vz0.a aVarQ = aVar.m("vishaplayer").o("visha").r(new fw7()).t(new gw7()).q(z2);
            if (!ge.e() && !ge.f()) {
                z = false;
            }
            aVarQ.p(z);
            a41.a.g(context, aVar.a());
            LogUtils.j(TAG, "CloudDriveSdk initialized successfully isTestEnvironment:" + z2);
        } catch (Exception e) {
            LogUtils.m(TAG, "Failed to initialize CloudDriveSdk: " + e.getMessage());
        }
    }
}
