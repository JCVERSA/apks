package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfoList;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1", f = "UGCImmVideoDetailViewModel.kt", l = {582}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$fetchPlayInfoList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isCollectionList;
    final boolean $isLoadDown;
    final Pager $pager;
    final int $startPosition;
    final UGCVideoList $videoData;
    int label;
    final UGCImmVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {541, 543, 548, 577}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final UGCVideoList $videoData;
        private Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, UGCVideoList uGCVideoList, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$videoData = uGCVideoList;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$videoData, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:102:0x01f2  */
        /* JADX WARN: Code duplicated, block: B:105:0x020a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
        /* JADX WARN: Code duplicated, block: B:48:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:50:0x0108 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:53:0x010d  */
        /* JADX WARN: Code duplicated, block: B:54:0x0112  */
        /* JADX WARN: Code duplicated, block: B:57:0x0118  */
        /* JADX WARN: Code duplicated, block: B:66:0x0136  */
        /* JADX WARN: Code duplicated, block: B:67:0x0139  */
        /* JADX WARN: Code duplicated, block: B:70:0x0141  */
        /* JADX WARN: Code duplicated, block: B:71:0x0144  */
        /* JADX WARN: Code duplicated, block: B:74:0x0164  */
        /* JADX WARN: Code duplicated, block: B:76:0x017a A[PHI: r0 r1 r2 r3 r4
          0x017a: PHI (r0v16 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo) = 
          (r0v15 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
          (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
          (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
          (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
          (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
          (r0v19 com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo)
         binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
          0x017a: PHI (r1v24 java.util.Iterator) = 
          (r1v23 java.util.Iterator)
          (r1v25 java.util.Iterator)
          (r1v25 java.util.Iterator)
          (r1v25 java.util.Iterator)
          (r1v25 java.util.Iterator)
          (r1v25 java.util.Iterator)
         binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
          0x017a: PHI (r2v5 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel) = 
          (r2v4 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
          (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
          (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
          (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
          (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
          (r2v6 com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel)
         binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
          0x017a: PHI (r3v7 com.tn.lib.net.bean.BaseDto) = 
          (r3v6 com.tn.lib.net.bean.BaseDto)
          (r3v8 com.tn.lib.net.bean.BaseDto)
          (r3v8 com.tn.lib.net.bean.BaseDto)
          (r3v8 com.tn.lib.net.bean.BaseDto)
          (r3v8 com.tn.lib.net.bean.BaseDto)
          (r3v8 com.tn.lib.net.bean.BaseDto)
         binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]
          0x017a: PHI (r4v3 kotlinx.coroutines.flow.b) = 
          (r4v2 kotlinx.coroutines.flow.b)
          (r4v4 kotlinx.coroutines.flow.b)
          (r4v4 kotlinx.coroutines.flow.b)
          (r4v4 kotlinx.coroutines.flow.b)
          (r4v4 kotlinx.coroutines.flow.b)
          (r4v4 kotlinx.coroutines.flow.b)
         binds: [B:47:0x00ee, B:56:0x0116, B:58:0x011c, B:60:0x0122, B:63:0x012a, B:75:0x0166] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:78:0x0185  */
        /* JADX WARN: Code duplicated, block: B:81:0x0190  */
        /* JADX WARN: Code duplicated, block: B:83:0x0193  */
        /* JADX WARN: Code duplicated, block: B:84:0x0196  */
        /* JADX WARN: Code duplicated, block: B:86:0x019c  */
        /* JADX WARN: Code duplicated, block: B:89:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:92:0x01af  */
        /* JADX WARN: Code duplicated, block: B:95:0x01ba  */
        /* JADX WARN: Code duplicated, block: B:99:0x01c4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00ee -> B:76:0x017a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0106 -> B:51:0x0109). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:76:0x017a
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r27) {
            /*
                Method dump skipped, instruction units count: 537
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {581}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = bVar;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final UGCVideoList f54340a;

        final int f54341b;

        final boolean f54342c;

        final UGCImmVideoDetailViewModel f54343d;

        final boolean f54344e;

        final Pager f54345f;

        a(UGCVideoList uGCVideoList, int i10, boolean z10, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, boolean z11, Pager pager) {
            this.f54340a = uGCVideoList;
            this.f54341b = i10;
            this.f54342c = z10;
            this.f54343d = uGCImmVideoDetailViewModel;
            this.f54344e = z11;
            this.f54345f = pager;
        }

        @Override
        public final Object emit(UGCVideoPlayInfoList uGCVideoPlayInfoList, Continuation continuation) {
            List<UGCVideoPlayInfo> list;
            List<UGCVideoPlayInfo> items = uGCVideoPlayInfoList != null ? uGCVideoPlayInfoList.getItems() : null;
            UGCVideoList uGCVideoList = this.f54340a;
            List<UGCVideo> items2 = uGCVideoList != null ? uGCVideoList.getItems() : null;
            ArrayList arrayList = new ArrayList();
            List<UGCVideo> list2 = items2;
            if (list2 != null && !list2.isEmpty() && (list = items) != null && !list.isEmpty()) {
                List<UGCVideoPlayInfo> list3 = items;
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(list3, 10)), 16));
                for (Object obj : list3) {
                    linkedHashMap.put(((UGCVideoPlayInfo) obj).getUgcVideoId(), obj);
                }
                int i10 = this.f54341b;
                wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetailViewModel", "fetchPlayInfoList,isCollectionList:" + this.f54342c + ", startPos:" + i10 + ", endPos:" + (items2.size() + i10) + " ", false, 4, null);
                boolean z10 = this.f54342c;
                for (UGCVideo uGCVideo : items2) {
                    UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) linkedHashMap.get(uGCVideo.getUgcVideoId());
                    UGCImmVideo uGCImmVideo = new UGCImmVideo(uGCVideo, uGCVideoPlayInfo);
                    uGCImmVideo.setDownloadStatus(uGCVideoPlayInfo != null ? uGCVideoPlayInfo.getDownloadStatus() : 0);
                    uGCImmVideo.setCollectionList(z10);
                    arrayList.add(uGCImmVideo);
                }
            }
            this.f54343d.Y.q(arrayList.isEmpty() ? null : new UGCImmVideoContent(arrayList, this.f54344e, this.f54345f));
            if (this.f54342c && !arrayList.isEmpty()) {
                this.f54343d.E0(arrayList, this.f54344e);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$fetchPlayInfoList$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, UGCVideoList uGCVideoList, int i10, boolean z10, boolean z11, Pager pager, Continuation<? super UGCImmVideoDetailViewModel$fetchPlayInfoList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$videoData = uGCVideoList;
        this.$startPosition = i10;
        this.$isCollectionList = z10;
        this.$isLoadDown = z11;
        this.$pager = pager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$fetchPlayInfoList$1(this.this$0, this.$videoData, this.$startPosition, this.$isCollectionList, this.$isLoadDown, this.$pager, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$videoData, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$videoData, this.$startPosition, this.$isCollectionList, this.this$0, this.$isLoadDown, this.$pager);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$fetchPlayInfoList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
