package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getUGCDetailForYouList$1", f = "UGCVideoDetailViewModel.kt", l = {496}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getUGCDetailForYouList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefresh;
    final String $ugcVideoId;
    final String $videoTitle;
    int label;
    final UGCVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getUGCDetailForYouList$1$1", f = "UGCVideoDetailViewModel.kt", l = {487, 489, 491}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final boolean $isRefresh;
        final String $ugcVideoId;
        final String $videoTitle;
        private Object L$0;
        int label;
        final UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$isRefresh = z10;
            this.this$0 = uGCVideoDetailViewModel;
            this.$ugcVideoId = str;
            this.$videoTitle = str2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRefresh, this.this$0, this.$ugcVideoId, this.$videoTitle, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objC;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    bVar = bVar2;
                    objC = obj;
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            if (this.$isRefresh) {
                this.this$0.f54366a = "";
            }
            ju.a aVarF = this.this$0.F();
            String str = this.$ugcVideoId;
            String str2 = this.$videoTitle;
            String str3 = this.this$0.f54366a;
            if (str3 == null) {
                str3 = "";
            }
            this.L$0 = bVar;
            this.label = 1;
            objC = ju.a.C0777a.c(aVarF, str, str2, str3, 0, null, this, 24, null);
            if (objC == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objC;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getUGCDetailForYouList$1$2", f = "UGCVideoDetailViewModel.kt", l = {495}, m = "invokeSuspend")
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

        final UGCVideoDetailViewModel f54394a;

        a(UGCVideoDetailViewModel uGCVideoDetailViewModel) {
            this.f54394a = uGCVideoDetailViewModel;
        }

        @Override
        public final Object emit(UGCContentList uGCContentList, Continuation continuation) {
            Pager pager;
            String nextPage;
            if (uGCContentList != null && (pager = uGCContentList.getPager()) != null && (nextPage = pager.getNextPage()) != null) {
                this.f54394a.f54366a = nextPage;
            }
            this.f54394a.D.q(uGCContentList);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getUGCDetailForYouList$1(boolean z10, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super UGCVideoDetailViewModel$getUGCDetailForYouList$1> continuation) {
        super(2, continuation);
        this.$isRefresh = z10;
        this.this$0 = uGCVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$videoTitle = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getUGCDetailForYouList$1(this.$isRefresh, this.this$0, this.$ugcVideoId, this.$videoTitle, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$isRefresh, this.this$0, this.$ugcVideoId, this.$videoTitle, null)), y0.b()), new AnonymousClass2(null));
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
        return ((UGCVideoDetailViewModel$getUGCDetailForYouList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
