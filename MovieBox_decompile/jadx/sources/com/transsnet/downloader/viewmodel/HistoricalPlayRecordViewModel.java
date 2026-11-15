package com.transsnet.downloader.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.ShortTVPlayBean;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.moviedetailapi.SubjectType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.y0;

public final class HistoricalPlayRecordViewModel extends a {

    private int f57854n;

    private final androidx.p009lifecycle.b0 f57842b = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57843c = new androidx.p009lifecycle.b0();

    private final Lazy f57844d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.k0();
        }
    });

    private final androidx.p009lifecycle.b0 f57845e = new androidx.p009lifecycle.b0();

    private final Lazy f57846f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.h0();
        }
    });

    private final Lazy f57847g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.y();
        }
    });

    private final Lazy f57848h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.j0();
        }
    });

    private final Lazy f57849i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.m0();
        }
    });

    private final Lazy f57850j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.l0();
        }
    });

    private final Lazy f57851k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.a0();
        }
    });

    private final Lazy f57852l = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.b0();
        }
    });

    private String f57853m = "lastFormatTime";

    private int f57855o = 10;

    static List A(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return historicalPlayRecordViewModel.z(list, z10);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object D(AudioBean audioBean, Continuation continuation) {
        HistoricalPlayRecordViewModel$deleteAudioRecord$1 historicalPlayRecordViewModel$deleteAudioRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteAudioRecord$1) {
            historicalPlayRecordViewModel$deleteAudioRecord$1 = (HistoricalPlayRecordViewModel$deleteAudioRecord$1) continuation;
            int i10 = historicalPlayRecordViewModel$deleteAudioRecord$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteAudioRecord$1.label = i10 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteAudioRecord$1 = new HistoricalPlayRecordViewModel$deleteAudioRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteAudioRecord$1 = new HistoricalPlayRecordViewModel$deleteAudioRecord$1(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$deleteAudioRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = historicalPlayRecordViewModel$deleteAudioRecord$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            si.a aVarH = H();
            if (aVarH != null) {
                historicalPlayRecordViewModel$deleteAudioRecord$1.L$0 = audioBean;
                historicalPlayRecordViewModel$deleteAudioRecord$1.label = 1;
                if (aVarH.b(audioBean, historicalPlayRecordViewModel$deleteAudioRecord$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            audioBean = (AudioBean) historicalPlayRecordViewModel$deleteAudioRecord$1.L$0;
            ResultKt.b(obj);
        }
        a0.f57862a.t("delete --- " + audioBean.getTitle() + " ---audio recording");
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object E(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        HistoricalPlayRecordViewModel$deleteShortTVRecord$1 historicalPlayRecordViewModel$deleteShortTVRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteShortTVRecord$1) {
            historicalPlayRecordViewModel$deleteShortTVRecord$1 = (HistoricalPlayRecordViewModel$deleteShortTVRecord$1) continuation;
            int i10 = historicalPlayRecordViewModel$deleteShortTVRecord$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteShortTVRecord$1.label = i10 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteShortTVRecord$1 = new HistoricalPlayRecordViewModel$deleteShortTVRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteShortTVRecord$1 = new HistoricalPlayRecordViewModel$deleteShortTVRecord$1(this, continuation);
        }
        Object objE = historicalPlayRecordViewModel$deleteShortTVRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = historicalPlayRecordViewModel$deleteShortTVRecord$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(objE);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objE);
            }
            return Unit.f64096a;
        }
        ResultKt.b(objE);
        ShortTVPlayDao shortTVPlayDaoQ = Q();
        String subjectId = videoDetailPlayBean.getSubjectId();
        historicalPlayRecordViewModel$deleteShortTVRecord$1.label = 1;
        objE = shortTVPlayDaoQ.e(subjectId, historicalPlayRecordViewModel$deleteShortTVRecord$1);
        if (objE == objF) {
            return objF;
        }
        ShortTVPlayBean shortTVPlayBean = (ShortTVPlayBean) objE;
        if (shortTVPlayBean != null) {
            ShortTVPlayDao shortTVPlayDaoQ2 = Q();
            historicalPlayRecordViewModel$deleteShortTVRecord$1.label = 2;
            if (shortTVPlayDaoQ2.j(shortTVPlayBean, historicalPlayRecordViewModel$deleteShortTVRecord$1) == objF) {
                return objF;
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:? A[LOOP:0: B:23:0x0069->B:33:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        HistoricalPlayRecordViewModel$deleteStreamRecord$1 historicalPlayRecordViewModel$deleteStreamRecord$1;
        VideoDetailPlayBean videoDetailPlayBean2;
        Iterator it;
        VideoDetailPlayBean videoDetailPlayBean3;
        VideoDetailPlayDao videoDetailPlayDaoV;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteStreamRecord$1) {
            historicalPlayRecordViewModel$deleteStreamRecord$1 = (HistoricalPlayRecordViewModel$deleteStreamRecord$1) continuation;
            int i10 = historicalPlayRecordViewModel$deleteStreamRecord$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteStreamRecord$1.label = i10 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteStreamRecord$1 = new HistoricalPlayRecordViewModel$deleteStreamRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteStreamRecord$1 = new HistoricalPlayRecordViewModel$deleteStreamRecord$1(this, continuation);
        }
        Object objJ = historicalPlayRecordViewModel$deleteStreamRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = historicalPlayRecordViewModel$deleteStreamRecord$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                videoDetailPlayBean = (VideoDetailPlayBean) historicalPlayRecordViewModel$deleteStreamRecord$1.L$0;
                ResultKt.b(objJ);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) historicalPlayRecordViewModel$deleteStreamRecord$1.L$1;
                videoDetailPlayBean2 = (VideoDetailPlayBean) historicalPlayRecordViewModel$deleteStreamRecord$1.L$0;
                ResultKt.b(objJ);
            }
            while (it.hasNext()) {
                videoDetailPlayBean3 = (VideoDetailPlayBean) it.next();
                videoDetailPlayDaoV = V();
                historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean2;
                historicalPlayRecordViewModel$deleteStreamRecord$1.L$1 = it;
                historicalPlayRecordViewModel$deleteStreamRecord$1.label = 2;
                if (videoDetailPlayDaoV.h(videoDetailPlayBean3, historicalPlayRecordViewModel$deleteStreamRecord$1) == objF) {
                    return objF;
                }
            }
            a0.f57862a.t("delete --- " + videoDetailPlayBean2.getSubjectId() + " --- video recording --> success");
            return Unit.f64096a;
        }
        ResultKt.b(objJ);
        VideoDetailPlayDao videoDetailPlayDaoV2 = V();
        String subjectId = videoDetailPlayBean.getSubjectId();
        historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean;
        historicalPlayRecordViewModel$deleteStreamRecord$1.label = 1;
        objJ = videoDetailPlayDaoV2.j(subjectId, historicalPlayRecordViewModel$deleteStreamRecord$1);
        if (objJ == objF) {
            return objF;
        }
        List arrayList = (List) objJ;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        videoDetailPlayBean2 = videoDetailPlayBean;
        it = arrayList.iterator();
        while (it.hasNext()) {
            videoDetailPlayBean3 = (VideoDetailPlayBean) it.next();
            videoDetailPlayDaoV = V();
            historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean2;
            historicalPlayRecordViewModel$deleteStreamRecord$1.L$1 = it;
            historicalPlayRecordViewModel$deleteStreamRecord$1.label = 2;
            if (videoDetailPlayDaoV.h(videoDetailPlayBean3, historicalPlayRecordViewModel$deleteStreamRecord$1) == objF) {
                return objF;
            }
        }
        a0.f57862a.t("delete --- " + videoDetailPlayBean2.getSubjectId() + " --- video recording --> success");
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object G(DownloadBean downloadBean, Continuation continuation) {
        HistoricalPlayRecordViewModel$deleteVideoRecord$1 historicalPlayRecordViewModel$deleteVideoRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteVideoRecord$1) {
            historicalPlayRecordViewModel$deleteVideoRecord$1 = (HistoricalPlayRecordViewModel$deleteVideoRecord$1) continuation;
            int i10 = historicalPlayRecordViewModel$deleteVideoRecord$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteVideoRecord$1.label = i10 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteVideoRecord$1 = new HistoricalPlayRecordViewModel$deleteVideoRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteVideoRecord$1 = new HistoricalPlayRecordViewModel$deleteVideoRecord$1(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$deleteVideoRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = historicalPlayRecordViewModel$deleteVideoRecord$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            downloadBean.setRead(1);
            downloadBean.setLastPlayTimeStamp(0L);
            downloadBean.setReadProgress(0L);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            historicalPlayRecordViewModel$deleteVideoRecord$1.L$0 = downloadBean;
            historicalPlayRecordViewModel$deleteVideoRecord$1.label = 1;
            if (downloadEsHelperA.b0(downloadBean, historicalPlayRecordViewModel$deleteVideoRecord$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadBean = (DownloadBean) historicalPlayRecordViewModel$deleteVideoRecord$1.L$0;
            ResultKt.b(obj);
        }
        a0.f57862a.t("delete --- " + downloadBean.getName() + " --- video recording --> success");
        return Unit.f64096a;
    }

    private final si.a H() {
        return (si.a) this.f57847g.getValue();
    }

    private final ep.a K() {
        return (ep.a) this.f57851k.getValue();
    }

    private final ep.b L() {
        return (ep.b) this.f57852l.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:28:0x00dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:39:0x011a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x0126  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f2 -> B:36:0x00fc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0118 -> B:40:0x011b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object O(java.util.List r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel.O(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ShortTVPlayDao Q() {
        return (ShortTVPlayDao) this.f57848h.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object R(List list, Continuation continuation) {
        HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2 historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2;
        List arrayList;
        Object objO;
        if (continuation instanceof HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2) {
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = (HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2) continuation;
            int i10 = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label = i10 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            arrayList = new ArrayList();
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$0 = list;
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$1 = arrayList;
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label = 1;
            objO = DownloadEsHelper.O(downloadEsHelperA, false, historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2, 1, null);
            if (objO == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list2 = (List) historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$1;
            List list3 = (List) historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$0;
            ResultKt.b(obj);
            arrayList = list2;
            list = list3;
            objO = obj;
        }
        List list4 = (List) objO;
        if (list4 != null) {
            Iterator it = list4.iterator();
            while (it.hasNext()) {
                arrayList.add(c((DownloadBean) it.next()));
            }
        }
        if (list != null) {
            Boxing.a(list.addAll(arrayList));
        }
        T().n(A(this, arrayList, false, 2, null));
        return Unit.f64096a;
    }

    public final UGCVideoDetailPlayDao U() {
        return (UGCVideoDetailPlayDao) this.f57850j.getValue();
    }

    public final VideoDetailPlayDao V() {
        return (VideoDetailPlayDao) this.f57849i.getValue();
    }

    public static void X(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        historicalPlayRecordViewModel.W(z10, z11);
    }

    public final Object Z(HistoricalPlayRecordBean historicalPlayRecordBean, Continuation continuation) {
        Object objD;
        Object objF;
        Object objE;
        Object objG;
        if (historicalPlayRecordBean.getUgcVideo() != null) {
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoU = U();
            UGCVideoDetailPlayBean ugcVideo = historicalPlayRecordBean.getUgcVideo();
            Intrinsics.e(ugcVideo);
            Object objJ = uGCVideoDetailPlayDaoU.j(ugcVideo.getUgcVideoId(), continuation);
            return objJ == IntrinsicsKt.f() ? objJ : Unit.f64096a;
        }
        int type = historicalPlayRecordBean.getType();
        if (type == 1) {
            AudioBean audio = historicalPlayRecordBean.getAudio();
            if (audio != null && (objD = D(audio, continuation)) == IntrinsicsKt.f()) {
                return objD;
            }
        } else if (type == 7) {
            VideoDetailPlayBean streamVideo = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo != null && (objF = F(streamVideo, continuation)) == IntrinsicsKt.f()) {
                return objF;
            }
        } else if (type != 8) {
            DownloadBean video = historicalPlayRecordBean.getVideo();
            if (video != null && (objG = G(video, continuation)) == IntrinsicsKt.f()) {
                return objG;
            }
        } else {
            VideoDetailPlayBean streamVideo2 = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo2 != null && (objE = E(streamVideo2, continuation)) == IntrinsicsKt.f()) {
                return objE;
            }
        }
        return Unit.f64096a;
    }

    public static final ep.a a0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public static final ep.b b0() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    private final void d0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity) {
        boolean z10;
        AudioBean audio = historicalPlayRecordBean.getAudio();
        if (audio != null) {
            ep.a aVarK = K();
            if (aVarK != null ? aVarK.b(audio) : false) {
                ep.a aVarK2 = K();
                if (aVarK2 != null) {
                    z10 = aVarK2.f();
                }
                if (z10) {
                    ep.a aVarK3 = K();
                    if (aVarK3 != null) {
                        aVarK3.stop();
                        return;
                    }
                    return;
                }
            }
            ep.a aVarK4 = K();
            if (aVarK4 != null) {
                ep.a.C0724a.a(aVarK4, audio, false, 2, null);
            }
            ep.b bVarL = L();
            if (bVarL != null) {
                bVarL.a(new WeakReference(fragmentActivity), audio);
            }
        }
    }

    private final void e0(VideoDetailPlayBean videoDetailPlayBean, FragmentActivity fragmentActivity, String str) {
        Integer subjectType;
        String downloadFilePath = videoDetailPlayBean != null ? videoDetailPlayBean.getDownloadFilePath() : null;
        boolean zO = a0.f57862a.o(downloadFilePath);
        if (downloadFilePath == null || downloadFilePath.length() == 0 || !zO) {
            if (fragmentActivity != null) {
                Navigator.x(TheRouter.c("/movie/detail").F("subject_type", (videoDetailPlayBean == null || (subjectType = videoDetailPlayBean.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", videoDetailPlayBean != null ? videoDetailPlayBean.getSubjectId() : null).K("module_name", HistoricalPlayRecordViewModel.class.getSimpleName()), fragmentActivity, null, 2, null);
            }
        } else if (fragmentActivity != null) {
            DownloadManagerApi.f56187j.a().t0(fragmentActivity, videoDetailPlayBean.getId(), str);
        }
    }

    private final void f0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity, String str) {
        String subjectId;
        if (fragmentActivity != null) {
            Navigator navigatorF = TheRouter.c("/movie/detail").F("subject_type", SubjectType.MUSIC.getValue());
            VideoDetailPlayBean streamVideo = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo == null || (subjectId = streamVideo.getSubjectId()) == null) {
                DownloadBean video = historicalPlayRecordBean.getVideo();
                subjectId = video != null ? video.getSubjectId() : null;
            }
            Navigator.x(navigatorF.K("id", subjectId), fragmentActivity, null, 2, null);
        }
    }

    private final void g0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity, String str) {
        DownloadBean video = historicalPlayRecordBean.getVideo();
        if (video == null || fragmentActivity == null) {
            return;
        }
        if (video.isShotTV()) {
            Navigator.x(TheRouter.c(pr.a.f69252a.b()).K("id", video.getSubjectId()).F("ep", video.getEp()).K("ops", video.getOps()).G("ms", video.getReadProgress()), fragmentActivity, null, 2, null);
        } else {
            DownloadManagerApi.f56187j.a().s0(fragmentActivity, video, str);
        }
    }

    public static final x0 h0() {
        return i1.a(-1);
    }

    public static final ShortTVPlayDao j0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w1();
    }

    public static final androidx.p009lifecycle.b0 k0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final UGCVideoDetailPlayDao l0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public static final VideoDetailPlayDao m0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public static final si.a y() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).n1();
        }
        return null;
    }

    public final List z(List list, boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16, 0.75f, true);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HistoricalPlayRecordBean historicalPlayRecordBean = (HistoricalPlayRecordBean) it.next();
            if (linkedHashMap.containsKey(historicalPlayRecordBean.getOriginalFormatTime())) {
                List list2 = (List) linkedHashMap.get(historicalPlayRecordBean.getOriginalFormatTime());
                if (list2 != null) {
                    list2.add(historicalPlayRecordBean);
                }
            } else {
                String originalFormatTime = historicalPlayRecordBean.getOriginalFormatTime();
                if (originalFormatTime == null) {
                    originalFormatTime = "";
                }
                linkedHashMap.put(originalFormatTime, CollectionsKt.q(historicalPlayRecordBean));
            }
        }
        ArrayList arrayList = new ArrayList();
        String formatTime = "lastFormatTime";
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (z10 && !TextUtils.equals(((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), formatTime)) {
                formatTime = ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime();
                arrayList.add(new HistoricalPlayRecordMultipleEntity(1, null, ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), null));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = ((Iterable) entry.getValue()).iterator();
            while (it2.hasNext()) {
                arrayList2.add(new HistoricalPlayRecordMultipleEntity(2, (HistoricalPlayRecordBean) it2.next(), ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), null));
            }
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public final void B(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, Function0 callback) {
        Intrinsics.h(callback, "callback");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HistoricalPlayRecordViewModel$delete$2(historicalPlayRecordMultipleEntity, this, callback, null), 3, null);
    }

    public final void C(Function0 callback) {
        Intrinsics.h(callback, "callback");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HistoricalPlayRecordViewModel$deleteAll$2(this, callback, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 I() {
        return this.f57842b;
    }

    public final androidx.p009lifecycle.b0 J() {
        return this.f57843c;
    }

    public final int M() {
        return this.f57854n;
    }

    public final void N() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HistoricalPlayRecordViewModel$getOutsideLocalFileList$1(this, null), 2, null);
    }

    public final x0 P() {
        return (x0) this.f57846f.getValue();
    }

    public final void S() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1(this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 T() {
        return (androidx.p009lifecycle.b0) this.f57844d.getValue();
    }

    public final void W(boolean z10, boolean z11) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1(z11, this, z10, null), 2, null);
    }

    public final void Y() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HistoricalPlayRecordViewModel$loadVideoCover$1(this, null), 2, null);
    }

    public final void c0(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, FragmentActivity fragmentActivity, String str) {
        HistoricalPlayRecordBean historical;
        if (historicalPlayRecordMultipleEntity == null || historicalPlayRecordMultipleEntity.getType() == 1 || (historical = historicalPlayRecordMultipleEntity.getHistorical()) == null) {
            return;
        }
        int type = historical.getType();
        if (type == 1) {
            d0(historical, fragmentActivity);
            return;
        }
        if (type == 2 || type == 3 || type == 5) {
            g0(historical, fragmentActivity, str);
        } else if (type == 6) {
            f0(historical, fragmentActivity, str);
        } else {
            if (type != 7) {
                return;
            }
            e0(historical.getStreamVideo(), fragmentActivity, str);
        }
    }

    public final void i0(int i10) {
        this.f57854n = i10;
    }
}
