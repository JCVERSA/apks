package com.transsion.moduleservice;

import android.os.Bundle;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;

public interface IVishaSettingService extends IProvider {

    public static class ServiceInstance {
        public static volatile IVishaSettingService service;

        public static IVishaSettingService getService() {
            if (service == null) {
                synchronized (IVishaSettingService.class) {
                    try {
                        if (service == null) {
                            service = (IVishaSettingService) ARouter.getInstance().navigation(IVishaSettingService.class);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return service;
        }
    }

    BaseFragment getSettingFragment(BaseActivity baseActivity, Bundle bundle);
}
