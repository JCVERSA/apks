package com.transsion.edcation;

import com.transsion.edcation.bean.CourseBean;
import com.transsion.edcation.bean.CourseListResp;
import com.transsion.moviedetailapi.bean.Pager;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$refreshCourseList$2$onSuccess$1", f = "CourseManager.kt", l = {87}, m = "invokeSuspend")
@SourceDebugExtension
final class CourseManager$refreshCourseList$2$onSuccess$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CourseListResp $data;
    final String $updateId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$refreshCourseList$2$onSuccess$1(CourseListResp courseListResp, String str, Continuation<? super CourseManager$refreshCourseList$2$onSuccess$1> continuation) {
        super(2, continuation);
        this.$data = courseListResp;
        this.$updateId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$refreshCourseList$2$onSuccess$1(this.$data, this.$updateId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<CourseBean> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        Object obj2 = null;
        if (i10 == 0) {
            ResultKt.b(obj);
            w0 w0VarI = CourseManager.f42905a.i();
            CourseListResp courseListResp = this.$data;
            Pager pager = courseListResp != null ? courseListResp.getPager() : null;
            this.label = 1;
            if (w0VarI.emit(pager, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        CourseListResp courseListResp2 = this.$data;
        if (courseListResp2 != null && (items = courseListResp2.getItems()) != null) {
            String str = this.$updateId;
            for (Object obj3 : items) {
                if (Intrinsics.c(((CourseBean) obj3).getSubjectId(), str)) {
                    obj2 = obj3;
                    break;
                }
            }
            CourseBean courseBean = (CourseBean) obj2;
            if (courseBean != null) {
                CourseManager.f42905a.p(courseBean);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$refreshCourseList$2$onSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
