package com.transsion.commercialization.gameres.aha;

import android.content.Context;
import android.view.View;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1", f = "AHAGameResLoader.kt", l = {45}, m = "invokeSuspend")
final class AHAGameResLoader$loadGameInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<View, Unit> $callback;
    final Context $context;
    final String $itemId;
    final String $pageName;
    int label;
    final AHAGameResLoader this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/commercialization/gameres/aha/c;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$1", f = "AHAGameResLoader.kt", l = {35, 37, 40}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $itemId;
        private Object L$0;
        int label;
        final AHAGameResLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, AHAGameResLoader aHAGameResLoader, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$itemId = str;
            this.this$0 = aHAGameResLoader;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$itemId, this.this$0, continuation);
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
            wf.a.f74274a.c("GameResLoader", "AHAGameRes getGameInfo,itemId:" + this.$itemId, true);
            a aVarG = this.this$0.g();
            String str = this.$itemId;
            String strF = this.this$0.f();
            this.L$0 = bVar;
            this.label = 1;
            obj = aVarG.a(str, strF, this);
            if (obj == objF) {
                return objF;
            }
            b bVar2 = (b) obj;
            Integer numA = bVar2.a();
            if (numA != null && numA.intValue() == 1000) {
                c cVarB = bVar2.b();
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(cVarB, this) == objF) {
                    return objF;
                }
            } else {
                wf.a.f74274a.c("GameResLoader", "AHAGameRes fail, code:" + bVar2.a() + ", msg:" + bVar2.c(), true);
                this.L$0 = null;
                this.label = 3;
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/commercialization/gameres/aha/c;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$2", f = "AHAGameResLoader.kt", l = {44}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        Object L$1;
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
                Throwable th2 = (Throwable) this.L$1;
                wf.a.f74274a.i("GameResLoader", "AHAGameRes getGameInfo error:" + th2.getMessage(), true);
                this.L$0 = null;
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
            anonymousClass2.L$1 = th2;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AHAGameResLoader$loadGameInfo$1(String str, AHAGameResLoader aHAGameResLoader, Function1<? super View, Unit> function1, Context context, String str2, Continuation<? super AHAGameResLoader$loadGameInfo$1> continuation) {
        super(2, continuation);
        this.$itemId = str;
        this.this$0 = aHAGameResLoader;
        this.$callback = function1;
        this.$context = context;
        this.$pageName = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AHAGameResLoader$loadGameInfo$1(this.$itemId, this.this$0, this.$callback, this.$context, this.$pageName, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$itemId, this.this$0, null)), new AnonymousClass2(null));
            final Function1<View, Unit> function1 = this.$callback;
            final AHAGameResLoader aHAGameResLoader = this.this$0;
            final Context context = this.$context;
            final String str = this.$pageName;
            final String str2 = this.$itemId;
            kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() {

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$3$1", f = "AHAGameResLoader.kt", l = {}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                    final Function1<View, Unit> $callback;
                    final Context $context;
                    final String $itemId;
                    final String $pageName;
                    final c $response;
                    int label;
                    final AHAGameResLoader this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(c cVar, Function1<? super View, Unit> function1, AHAGameResLoader aHAGameResLoader, Context context, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$response = cVar;
                        this.$callback = function1;
                        this.this$0 = aHAGameResLoader;
                        this.$context = context;
                        this.$pageName = str;
                        this.$itemId = str2;
                    }

                    @Override
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$response, this.$callback, this.this$0, this.$context, this.$pageName, this.$itemId, continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.f();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                        c cVar = this.$response;
                        if (cVar == null) {
                            this.$callback.invoke(null);
                        } else {
                            wf.a.C0922a.f(wf.a.f74274a, "GameResLoader", "AHAGameRes getGameInfo, success:" + cVar, false, 4, null);
                            Function1<View, Unit> function1 = this.$callback;
                            AHAGameResLoader aHAGameResLoader = this.this$0;
                            function1.invoke(aHAGameResLoader.e(this.$context, aHAGameResLoader.d(this.$pageName, this.$itemId, this.$response)));
                        }
                        return Unit.f64096a;
                    }

                    @Override
                    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                    }
                }

                @Override
                public final Object emit(c cVar, Continuation continuation) {
                    Object objG = i.g(y0.c(), new AnonymousClass1(cVar, function1, aHAGameResLoader, context, str, str2, null), continuation);
                    return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
                }
            };
            this.label = 1;
            if (aVarE.a(bVar, this) == objF) {
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
        return ((AHAGameResLoader$loadGameInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
