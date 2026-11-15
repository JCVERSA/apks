package com.transsion.moduleservice;

import android.app.Application;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;

public interface IOnlineVideoService extends IProvider {
    public static final boolean SUPPORT_OTT = true;

    public static class ServiceInstance {
        public static volatile IOnlineVideoService service;

        public static IOnlineVideoService getService() {
            if (service == null) {
                synchronized (IOnlineVideoService.class) {
                    try {
                        if (service == null) {
                            service = (IOnlineVideoService) ARouter.getInstance().navigation(IOnlineVideoService.class);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return service;
        }
    }

    void initPlayer(Application application, String str, boolean z);

    void setAPIServiceDebugMode(boolean z);
}
