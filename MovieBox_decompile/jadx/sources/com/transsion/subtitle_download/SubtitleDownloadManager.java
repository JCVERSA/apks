package com.transsion.subtitle_download;

import android.text.TextUtils;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.subtitle_download.task.GetInStationSubtitleListTask;
import com.transsion.subtitle_download.task.q;
import com.transsion.subtitle_download.utils.ObserveNetworkState;
import com.transsion.subtitle_download.utils.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class SubtitleDownloadManager {

    public static final SubtitleDownloadManager f52963a = new SubtitleDownloadManager();

    private static SubtitleAppType f52964b = SubtitleAppType.MB;

    private static final CopyOnWriteArrayList f52965c = new CopyOnWriteArrayList();

    private static Function0 f52966d;

    private SubtitleDownloadManager() {
    }

    public final String i() {
        String simpleName = SubtitleDownloadManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b(a listener) {
        Intrinsics.h(listener, "listener");
        f52965c.add(listener);
    }

    public final Object c(String str, Continuation continuation) {
        Object objG = i.g(y0.b(), new SubtitleDownloadManager$deleteSubtitle$2(str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public final void d(SubtitleDownloadTable dbBean) {
        Intrinsics.h(dbBean, "dbBean");
        GetInStationSubtitleListTask.f52978a.h(dbBean);
    }

    public final void e(String str, String str2, String str3, String str4, String str5, int i10, int i11, int i12, int i13, String str6, Function1 function1) {
        GetInStationSubtitleListTask.f52978a.i(str, str2, str4, i11, i12, i13, str3, str5, str6, i10, function1);
    }

    public final void f(String str, String str2, String videoResourceId, String str3, String str4, String str5, String idType, Function1 function1) {
        Intrinsics.h(videoResourceId, "videoResourceId");
        Intrinsics.h(idType, "idType");
        GetInStationSubtitleListTask.f52978a.j(str, str2, videoResourceId, str3, str4, str5, idType, function1);
    }

    public final String g() {
        Function0 function0 = f52966d;
        if (function0 != null) {
            return (String) function0.invoke();
        }
        return null;
    }

    public final SubtitleAppType h() {
        return f52964b;
    }

    public final Object j(String str, Continuation continuation) {
        return i.g(y0.b(), new SubtitleDownloadManager$getSubtitleList$2(str, null), continuation);
    }

    public final void k(SubtitleAppType appType) {
        Intrinsics.h(appType, "appType");
        f52964b = appType;
        b.f53009a.b(i() + " --> init() --> 字幕下载工具初始化");
        ObserveNetworkState.f53007a.d();
    }

    public final void l(Function0 function0) {
        f52966d = function0;
    }

    public final Object m(SubtitleDownloadTable subtitleDownloadTable, Continuation continuation) {
        if (!TextUtils.isEmpty(subtitleDownloadTable.getPath()) && !TextUtils.isEmpty(subtitleDownloadTable.getResourceId()) && !TextUtils.isEmpty(subtitleDownloadTable.getId())) {
            Object objG = i.g(y0.b(), new SubtitleDownloadManager$migration$2(subtitleDownloadTable, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
        }
        b.f53009a.b(i() + " --> migration() --> 缺少必要字段 --> path = " + subtitleDownloadTable.getPath() + " -- resourceId = " + subtitleDownloadTable.getResourceId() + " -- id = " + subtitleDownloadTable.getId());
        return Unit.f64096a;
    }

    public final void n(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        q.f53006a.c(stDownloadTable);
        Iterator it = f52965c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onComplete(stDownloadTable);
        }
    }

    public final void o(Exception e10, SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        Iterator it = f52965c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onFail(e10, dbBean);
        }
    }

    public final void p(int i10, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        Iterator it = f52965c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onDownloading(i10, stDownloadTable);
        }
    }

    public final void q(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        Iterator it = f52965c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onSaveDownload(bean);
        }
    }

    public final void r(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        Iterator it = f52965c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onUnGzZip(stDownloadTable);
        }
    }

    public final void s(a listener) {
        Intrinsics.h(listener, "listener");
        f52965c.remove(listener);
    }
}
