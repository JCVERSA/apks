package com.transsion.moduleservice;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.launcher.ARouter;

public interface IBtDownloadService extends IProvider {
    public static final boolean BT_ENABLE = true;

    public static class ServiceInstance {
        private static IBtDownloadService service;

        public static IBtDownloadService getService() {
            IBtDownloadService iBtDownloadService = service;
            if (iBtDownloadService != null) {
                return iBtDownloadService;
            }
            IBtDownloadService iBtDownloadService2 = (IBtDownloadService) ARouter.getInstance().navigation(IBtDownloadService.class);
            service = iBtDownloadService2;
            return iBtDownloadService2;
        }
    }

    void gotoTorrentDownloadActivity(@NonNull Context context);

    boolean hasTaskRunning();

    boolean sniffTorrent(Context context, View view, Uri uri, String str);
}
