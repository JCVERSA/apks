package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1", f = "UGCVideoDetailViewModel.kt", l = {393}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoPlayList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $collectionId;
    final int $endPosition;
    final boolean $isLoadDown;
    final int $startPosition;
    int label;
    final UGCVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$1", f = "UGCVideoDetailViewModel.kt", l = {378, 380, 385, 388}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $collectionId;
        final int $endPosition;
        final int $startPosition;
        private Object L$0;
        Object L$1;
        int label;
        final UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i10, int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$collectionId = str;
            this.$startPosition = i10;
            this.$endPosition = i11;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:52:0x0103 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            Object objJ;
            kotlinx.coroutines.flow.b bVar;
            BaseDto baseDto;
            List arrayList;
            List<UGCVideo> items;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            baseDto = (BaseDto) this.L$1;
                            bVar = (kotlinx.coroutines.flow.b) this.L$0;
                            ResultKt.b(obj);
                            data = baseDto.getData();
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 4;
                            if (bVar.emit(data, this) == objF) {
                                return objF;
                            }
                        } else if (i10 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                    ResultKt.b(obj);
                } else {
                    kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    bVar = bVar2;
                    objJ = obj;
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) this.L$0;
            ju.a aVarF = this.this$0.F();
            String str = this.$collectionId;
            int i11 = this.$startPosition;
            int i12 = this.$endPosition;
            this.L$0 = bVar3;
            this.label = 1;
            objJ = ju.a.C0777a.j(aVarF, str, i11, i12, 0, null, this, 24, null);
            if (objJ == objF) {
                return objF;
            }
            bVar = bVar3;
            baseDto = (BaseDto) objJ;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                UGCVideoList uGCVideoList = (UGCVideoList) baseDto.getData();
                List<UGCVideo> items2 = uGCVideoList != null ? uGCVideoList.getItems() : null;
                if (items2 != null && !items2.isEmpty()) {
                    UGCVideoList uGCVideoList2 = (UGCVideoList) baseDto.getData();
                    if (uGCVideoList2 == null || (items = uGCVideoList2.getItems()) == null) {
                        arrayList = new ArrayList();
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<T> it = items.iterator();
                        while (it.hasNext()) {
                            String ugcVideoId = ((UGCVideo) it.next()).getUgcVideoId();
                            if (ugcVideoId != null) {
                                arrayList2.add(ugcVideoId);
                            }
                        }
                        arrayList = CollectionsKt.U0(arrayList2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = this.this$0.z();
                        String str2 = this.$collectionId;
                        this.L$0 = bVar;
                        this.L$1 = baseDto;
                        this.label = 3;
                        if (uGCCollectionVideoGroupDaoZ.a(str2, arrayList, this) == objF) {
                            return objF;
                        }
                    }
                }
                data = baseDto.getData();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 4;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoPlayList$1$2", f = "UGCVideoDetailViewModel.kt", l = {392}, m = "invokeSuspend")
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

        final boolean f54395a;

        final int f54396b;

        final UGCVideoDetailViewModel f54397c;

        final String f54398d;

        final int f54399e;

        a(boolean z10, int i10, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i11) {
            this.f54395a = z10;
            this.f54396b = i10;
            this.f54397c = uGCVideoDetailViewModel;
            this.f54398d = str;
            this.f54399e = i11;
        }

        @Override
        public final Object emit(UGCVideoList uGCVideoList, Continuation continuation) {
            Pager pager;
            Integer totalCount;
            List<UGCVideo> items;
            List<UGCVideo> items2;
            if (uGCVideoList != null) {
                uGCVideoList.setLoadDown(this.f54395a);
            }
            int i10 = this.f54396b;
            if (uGCVideoList != null && (items2 = uGCVideoList.getItems()) != null) {
                Iterator<T> it = items2.iterator();
                while (it.hasNext()) {
                    ((UGCVideo) it.next()).setPlayListPosition(i10);
                    i10++;
                }
            }
            if (uGCVideoList != null && (items = uGCVideoList.getItems()) != null && !items.isEmpty()) {
                this.f54397c.A = this.f54398d;
                if (this.f54397c.B == 0 || this.f54397c.C == 0) {
                    this.f54397c.B = this.f54396b;
                    this.f54397c.C = this.f54399e;
                } else {
                    UGCVideoDetailViewModel uGCVideoDetailViewModel = this.f54397c;
                    uGCVideoDetailViewModel.B = Math.min(uGCVideoDetailViewModel.B, this.f54396b);
                    UGCVideoDetailViewModel uGCVideoDetailViewModel2 = this.f54397c;
                    uGCVideoDetailViewModel2.C = Math.max(uGCVideoDetailViewModel2.C, this.f54399e);
                }
                wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDetailViewModel", "Updated loaded playList range: collectionId=" + this.f54398d + ", range[" + this.f54397c.B + "-" + this.f54397c.C + "]", false, 4, null);
            }
            if (uGCVideoList != null && (pager = uGCVideoList.getPager()) != null && (totalCount = pager.getTotalCount()) != null) {
                this.f54397c.f54386u.q(Boxing.d(totalCount.intValue()));
            }
            this.f54397c.f54384s.q(uGCVideoList);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoPlayList$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, int i10, int i11, boolean z10, Continuation<? super UGCVideoDetailViewModel$getVideoPlayList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$collectionId = str;
        this.$startPosition = i10;
        this.$endPosition = i11;
        this.$isLoadDown = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoPlayList$1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, this.$isLoadDown, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$collectionId, this.$startPosition, this.$endPosition, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isLoadDown, this.$startPosition, this.this$0, this.$collectionId, this.$endPosition);
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
        return ((UGCVideoDetailViewModel$getVideoPlayList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
