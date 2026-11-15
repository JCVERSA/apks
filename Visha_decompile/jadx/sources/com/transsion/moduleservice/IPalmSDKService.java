package com.transsion.moduleservice;

import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;

public interface IPalmSDKService extends IProvider {

    public static class ServiceInstance {
        public static volatile IPalmSDKService service;

        public static IPalmSDKService getService() {
            if (service == null) {
                synchronized (IPalmSDKService.class) {
                    try {
                        if (service == null) {
                            service = (IPalmSDKService) ARouter.getInstance().navigation(IPalmSDKService.class);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return service;
        }
    }
}
