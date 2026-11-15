package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoSubscriptionEntity;
import com.transsion.ugcvideodetail.api.bean.UGCVideoSubscriptionResponse;
import kotlin.Metadata;
import kotlin.Pair;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleSubscription$1", f = "UGCVideoDetailViewModel.kt", l = {583}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$toggleSubscription$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $subscribe;
    final String $targetUID;
    private Object L$0;
    int label;
    final UGCVideoDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleSubscription$1$1", f = "UGCVideoDetailViewModel.kt", l = {573, 576, 578}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final boolean $subscribe;
        final String $targetUID;
        private Object L$0;
        int label;
        final UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$targetUID = str;
            this.$subscribe = z10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$targetUID, this.$subscribe, continuation);
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
            UGCVideoSubscriptionEntity uGCVideoSubscriptionEntity = new UGCVideoSubscriptionEntity();
            String str = this.$targetUID;
            boolean z10 = this.$subscribe;
            uGCVideoSubscriptionEntity.setTargetUID(str);
            uGCVideoSubscriptionEntity.setSubscribe(z10);
            ju.a aVarF = this.this$0.F();
            this.L$0 = bVar;
            this.label = 1;
            obj = ju.a.C0777a.h(aVarF, uGCVideoSubscriptionEntity, null, this, 2, null);
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
                Intrinsics.f(data, "null cannot be cast to non-null type com.transsion.ugcvideodetail.api.bean.UGCVideoSubscriptionResponse");
                Boolean boolA = Boxing.a(((UGCVideoSubscriptionResponse) data).isSubscribed());
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
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$toggleSubscription$1$2", f = "UGCVideoDetailViewModel.kt", l = {582}, m = "invokeSuspend")
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

        final n0 f54403a;

        final UGCVideoDetailViewModel f54404b;

        final String f54405c;

        a(n0 n0Var, UGCVideoDetailViewModel uGCVideoDetailViewModel, String str) {
            this.f54403a = n0Var;
            this.f54404b = uGCVideoDetailViewModel;
            this.f54405c = str;
        }

        @Override
        public final Object emit(Boolean bool, Continuation continuation) {
            UGCVideoCreator creator;
            if (bool != null) {
                UGCVideoDetailViewModel uGCVideoDetailViewModel = this.f54404b;
                String str = this.f54405c;
                boolean zBooleanValue = bool.booleanValue();
                UGCVideo uGCVideo = (UGCVideo) uGCVideoDetailViewModel.f54379n.f();
                if (uGCVideo != null && (creator = uGCVideo.getCreator()) != null) {
                    creator.setHasSubscribe(Boxing.a(zBooleanValue));
                }
                uGCVideoDetailViewModel.F.q(new Pair(str, Boxing.a(zBooleanValue)));
            } else {
                this.f54404b.F.q(null);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$toggleSubscription$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, boolean z10, Continuation<? super UGCVideoDetailViewModel$toggleSubscription$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$targetUID = str;
        this.$subscribe = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCVideoDetailViewModel$toggleSubscription$1 uGCVideoDetailViewModel$toggleSubscription$1 = new UGCVideoDetailViewModel$toggleSubscription$1(this.this$0, this.$targetUID, this.$subscribe, continuation);
        uGCVideoDetailViewModel$toggleSubscription$1.L$0 = obj;
        return uGCVideoDetailViewModel$toggleSubscription$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$targetUID, this.$subscribe, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(n0Var, this.this$0, this.$targetUID);
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
        return ((UGCVideoDetailViewModel$toggleSubscription$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
