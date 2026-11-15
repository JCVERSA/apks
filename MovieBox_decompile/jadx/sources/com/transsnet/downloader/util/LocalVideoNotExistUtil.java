package com.transsnet.downloader.util;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.fragment.DownloadReDetectorMainDialog;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import com.transsnet.flow.event.sync.event.LocalVideoEvent;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.n0;

public final class LocalVideoNotExistUtil {

    public static final LocalVideoNotExistUtil f57684a = new LocalVideoNotExistUtil();

    private static final Lazy f57685b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocalVideoNotExistUtil.q();
        }
    });

    private LocalVideoNotExistUtil() {
    }

    public final void k(Context context, String str, final DownloadBean downloadBean, final Function1 function1) {
        if (downloadBean == null) {
            downloadBean = DownloadEsHelper.f57201m.a().q(str);
        }
        if (downloadBean == null || downloadBean.getType() == 1) {
            function1.invoke(null);
            return;
        }
        DownloadReDetectorMainDialog downloadReDetectorMainDialogC = DownloadReDetectorMainDialog.INSTANCE.c();
        downloadReDetectorMainDialogC.k0(context, "download_anima");
        downloadReDetectorMainDialogC.A0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoNotExistUtil.l(downloadBean, function1, (yw.b) obj);
            }
        });
    }

    public static final Unit l(DownloadBean downloadBean, Function1 function1, yw.b it) {
        Intrinsics.h(it, "it");
        downloadBean.setPath(DownloadUtil.f57680a.s(downloadBean));
        function1.invoke(downloadBean.getPath());
        return Unit.f64096a;
    }

    public final void m(String str, String str2, final boolean z10, final int i10, String str3) {
        DownloadBean downloadBeanQ = DownloadEsHelper.f57201m.a().q(str);
        if (downloadBeanQ == null) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocalVideoNotExistUtil$delete$2(str, str2, z10, i10, str3, null), 3, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "3 delete, resourceId = " + str, false, 4, null);
        com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).m(downloadBeanQ, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoNotExistUtil.o(z10, i10, ((Boolean) obj).booleanValue());
            }
        });
    }

    static void n(LocalVideoNotExistUtil localVideoNotExistUtil, String str, String str2, boolean z10, int i10, String str3, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str3 = null;
        }
        localVideoNotExistUtil.m(str, str2, z10, i10, str3);
    }

    public static final Unit o(boolean z10, int i10, boolean z11) {
        if (z10) {
            f57684a.u(i10);
        }
        DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent("", "", false, false, 12, null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
        return Unit.f64096a;
    }

    public final void p(String str, String str2, boolean z10, int i10) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocalVideoNotExistUtil$download$1(str, str2, z10, i10, null), 3, null);
    }

    public static final n0 q() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    public final n0 r() {
        return (n0) f57685b.getValue();
    }

    public final void s(Context context, final String str, final List list) {
        DownloadBean downloadBean;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                downloadBean = null;
                break;
            }
            downloadBean = (DownloadBean) it.next();
            if (downloadBean.getStatus() < 10) {
                wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "合集列表, 展示路径选择弹窗2", false, 4, null);
                break;
            }
        }
        if (downloadBean != null) {
            f57684a.k(context, str, downloadBean, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LocalVideoNotExistUtil.t(list, str, (String) obj);
                }
            });
        }
    }

    public static final Unit t(List list, String str, String str2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (downloadBean.getStatus() < 10) {
                if (str2 != null && str2.length() > 0) {
                    downloadBean.setPath(DownloadUtil.f57680a.s(downloadBean));
                }
                wf.a.f74274a.i("long_video_play", "剧集, 本地源文件不存在，开始重新下载, resourceId = " + str + ", path = " + str2, true);
                LocalVideoNotExistUtil localVideoNotExistUtil = f57684a;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                localVideoNotExistUtil.p(resourceId, downloadBean.getPath(), false, -1);
            }
        }
        return Unit.f64096a;
    }

    public final void u(int i10) {
        DownloadListManager downloadListManagerA;
        if (i10 < 0) {
            return;
        }
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        DownloadBean downloadBean = (DownloadBean) aVar.a().K().f();
        if (downloadBean != null) {
            try {
                List<DownloadBean> seriesList = downloadBean.getSeriesList();
                if (seriesList != null) {
                    seriesList.remove(i10);
                }
            } catch (Throwable unused) {
                downloadListManagerA = DownloadListManager.f57771m.a();
            }
        }
        downloadListManagerA = aVar.a();
        downloadListManagerA.K().n(downloadBean);
    }

    private final void x(Context context, boolean z10, List list, String str, String str2, boolean z11, int i10) {
        LocalVideoEvent localVideoEvent = new LocalVideoEvent(str, 0L, 0L, false, true, 14, null);
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LocalVideoEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, localVideoEvent, 0L);
        yw.e eVar = new yw.e(true, false);
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = yw.e.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, eVar, 0L);
        Context contextO = context;
        if (contextO instanceof Application) {
            contextO = com.transsion.baselib.report.k.f42210a.o();
        }
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new LocalVideoNotExistUtil$showErrorDialog$1(contextO, z10, str, list, str2, z11, i10, null), 3, null);
    }

    public final void v(Context context, DownloadBean bean, int i10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(bean, "bean");
        boolean z10 = bean.getStatus() == 10;
        List<DownloadBean> seriesList = bean.getSeriesList();
        String resourceId = bean.getResourceId();
        if (resourceId == null) {
            resourceId = bean.getUrl();
        }
        x(context, z10, seriesList, resourceId, bean.getPath(), bean.isSeries(), i10);
    }

    public final void w(Context context, String resourceId, String str, boolean z10, int i10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(resourceId, "resourceId");
        x(context, false, null, resourceId, str, z10, i10);
    }
}
