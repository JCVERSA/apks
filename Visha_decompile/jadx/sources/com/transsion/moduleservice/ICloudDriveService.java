package com.transsion.moduleservice;

import android.content.Context;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;

public interface ICloudDriveService extends IProvider {

    public static class ServiceInstance {
        public static volatile ICloudDriveService service;

        public static ICloudDriveService getService() {
            if (service == null) {
                synchronized (ICloudDriveService.class) {
                    try {
                        if (service == null) {
                            service = (ICloudDriveService) ARouter.getInstance().navigation(ICloudDriveService.class);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return service;
        }
    }

    void initCloudDriveSdk(Context context);
}
