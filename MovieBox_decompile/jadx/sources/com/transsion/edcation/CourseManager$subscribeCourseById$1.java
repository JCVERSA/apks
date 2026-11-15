package com.transsion.edcation;

import android.util.Log;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.edcation.bean.CourseBody;
import dg.d;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import yx.h;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.CourseManager$subscribeCourseById$1", f = "CourseManager.kt", l = {}, m = "invokeSuspend")
final class CourseManager$subscribeCourseById$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Integer $status;
    final String $subjectId;
    int label;

    static final class a implements h {

        public static final a f42921a = new a();

        a() {
        }

        @Override
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    public static final class b extends dg.a {

        final int f42922d;

        final String f42923e;

        b(int i10, String str) {
            this.f42922d = i10;
            this.f42923e = str;
        }

        @Override
        public void a(String str, String str2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error: ");
            sb2.append(str);
            sb2.append(", msg:");
            sb2.append(str2);
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.course_default_failed);
        }

        @Override
        public void c(String str) {
            super.c(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("data:");
            sb2.append(str);
            int i10 = this.f42922d;
            if (i10 == 0) {
                CourseManager.f42905a.p(new CourseBean(this.f42923e, null, i10, null, null, null, null, null, null, 0L, null, 2042, null));
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.course_remove_success);
            } else {
                CourseManager.r(CourseManager.f42905a, null, this.f42923e, 1, null);
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.course_add_success);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$subscribeCourseById$1(Integer num, String str, Continuation<? super CourseManager$subscribeCourseById$1> continuation) {
        super(2, continuation);
        this.$status = num;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$subscribeCourseById$1(this.$status, this.$subjectId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Integer num = this.$status;
        String str = this.$subjectId;
        try {
            Result.Companion companion = Result.INSTANCE;
            int i10 = (num != null && num.intValue() == 0) ? 1 : 0;
            c.a.d(CourseManager.f42905a.k(), null, new CourseBody(str, i10), 1, null).v(ey.a.c()).x(a.f42921a).f(d.f59034a.c()).subscribe(new b(i10, str));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Unit unit = (Unit) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
        if (unit != null) {
            Log.e("subscribeCourse", "error: " + unit);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$subscribeCourseById$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
