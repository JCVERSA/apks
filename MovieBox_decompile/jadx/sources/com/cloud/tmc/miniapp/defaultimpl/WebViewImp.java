package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewFactory;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.system.ShellWebView;
import com.cloud.tmc.render.system.SystemWebView;
import kotlin.jvm.internal.Intrinsics;

public final class WebViewImp implements IWebViewFactory {
    /* JADX WARN: Multi-variable type inference failed */
    public final IWebView OooO00o(IWebView iWebView) {
        if (((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_LAYER_HARDWARE, MiniAppConfigHelper.INSTANCE.getDEFAULT_KEY_LAYER_HARDWARE())) {
            ((View) iWebView).setLayerType(2, null);
        }
        return iWebView;
    }

    @Override
    public IWebView createWebView(Context context) {
        Intrinsics.h(context, "context");
        try {
            SystemWebView systemWebView = new SystemWebView(context, null, 2, null);
            OooO00o(systemWebView);
            return systemWebView;
        } catch (Throwable th2) {
            TmcLogger.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "miniapp create webview fail : " + th2);
            return null;
        }
    }

    @Override
    public IWebView createWebView(Context context, int i10) {
        IWebView systemWebView;
        Intrinsics.h(context, "context");
        try {
            if (AppPrepareUtils.INSTANCE.isShellType(i10)) {
                systemWebView = new ShellWebView(context, null, 2, null);
                OooO00o(systemWebView);
            } else {
                systemWebView = new SystemWebView(context, null, 2, null);
                OooO00o(systemWebView);
            }
            return systemWebView;
        } catch (Throwable th2) {
            TmcLogger.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "miniapp create webview fail : " + th2);
            return null;
        }
    }

    @Override
    public void clear() {
    }
}
