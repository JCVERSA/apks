package com.avery.subtitle;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import m5.d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.avery.subtitle.SubtitleLoader$loadFromRemoteAsync$1", f = "SubtitleLoader.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE, 60}, m = "invokeSuspend")
final class SubtitleLoader$loadFromRemoteAsync$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SubtitleLoader.a $callback;
    final String $remoteSubtitlePath;
    final String $unicode;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.avery.subtitle.SubtitleLoader$loadFromRemoteAsync$1$1", f = "SubtitleLoader.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final SubtitleLoader.a $callback;
        final d $timedTextObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubtitleLoader.a aVar, d dVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = aVar;
            this.$timedTextObject = dVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.$timedTextObject, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$callback.a(this.$timedTextObject);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.avery.subtitle.SubtitleLoader$loadFromRemoteAsync$1$2", f = "SubtitleLoader.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final SubtitleLoader.a $callback;
        final Exception $e;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SubtitleLoader.a aVar, Exception exc, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$callback = aVar;
            this.$e = exc;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$callback, this.$e, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$callback.b(this.$e);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleLoader$loadFromRemoteAsync$1(String str, String str2, SubtitleLoader.a aVar, Continuation<? super SubtitleLoader$loadFromRemoteAsync$1> continuation) {
        super(2, continuation);
        this.$remoteSubtitlePath = str;
        this.$unicode = str2;
        this.$callback = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleLoader$loadFromRemoteAsync$1(this.$remoteSubtitlePath, this.$unicode, this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
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
            d dVarF = SubtitleLoader.f19263a.f(this.$remoteSubtitlePath, this.$unicode);
            a2 a2VarC = y0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, dVarF, null);
            this.label = 1;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            a2 a2VarC2 = y0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$callback, e10, null);
            this.label = 2;
            if (i.g(a2VarC2, anonymousClass2, this) == objF) {
                return objF;
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleLoader$loadFromRemoteAsync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
