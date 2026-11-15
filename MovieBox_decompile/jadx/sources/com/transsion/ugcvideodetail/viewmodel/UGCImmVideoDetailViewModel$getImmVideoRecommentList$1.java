package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import org.apache.tools.zip.UnixStat;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoRecommentList$1", f = "UGCImmVideoDetailViewModel.kt", l = {497}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getImmVideoRecommentList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefresh;
    final String $ugcVideoId;
    int label;
    final UGCImmVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {UnixStat.DEFAULT_DIR_PERM, 494}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final boolean $isRefresh;
        final String $ugcVideoId;
        private Object L$0;
        int label;
        final UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$isRefresh = z10;
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$ugcVideoId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRefresh, this.this$0, this.$ugcVideoId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            if (this.$isRefresh) {
                this.this$0.I = "";
            }
            ju.a aVarF = this.this$0.F();
            String str = this.$ugcVideoId;
            String strV0 = this.this$0.V0();
            String str2 = this.this$0.I;
            String str3 = str2 == null ? "" : str2;
            this.L$0 = bVar;
            this.label = 1;
            obj = ju.a.C0777a.b(aVarF, str, strV0, str3, 0, null, this, 24, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            Object data = baseDto.getData();
            if (!Intrinsics.c(baseDto.getCode(), "0")) {
                data = null;
            }
            this.L$0 = null;
            this.label = 2;
            if (bVar.emit(data, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {496}, m = "invokeSuspend")
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

        final UGCImmVideoDetailViewModel f54352a;

        a(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel) {
            this.f54352a = uGCImmVideoDetailViewModel;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0081  */
        @Override
        public final Object emit(UGCContentList uGCContentList, Continuation continuation) {
            UGCVideoList uGCVideoList;
            List<UGCVideo> items;
            List<UGCContent> items2;
            Pager pager;
            String nextPage;
            List<UGCVideo> items3;
            UGCVideoBelongToCollection belongToCollection;
            String collectionId;
            Integer videoNum;
            UGCVideoList uGCVideoList2;
            if (uGCContentList != null) {
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.f54352a;
                List<UGCContent> items4 = uGCContentList.getItems();
                if (items4 != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : items4) {
                        if (Intrinsics.c(((UGCContent) obj).getTopicType(), "UGC_VIDEO")) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        UGCVideo video = ((UGCContent) it.next()).getVideo();
                        if (video != null) {
                            String ops = video.getOps();
                            if (ops == null || ops.length() == 0) {
                                video.setOps(uGCImmVideoDetailViewModel.W0());
                            }
                        } else {
                            video = null;
                        }
                        if (video != null) {
                            arrayList2.add(video);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        arrayList2 = null;
                    }
                    if (arrayList2 != null) {
                        uGCVideoList2 = new UGCVideoList(CollectionsKt.U0(arrayList2), uGCContentList.getPager());
                    } else {
                        uGCVideoList2 = null;
                    }
                } else {
                    uGCVideoList2 = null;
                }
                uGCVideoList = uGCVideoList2;
            } else {
                uGCVideoList = null;
            }
            Map linkedHashMap = (Map) this.f54352a.W.f();
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            if (uGCVideoList != null && (items3 = uGCVideoList.getItems()) != null) {
                for (UGCVideo uGCVideo : items3) {
                    if (uGCVideo.getBelongToCollection() != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null && (collectionId = belongToCollection.getCollectionId()) != null) {
                        UGCVideoBelongToCollection belongToCollection2 = uGCVideo.getBelongToCollection();
                        linkedHashMap.put(collectionId, Boxing.d((belongToCollection2 == null || (videoNum = belongToCollection2.getVideoNum()) == null) ? 1 : videoNum.intValue()));
                    }
                }
            }
            this.f54352a.W.q(linkedHashMap);
            if (uGCContentList != null && (pager = uGCContentList.getPager()) != null && (nextPage = pager.getNextPage()) != null) {
                this.f54352a.I = nextPage;
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetailViewModel", "getImmVideoRecommentList,success:" + ((uGCContentList == null || (items2 = uGCContentList.getItems()) == null) ? null : Boxing.d(items2.size())) + ", videoList size:" + ((uGCVideoList == null || (items = uGCVideoList.getItems()) == null) ? null : Boxing.d(items.size())) + " ", false, 4, null);
            UGCImmVideoDetailViewModel.G0(this.f54352a, false, uGCVideoList, 0, false, uGCContentList != null ? uGCContentList.getPager() : null, 12, null);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getImmVideoRecommentList$1(boolean z10, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, Continuation<? super UGCImmVideoDetailViewModel$getImmVideoRecommentList$1> continuation) {
        super(2, continuation);
        this.$isRefresh = z10;
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getImmVideoRecommentList$1(this.$isRefresh, this.this$0, this.$ugcVideoId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$isRefresh, this.this$0, this.$ugcVideoId, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
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
        return ((UGCImmVideoDetailViewModel$getImmVideoRecommentList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
