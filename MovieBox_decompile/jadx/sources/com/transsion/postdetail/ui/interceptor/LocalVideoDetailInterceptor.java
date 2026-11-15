package com.transsion.postdetail.ui.interceptor;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.RouteItem;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.shorttv.factory.i;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import cw.e;
import ij.k;
import java.io.File;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class LocalVideoDetailInterceptor {

    public static final a f47787a = new a(null);

    private static final Lazy f47788b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocalVideoDetailInterceptor.g();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalVideoDetailInterceptor a() {
            return (LocalVideoDetailInterceptor) LocalVideoDetailInterceptor.f47788b.getValue();
        }

        private a() {
        }
    }

    private final boolean f(String str, String str2) {
        if (str == null) {
            File file = new File(str2);
            if (file.exists() && file.length() > 0) {
                return true;
            }
        } else {
            if (StringsKt.W(str2, "content", false, 2, null)) {
                k1.a aVarG = k1.a.g(Utils.a(), Uri.parse(str2));
                if (aVarG != null) {
                    return aVarG.e();
                }
                return true;
            }
            File file2 = new File(str2);
            if (file2.exists() && file2.length() > 0) {
                return true;
            }
        }
        return false;
    }

    public static final LocalVideoDetailInterceptor g() {
        return new LocalVideoDetailInterceptor();
    }

    public final void h(RouteItem routeItem, mf.b bVar) {
        try {
            if (routeItem.getExtras().getInt("subject_type", -1) == SubjectType.SHORT_TV.getValue()) {
                k.p(k.b(TheRouter.c(pr.a.f69252a.b()), routeItem.getExtras()));
                fj.b.a(bVar);
            } else {
                wf.a.C0922a.l(wf.a.f74274a, "VideoFloat", LocalVideoDetailInterceptor.class.getSimpleName() + " open page ----2", false, 4, null);
                bVar.a(routeItem);
            }
        } catch (Throwable unused) {
            bVar.a(routeItem);
        }
    }

    public static final vr.a j() {
        return new i();
    }

    public static final ws.a k() {
        return new com.transsion.postdetail.shorttv.factory.a();
    }

    public final void i(RouteItem postcard, mf.b callback) {
        String path;
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(callback, "callback");
        if (Intrinsics.c(postcard.getPath(), "/ugc_video/detail") || Intrinsics.c(postcard.getPath(), "/ugc_video/local_detail") || Intrinsics.c(postcard.getPath(), "/ugc_shorts/detail")) {
            e.b.a(e.f58665a.b(), false, 1, null);
        }
        if (!Intrinsics.c(postcard.getPath(), "/video/detail")) {
            if (!Intrinsics.c(postcard.getPath(), pr.a.f69252a.b())) {
                callback.a(postcard);
                return;
            }
            pq.c.f69249a.a(new Function0() {
                @Override
                public final Object invoke() {
                    return LocalVideoDetailInterceptor.j();
                }
            });
            cs.a.f58651a.a(new Function0() {
                @Override
                public final Object invoke() {
                    return LocalVideoDetailInterceptor.k();
                }
            });
            e.b.a(e.f58665a.b(), false, 1, null);
            Bundle extras = postcard.getExtras();
            Serializable serializable = extras.getSerializable("item_object");
            Subject subject = serializable instanceof Subject ? (Subject) serializable : null;
            String string = subject == null ? extras.getString("id") : subject.getSubjectId();
            int i10 = extras.getInt("ep");
            int i11 = extras.getInt("extra_series_position", -1);
            if (string == null) {
                callback.a(postcard);
                return;
            }
            DownloadBean downloadBeanX = DownloadEsHelper.f57201m.a().x(string, i10);
            if ((downloadBeanX != null ? downloadBeanX.getPath() : null) == null || !downloadBeanX.isCompleted()) {
                callback.a(postcard);
                return;
            }
            String resourceId = downloadBeanX.getResourceId();
            String path2 = downloadBeanX.getPath();
            Intrinsics.e(path2);
            if (f(resourceId, path2)) {
                callback.a(postcard);
                return;
            }
            Activity activityO = com.transsion.baselib.report.k.f42210a.o();
            if (activityO == null || activityO.isDestroyed() || activityO.isFinishing()) {
                return;
            }
            LocalVideoNotExistUtil.f57684a.v(activityO, downloadBeanX, i11);
            return;
        }
        e.b.a(e.f58665a.b(), false, 1, null);
        Bundle extras2 = postcard.getExtras();
        String string2 = extras2.getString("extra_url");
        String string3 = extras2.getString("extra_subject_id");
        if (string3 == null) {
            string3 = "";
        }
        String string4 = extras2.getString("extra_local_path");
        String string5 = extras2.getString("extra_resource_id");
        boolean z10 = extras2.getBoolean("extra_is_series");
        int i12 = extras2.getInt("extra_series_position", -1);
        boolean z11 = extras2.getBoolean("extra_completed", true);
        if (extras2.getBoolean("extra_from_deeplink", false)) {
            callback.a(postcard);
            return;
        }
        if (string5 != null) {
            DownloadBean downloadBeanQ = DownloadEsHelper.f57201m.a().q(string5);
            if (downloadBeanQ != null && (path = downloadBeanQ.getPath()) != null) {
                string4 = path;
            }
            extras2.putString("extra_local_path", string4);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("Download_LocalVideoDetailInterceptor", "isDownloadCompleted  = " + z11 + "， path = " + string4, true);
        boolean z12 = (string2 == null || StringsKt.W(string2, "http", false, 2, null) || string3.length() != 0) ? false : true;
        if (string4 == null || string4.length() <= 0) {
            wf.a.C0922a.f(c0922a, "Download_LocalVideoDetailInterceptor", "file is error, show error dialog, ", false, 4, null);
            Activity activityO2 = com.transsion.baselib.report.k.f42210a.o();
            if (activityO2 == null || activityO2.isDestroyed() || activityO2.isFinishing()) {
                return;
            }
            LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f57684a;
            Intrinsics.e(string5);
            localVideoNotExistUtil.w(activityO2, string5, string4, z10, i12);
            return;
        }
        boolean zF = f(string5, string4);
        if (!z11) {
            wf.a.C0922a.f(c0922a, "Download_LocalVideoDetailInterceptor", "downloading play, open page", false, 4, null);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocalVideoDetailInterceptor$process$1(string5, this, postcard, callback, string3, null), 3, null);
            return;
        }
        if (zF) {
            wf.a.C0922a.f(c0922a, "Download_LocalVideoDetailInterceptor", "open page", false, 4, null);
            h(postcard, callback);
            return;
        }
        wf.a.C0922a.f(c0922a, "Download_LocalVideoDetailInterceptor", "file is error, show error dialog, c, isOutside = " + z12, false, 4, null);
        if (z12) {
            fh.b.f60176a.d(R$string.download_no_local_file_tips);
            return;
        }
        Activity activityO3 = com.transsion.baselib.report.k.f42210a.o();
        if (activityO3 == null || activityO3.isDestroyed() || activityO3.isFinishing()) {
            return;
        }
        LocalVideoNotExistUtil localVideoNotExistUtil2 = LocalVideoNotExistUtil.f57684a;
        Intrinsics.e(string5);
        localVideoNotExistUtil2.w(activityO3, string5, string4, z10, i12);
    }
}
