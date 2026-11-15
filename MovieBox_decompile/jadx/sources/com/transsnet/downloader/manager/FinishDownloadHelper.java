package com.transsnet.downloader.manager;

import android.app.Activity;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.fragment.DownloadedShortsDialog;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class FinishDownloadHelper extends ui.a {

    private final String f57253a = "FinishDownloadHelper";

    private final Lazy f57254b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FinishDownloadHelper.o();
        }
    });

    private final Lazy f57255c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FinishDownloadHelper.l();
        }
    });

    public static final kk.a l() {
        return (kk.a) TheRouter.d(kk.a.class, new Object[0]);
    }

    private final kk.a m() {
        return (kk.a) this.f57255c.getValue();
    }

    public final cx.a n() {
        return (cx.a) this.f57254b.getValue();
    }

    public static final cx.a o() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    private final void p(DownloadBean downloadBean) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null && (resourceId = downloadBean.getPostId()) == null) {
            resourceId = downloadBean.getUrl();
        }
        if (resourceId == null || resourceId.length() == 0) {
            return;
        }
        String str = "SHORTS_DIALOG_SHOWN_" + resourceId;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (bVar.b().getBoolean(str, false)) {
            return;
        }
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (com.blankj.utilcode.util.c.j() && (activityB instanceof FragmentActivity)) {
            FragmentActivity fragmentActivity = (FragmentActivity) activityB;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) activityB).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                Fragment fragmentK0 = supportFragmentManager.k0("DownloadedShortsDialog");
                if (fragmentK0 instanceof DialogFragment) {
                    ((DialogFragment) fragmentK0).dismissAllowingStateLoss();
                }
                DownloadedShortsDialog.INSTANCE.a(resourceId).k0(activityB, "DownloadedShortsDialog");
                com.transsion.baselib.helper.a.f42121a.c("", "short_download_view");
                bVar.b().putBoolean(str, true);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void e(DownloadBean bean, String str) {
        Intrinsics.h(bean, "bean");
        super.e(bean, str);
        kk.a aVarM = m();
        if (aVarM != null && aVarM.enable()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new FinishDownloadHelper$onDownloadSuccess$1(bean, this, null), 3, null);
        }
        if (bean.isShorts()) {
            p(bean);
        }
    }
}
