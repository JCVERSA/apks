package com.transsion.postdetail.shorttv_pugc.factory;

import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ui.m0;

public final class PugcShortTvDownloadProvider implements vs.c {

    private vs.j f47266b;

    private final Lazy f47265a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PugcShortTvDownloadProvider.h();
        }
    });

    private final m0 f47267c = new a();

    public static final class a extends ui.a {
        a() {
        }

        @Override
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            vs.j jVar = PugcShortTvDownloadProvider.this.f47266b;
            if (jVar != null) {
                String ugcVideoId = bean.getUgcVideoId();
                Integer ugcVideoPosition = bean.getUgcVideoPosition();
                jVar.a(ugcVideoId, ugcVideoPosition != null ? ugcVideoPosition.intValue() : bean.getEp());
            }
        }
    }

    public static final com.transsnet.downloader.manager.g h() {
        return p.f57282a.a(Utils.a());
    }

    private final com.transsnet.downloader.manager.g i() {
        return (com.transsnet.downloader.manager.g) this.f47265a.getValue();
    }

    private final ShorttvModel.UGCVideo j(DownloadBean downloadBean) {
        ShorttvModel.UGCVideo uGCVideo = new ShorttvModel.UGCVideo(downloadBean.videoUGCId(), downloadBean.getTitleName(), null, null, new Cover(null, null, null, downloadBean.getUrl(), null, downloadBean.getThumbnail(), null, null, null, 471, null), null, downloadBean.getDuration(), null, null, null, downloadBean.getUgcVideoType(), null, new ShorttvModel.UGCVideoCreator(null, null, null, null, 15, null), new ShorttvModel.UGCVideoInteractiveInfo(null, null, null, null, null, null, null, 127, null), new ShorttvModel.UGCVideoCollection(downloadBean.getUgcVideoCollectionId(), null, Integer.valueOf(downloadBean.videoUGCPosition()), null, 10, null), downloadBean.getOps(), null, null, null, null, 0, false, null, false, 16714668, null);
        uGCVideo.setPlayUrl(downloadBean.getPath());
        return uGCVideo;
    }

    @Override
    public void a(FragmentActivity activity, String collectionId, String str, String str2, String str3, String str4, String str5) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(collectionId, "collectionId");
        DownloadManagerApi.f56187j.a().f0(activity, (7940 & 2) != 0 ? null : collectionId, (7940 & 4) != 0 ? null : null, (7940 & 8) != 0 ? null : str, (7940 & 16) != 0 ? null : UGCVideoType.SHORT_TV.getValue(), (7940 & 32) != 0 ? null : str3, (7940 & 64) != 0 ? null : str4, (7940 & 128) != 0 ? null : str5, (7940 & 256) != 0 ? null : null, (7940 & 512) != 0 ? null : null, (7940 & 1024) != 0 ? null : null, (7940 & 2048) != 0 ? false : false, (7940 & 4096) == 0 ? null : null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(String str, Continuation continuation) {
        PugcShortTvDownloadProvider$fetchDownloadList$1 pugcShortTvDownloadProvider$fetchDownloadList$1;
        if (continuation instanceof PugcShortTvDownloadProvider$fetchDownloadList$1) {
            pugcShortTvDownloadProvider$fetchDownloadList$1 = (PugcShortTvDownloadProvider$fetchDownloadList$1) continuation;
            int i10 = pugcShortTvDownloadProvider$fetchDownloadList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pugcShortTvDownloadProvider$fetchDownloadList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pugcShortTvDownloadProvider$fetchDownloadList$1 = new PugcShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
            }
        } else {
            pugcShortTvDownloadProvider$fetchDownloadList$1 = new PugcShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
        }
        Object objP = pugcShortTvDownloadProvider$fetchDownloadList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pugcShortTvDownloadProvider$fetchDownloadList$1.label;
        ArrayList arrayList = null;
        if (i11 == 0) {
            ResultKt.b(objP);
            if (str == null) {
                return null;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            pugcShortTvDownloadProvider$fetchDownloadList$1.label = 1;
            objP = downloadEsHelperA.P(str, pugcShortTvDownloadProvider$fetchDownloadList$1);
            if (objP == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objP);
        }
        List list = (List) objP;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((DownloadBean) obj).isCompleted()) {
                    arrayList2.add(obj);
                }
            }
            arrayList = new ArrayList(CollectionsKt.v(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(j((DownloadBean) it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public void c() {
        i().k(this.f47267c);
        this.f47266b = null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object d(String str, Continuation continuation) {
        PugcShortTvDownloadProvider$getDownloadUGCVideo$1 pugcShortTvDownloadProvider$getDownloadUGCVideo$1;
        if (continuation instanceof PugcShortTvDownloadProvider$getDownloadUGCVideo$1) {
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = (PugcShortTvDownloadProvider$getDownloadUGCVideo$1) continuation;
            int i10 = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = new PugcShortTvDownloadProvider$getDownloadUGCVideo$1(this, continuation);
            }
        } else {
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1 = new PugcShortTvDownloadProvider$getDownloadUGCVideo$1(this, continuation);
        }
        Object objR = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label;
        if (i11 == 0) {
            ResultKt.b(objR);
            if (str == null) {
                return null;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            pugcShortTvDownloadProvider$getDownloadUGCVideo$1.label = 1;
            objR = downloadEsHelperA.R(str, pugcShortTvDownloadProvider$getDownloadUGCVideo$1);
            if (objR == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objR);
        }
        DownloadBean downloadBean = (DownloadBean) objR;
        if (downloadBean != null) {
            return j(downloadBean);
        }
        return null;
    }

    @Override
    public void e(vs.j listener) {
        Intrinsics.h(listener, "listener");
        this.f47266b = listener;
        i().g(this.f47267c);
    }
}
