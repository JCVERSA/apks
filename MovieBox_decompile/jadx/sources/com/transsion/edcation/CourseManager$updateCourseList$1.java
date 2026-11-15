package com.transsion.edcation;

import com.transsion.edcation.bean.CourseBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$updateCourseList$1", f = "CourseManager.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class CourseManager$updateCourseList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final List<CourseBean> $list;
    final String $page;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$updateCourseList$1(String str, List<CourseBean> list, Continuation<? super CourseManager$updateCourseList$1> continuation) {
        super(2, continuation);
        this.$page = str;
        this.$list = list;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$updateCourseList$1(this.$page, this.$list, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<CourseBean> arrayList;
        List<CourseBean> list;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                list = (List) this.L$0;
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
        if (Intrinsics.c(this.$page, "1")) {
            arrayList = this.$list;
        } else {
            arrayList = (List) CourseManager.f42905a.h().getValue();
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            List<CourseBean> list2 = this.$list;
            if (list2 != null) {
                arrayList.addAll(list2);
            }
        }
        list = arrayList;
        x0 x0VarH = CourseManager.f42905a.h();
        this.L$0 = list;
        this.label = 1;
        if (x0VarH.emit(list, this) == objF) {
            return objF;
        }
        x0 x0VarL = CourseManager.f42905a.l();
        CourseBean courseBean = list != null ? (CourseBean) CollectionsKt.k0(list) : null;
        this.L$0 = null;
        this.label = 2;
        if (x0VarL.emit(courseBean, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$updateCourseList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
