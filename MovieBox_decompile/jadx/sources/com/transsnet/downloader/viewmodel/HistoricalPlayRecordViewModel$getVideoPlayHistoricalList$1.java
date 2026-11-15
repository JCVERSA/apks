package com.transsnet.downloader.viewmodel;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1", f = "HistoricalPlayRecordViewModel.kt", l = {111, 113, 172, 174}, m = "invokeSuspend")
@SourceDebugExtension
final class HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefreshAll;
    final boolean $isWhole;
    Object L$0;
    int label;
    final HistoricalPlayRecordViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1(boolean z10, HistoricalPlayRecordViewModel historicalPlayRecordViewModel, boolean z11, Continuation<? super HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1> continuation) {
        super(2, continuation);
        this.$isRefreshAll = z10;
        this.this$0 = historicalPlayRecordViewModel;
        this.$isWhole = z11;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1(this.$isRefreshAll, this.this$0, this.$isWhole, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0125  */
    /* JADX WARN: Code duplicated, block: B:52:0x0131 A[LOOP:0: B:50:0x012b->B:52:0x0131, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x016b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0176  */
    @Override
    public final Object invokeSuspend(Object obj) {
        List arrayList;
        Object objD;
        Object objD2;
        List<VideoDetailPlayBean> list;
        Object objD3;
        List list2;
        Object objD4;
        List<UGCVideoDetailPlayBean> list3;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            arrayList = new ArrayList();
            if (this.$isRefreshAll) {
                VideoDetailPlayDao videoDetailPlayDaoV = this.this$0.V();
                int iM = this.this$0.M();
                this.L$0 = arrayList;
                this.label = 1;
                objD2 = videoDetailPlayDaoV.d(0, iM, this);
                if (objD2 == objF) {
                    return objF;
                }
                list = (List) objD2;
            } else {
                VideoDetailPlayDao videoDetailPlayDaoV2 = this.this$0.V();
                int iM2 = this.this$0.M();
                int i11 = this.this$0.f57855o;
                this.L$0 = arrayList;
                this.label = 2;
                objD = videoDetailPlayDaoV2.d(iM2, i11, this);
                if (objD == objF) {
                    return objF;
                }
                list = (List) objD;
            }
        } else if (i10 == 1) {
            arrayList = (List) this.L$0;
            ResultKt.b(obj);
            objD2 = obj;
            list = (List) objD2;
        } else {
            if (i10 != 2) {
                if (i10 == 3) {
                    list2 = (List) this.L$0;
                    ResultKt.b(obj);
                    objD4 = obj;
                    list3 = (List) objD4;
                    if (list3 != null) {
                        for (UGCVideoDetailPlayBean uGCVideoDetailPlayBean : list3) {
                            list2.add(new HistoricalPlayRecordBean(7, Boxing.e(uGCVideoDetailPlayBean.getTimeStamp()), TimeUtilKt.n(uGCVideoDetailPlayBean.getTimeStamp()), a0.f57862a.z(uGCVideoDetailPlayBean.getTimeStamp()), null, null, null, null, uGCVideoDetailPlayBean, PsExtractor.AUDIO_STREAM, null));
                        }
                    }
                    if (this.$isRefreshAll) {
                        this.this$0.i0(0);
                    }
                    if (list2.size() > 1) {
                        CollectionsKt.A(list2, new Comparator() {
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override
                            public final int compare(T t10, T t11) {
                                return ComparisonsKt.d(((HistoricalPlayRecordBean) t11).getUpdateTimeStamp(), ((HistoricalPlayRecordBean) t10).getUpdateTimeStamp());
                            }
                        });
                    }
                    HistoricalPlayRecordViewModel historicalPlayRecordViewModel = this.this$0;
                    historicalPlayRecordViewModel.i0(historicalPlayRecordViewModel.M() + list2.size());
                    this.this$0.I().n(this.this$0.z(list2, this.$isWhole));
                    return Unit.f64096a;
                }
                if (i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list2 = (List) this.L$0;
                ResultKt.b(obj);
                objD3 = obj;
                list3 = (List) objD3;
                if (list3 != null) {
                    while (r2.hasNext()) {
                        list2.add(new HistoricalPlayRecordBean(7, Boxing.e(uGCVideoDetailPlayBean.getTimeStamp()), TimeUtilKt.n(uGCVideoDetailPlayBean.getTimeStamp()), a0.f57862a.z(uGCVideoDetailPlayBean.getTimeStamp()), null, null, null, null, uGCVideoDetailPlayBean, PsExtractor.AUDIO_STREAM, null));
                    }
                }
                if (this.$isRefreshAll) {
                    this.this$0.i0(0);
                }
                if (list2.size() > 1) {
                    CollectionsKt.A(list2, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t10, T t11) {
                            return ComparisonsKt.d(((HistoricalPlayRecordBean) t11).getUpdateTimeStamp(), ((HistoricalPlayRecordBean) t10).getUpdateTimeStamp());
                        }
                    });
                }
                HistoricalPlayRecordViewModel historicalPlayRecordViewModel2 = this.this$0;
                historicalPlayRecordViewModel2.i0(historicalPlayRecordViewModel2.M() + list2.size());
                this.this$0.I().n(this.this$0.z(list2, this.$isWhole));
                return Unit.f64096a;
            }
            arrayList = (List) this.L$0;
            ResultKt.b(obj);
            objD = obj;
            list = (List) objD;
        }
        if (list != null) {
            for (VideoDetailPlayBean videoDetailPlayBean : list) {
                Integer subjectType = videoDetailPlayBean.getSubjectType();
                arrayList.add(new HistoricalPlayRecordBean((subjectType != null && subjectType.intValue() == 6) ? 6 : 7, Boxing.e(videoDetailPlayBean.getTimeStamp()), TimeUtilKt.n(videoDetailPlayBean.getTimeStamp()), a0.f57862a.z(videoDetailPlayBean.getTimeStamp()), null, null, null, videoDetailPlayBean, null, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, null));
            }
        }
        if (this.$isRefreshAll) {
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoU = this.this$0.U();
            int iM3 = this.this$0.M();
            this.L$0 = arrayList;
            this.label = 3;
            objD4 = uGCVideoDetailPlayDaoU.d(0, iM3, this);
            if (objD4 == objF) {
                return objF;
            }
            list2 = arrayList;
            list3 = (List) objD4;
            if (list3 != null) {
                while (r2.hasNext()) {
                    list2.add(new HistoricalPlayRecordBean(7, Boxing.e(uGCVideoDetailPlayBean.getTimeStamp()), TimeUtilKt.n(uGCVideoDetailPlayBean.getTimeStamp()), a0.f57862a.z(uGCVideoDetailPlayBean.getTimeStamp()), null, null, null, null, uGCVideoDetailPlayBean, PsExtractor.AUDIO_STREAM, null));
                }
            }
            if (this.$isRefreshAll) {
                this.this$0.i0(0);
            }
            if (list2.size() > 1) {
                CollectionsKt.A(list2, new Comparator() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public final int compare(T t10, T t11) {
                        return ComparisonsKt.d(((HistoricalPlayRecordBean) t11).getUpdateTimeStamp(), ((HistoricalPlayRecordBean) t10).getUpdateTimeStamp());
                    }
                });
            }
            HistoricalPlayRecordViewModel historicalPlayRecordViewModel3 = this.this$0;
            historicalPlayRecordViewModel3.i0(historicalPlayRecordViewModel3.M() + list2.size());
            this.this$0.I().n(this.this$0.z(list2, this.$isWhole));
            return Unit.f64096a;
        }
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoU2 = this.this$0.U();
        int iM4 = this.this$0.M();
        int i12 = this.this$0.f57855o;
        this.L$0 = arrayList;
        this.label = 4;
        objD3 = uGCVideoDetailPlayDaoU2.d(iM4, i12, this);
        if (objD3 == objF) {
            return objF;
        }
        list2 = arrayList;
        list3 = (List) objD3;
        if (list3 != null) {
            while (r2.hasNext()) {
                list2.add(new HistoricalPlayRecordBean(7, Boxing.e(uGCVideoDetailPlayBean.getTimeStamp()), TimeUtilKt.n(uGCVideoDetailPlayBean.getTimeStamp()), a0.f57862a.z(uGCVideoDetailPlayBean.getTimeStamp()), null, null, null, null, uGCVideoDetailPlayBean, PsExtractor.AUDIO_STREAM, null));
            }
        }
        if (this.$isRefreshAll) {
            this.this$0.i0(0);
        }
        if (list2.size() > 1) {
            CollectionsKt.A(list2, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(((HistoricalPlayRecordBean) t11).getUpdateTimeStamp(), ((HistoricalPlayRecordBean) t10).getUpdateTimeStamp());
                }
            });
        }
        HistoricalPlayRecordViewModel historicalPlayRecordViewModel4 = this.this$0;
        historicalPlayRecordViewModel4.i0(historicalPlayRecordViewModel4.M() + list2.size());
        this.this$0.I().n(this.this$0.z(list2, this.$isWhole));
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
