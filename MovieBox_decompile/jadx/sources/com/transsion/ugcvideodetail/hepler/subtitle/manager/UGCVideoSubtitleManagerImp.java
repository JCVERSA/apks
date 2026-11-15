package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import yg.l;

public final class UGCVideoSubtitleManagerImp implements b {

    public static final a f54323f = new a(null);

    private Set f54324b = new CopyOnWriteArraySet();

    private final String f54325c = UGCVideoSubtitleManagerImp.class.getSimpleName();

    private final n0 f54326d = o0.a(y0.c());

    private final UGCVideoSubtitleManagerImp$resDownloadListener$1 f54327e = new UGCVideoSubtitleManagerImp$resDownloadListener$1(this);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void k(final DownloadBean downloadBean, final Function1 function1) {
        if (!downloadBean.isVideo() || downloadBean.isMusic()) {
            wf.a.C0922a.f(wf.a.f74274a, b.f54329a.c(), this.f54325c + " checkDownloadSubtitle fail， has no shorTvId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (!l.f76264a.e()) {
            wf.a.f74274a.x(b.f54329a.c(), this.f54325c + " checkDownloadSubtitle ,无网络不做检测", true);
            return;
        }
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f54325c + " checkUGCVideoSubtitle fail，UGC视频缺少ugcVideoId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f54325c + " checkUGCVideoSubtitle fail，UGC视频缺少resourceId（videoResourceId）", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String subtitleIdType = downloadBean.getSubtitleIdType();
        if (subtitleIdType == null) {
            subtitleIdType = downloadBean.getIsStream() ? "StreamId" : "ResourceId";
        }
        String str = subtitleIdType;
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f54325c + " checkUGCVideoSubtitle, name = " + downloadBean.getName() + " ugcVideoId:" + downloadBean.getUgcVideoId() + " collectionId:" + downloadBean.getUgcVideoCollectionId() + " videoResourceId:" + resourceId + " idType:" + str, true);
        SubtitleDownloadManager.f52963a.f(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), resourceId, downloadBean.getUgcVideoId(), downloadBean.getUgcVideoCollectionId(), downloadBean.getOps(), str, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoSubtitleManagerImp.m(this.f54333a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    static void l(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, DownloadBean downloadBean, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        uGCVideoSubtitleManagerImp.k(downloadBean, function1);
    }

    public static final Unit m(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        k.d(uGCVideoSubtitleManagerImp.f54326d, null, null, new UGCVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(function1, z10, uGCVideoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(String str, Continuation continuation) {
        UGCVideoSubtitleManagerImp$getSubtitleList$1 uGCVideoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof UGCVideoSubtitleManagerImp$getSubtitleList$1) {
            uGCVideoSubtitleManagerImp$getSubtitleList$1 = (UGCVideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i10 = uGCVideoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                uGCVideoSubtitleManagerImp$getSubtitleList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                uGCVideoSubtitleManagerImp$getSubtitleList$1 = new UGCVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            uGCVideoSubtitleManagerImp$getSubtitleList$1 = new UGCVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = uGCVideoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = uGCVideoSubtitleManagerImp$getSubtitleList$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f52963a;
            uGCVideoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            uGCVideoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, uGCVideoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) uGCVideoSubtitleManagerImp$getSubtitleList$1.L$0;
            ResultKt.b(obj);
        }
        List list2 = (List) obj;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                list.add(new ht.a((SubtitleDownloadTable) it.next()));
            }
        }
        return list;
    }

    @Override
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.b(listener);
    }

    @Override
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.s(listener);
    }

    @Override
    public void d(lt.c listener) {
        Intrinsics.h(listener, "listener");
        this.f54324b.add(listener);
    }

    @Override
    public void e(DownloadBean bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        l(this, bean, null, 2, null);
    }

    @Override
    public void f(lt.c listener) {
        Intrinsics.h(listener, "listener");
        this.f54324b.remove(listener);
    }

    @Override
    public void h(ht.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f52963a.d(bean.b());
    }
}
