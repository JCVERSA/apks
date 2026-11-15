package com.transsion.moduleservice;

import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;

public interface IM3U8MergeService extends IProvider {

    public interface IVideoTransformListener {
        void onTransformFailed(Exception exc);

        void onTransformFinished();

        void onTransformProgress(float f);
    }

    public static class ServiceInstance {
        public static volatile IM3U8MergeService service;

        public static IM3U8MergeService getService() {
            if (service == null) {
                synchronized (IM3U8MergeService.class) {
                    try {
                        if (service == null) {
                            service = (IM3U8MergeService) ARouter.getInstance().navigation(IM3U8MergeService.class);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return service;
        }
    }

    void transformM3U8ToMp4(String str, String str2, @NonNull IVideoTransformListener iVideoTransformListener);
}
