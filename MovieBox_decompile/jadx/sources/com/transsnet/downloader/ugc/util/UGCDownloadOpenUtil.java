package com.transsnet.downloader.ugc.util;

import android.app.Application;
import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.manager.p;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class UGCDownloadOpenUtil {

    public static final UGCDownloadOpenUtil f57622a = new UGCDownloadOpenUtil();

    private static final Lazy f57623b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCDownloadOpenUtil.j();
        }
    });

    private static final Lazy f57624c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCDownloadOpenUtil.o();
        }
    });

    private static final Lazy f57625d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCDownloadOpenUtil.p();
        }
    });

    private static final Lazy f57626e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCDownloadOpenUtil.i();
        }
    });

    private UGCDownloadOpenUtil() {
    }

    public static final si.a i() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).n1();
    }

    public static final com.transsnet.downloader.manager.g j() {
        return p.f57282a.a(Utils.a());
    }

    public final si.a k() {
        return (si.a) f57626e.getValue();
    }

    public final com.transsnet.downloader.manager.g l() {
        return (com.transsnet.downloader.manager.g) f57623b.getValue();
    }

    public final ep.a m() {
        return (ep.a) f57624c.getValue();
    }

    public final ep.b n() {
        return (ep.b) f57625d.getValue();
    }

    public static final ep.a o() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public static final ep.b p() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    private final void q(AppCompatActivity appCompatActivity, DownloadBean downloadBean) {
        k.d(o0.a(y0.c()), null, null, new UGCDownloadOpenUtil$openSubjectAudio$1(downloadBean, appCompatActivity, null), 3, null);
    }

    public final void r(View view, String pageName, int i10, DownloadBean bean) {
        Intrinsics.h(view, "view");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(bean, "bean");
        Context context = view.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        if (!bean.isVideo()) {
            q(appCompatActivity, bean);
            return;
        }
        if (bean.getUgcVideoIsVertical() || bean.isShotTV()) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", "openUGCLocalVideoDetail vertical video~", false, 4, null);
            Navigator.x(TheRouter.c("/ugc_video/detail").K("id", bean.getUgcVideoId()).K("collection_id", bean.getUgcVideoCollectionId()).K("ops", bean.getOps()).K("videoStyle", UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), appCompatActivity, null, 2, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", "openUGCLocalVideoDetail other", false, 4, null);
            Navigator.x(TheRouter.c("/ugc_video/local_detail").K("id", bean.getUgcVideoId()).K("resource_id", bean.getResourceId()).K("collection_id", bean.getUgcVideoCollectionId()).K("ops", bean.getOps()).K(WebConstants.PAGE_FROM, pageName), appCompatActivity, null, 2, null);
        }
    }
}
