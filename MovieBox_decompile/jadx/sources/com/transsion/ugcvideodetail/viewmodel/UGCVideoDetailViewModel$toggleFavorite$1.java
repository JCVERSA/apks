package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoFavoriteResponse;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveEntity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleFavorite$1", f = "UGCVideoDetailViewModel.kt", l = {554}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$toggleFavorite$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isFavorite;
    final String $ugcVideoId;
    int label;
    final UGCVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleFavorite$1$1", f = "UGCVideoDetailViewModel.kt", l = {544, 547, 549}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final boolean $isFavorite;
        final String $ugcVideoId;
        private Object L$0;
        int label;
        final UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$ugcVideoId = str;
            this.$isFavorite = z10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$isFavorite, continuation);
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
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            UGCVideoInteractiveEntity uGCVideoInteractiveEntity = new UGCVideoInteractiveEntity();
            String str = this.$ugcVideoId;
            boolean z10 = this.$isFavorite;
            uGCVideoInteractiveEntity.setUgcVideoId(str);
            uGCVideoInteractiveEntity.setReqType(z10 ? 1 : 0);
            ju.a aVarF = this.this$0.F();
            this.L$0 = bVar;
            this.label = 1;
            obj = ju.a.C0777a.f(aVarF, uGCVideoInteractiveEntity, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                Object data = baseDto.getData();
                Intrinsics.f(data, "null cannot be cast to non-null type com.transsion.ugcvideodetail.api.bean.UGCVideoFavoriteResponse");
                Boolean boolA = Boxing.a(((UGCVideoFavoriteResponse) data).isAffected());
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(boolA, this) == objF) {
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleFavorite$1$2", f = "UGCVideoDetailViewModel.kt", l = {553}, m = "invokeSuspend")
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

        public static final a f54401a = new a();

        a() {
        }

        @Override
        public final Object emit(Boolean bool, Continuation continuation) {
            if (bool != null) {
                Intrinsics.c(bool, Boxing.a(false));
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$toggleFavorite$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, boolean z10, Continuation<? super UGCVideoDetailViewModel$toggleFavorite$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$isFavorite = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$toggleFavorite$1(this.this$0, this.$ugcVideoId, this.$isFavorite, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$isFavorite, null)), y0.b()), new AnonymousClass2(null));
            a aVar = a.f54401a;
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
        return ((UGCVideoDetailViewModel$toggleFavorite$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
