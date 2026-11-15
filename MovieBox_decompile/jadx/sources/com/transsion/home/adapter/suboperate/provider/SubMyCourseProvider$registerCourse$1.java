package com.transsion.home.adapter.suboperate.provider;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.edcation.CourseManager;
import com.transsion.edcation.bean.CourseBean;
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
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$registerCourse$1", f = "SubMyCourseProvider.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW}, m = "invokeSuspend")
final class SubMyCourseProvider$registerCourse$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final SubMyCourseProvider this$0;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/transsion/edcation/bean/CourseBean;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$registerCourse$1$1", f = "SubMyCourseProvider.kt", l = {85}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CourseBean, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final SubMyCourseProvider this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$registerCourse$1$1$1", f = "SubMyCourseProvider.kt", l = {}, m = "invokeSuspend")
        static final class C05991 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
            int label;
            final SubMyCourseProvider this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C05991(SubMyCourseProvider subMyCourseProvider, Continuation<? super C05991> continuation) {
                super(2, continuation);
                this.this$0 = subMyCourseProvider;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C05991(this.this$0, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.this$0.W();
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C05991) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubMyCourseProvider subMyCourseProvider, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = subMyCourseProvider;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(CourseBean courseBean, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(courseBean, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                this.this$0.f43368h = (CourseBean) this.L$0;
                a2 a2VarC = y0.c();
                C05991 c05991 = new C05991(this.this$0, null);
                this.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, c05991, this) == objF) {
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
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubMyCourseProvider$registerCourse$1(SubMyCourseProvider subMyCourseProvider, Continuation<? super SubMyCourseProvider$registerCourse$1> continuation) {
        super(2, continuation);
        this.this$0 = subMyCourseProvider;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubMyCourseProvider$registerCourse$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            x0 x0VarL = CourseManager.f42905a.l();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.label = 1;
            if (kotlinx.coroutines.flow.c.h(x0VarL, anonymousClass1, this) == objF) {
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubMyCourseProvider$registerCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
