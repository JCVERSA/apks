package com.transsion.edcation;

import com.transsion.edcation.bean.CourseBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$notifyCourse$1", f = "CourseManager.kt", l = {Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE}, m = "invokeSuspend")
final class CourseManager$notifyCourse$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CourseBean $course;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$notifyCourse$1(CourseBean courseBean, Continuation<? super CourseManager$notifyCourse$1> continuation) {
        super(2, continuation);
        this.$course = courseBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$notifyCourse$1(this.$course, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
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
        CourseManager courseManager = CourseManager.f42905a;
        CourseBean courseBean = this.$course;
        this.label = 1;
        if (courseManager.w(courseBean, this) == objF) {
            return objF;
        }
        w0 w0VarJ = CourseManager.f42905a.j();
        CourseBean courseBean2 = this.$course;
        this.label = 2;
        if (w0VarJ.emit(courseBean2, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$notifyCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
