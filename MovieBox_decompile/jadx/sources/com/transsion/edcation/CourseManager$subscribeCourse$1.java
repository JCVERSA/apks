package com.transsion.edcation;

import android.util.Log;
import com.transsion.edcation.bean.CourseBody;
import com.transsion.moviedetailapi.bean.Subject;
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
@DebugMetadata(c = "com.transsion.edcation.CourseManager$subscribeCourse$1", f = "CourseManager.kt", l = {}, m = "invokeSuspend")
final class CourseManager$subscribeCourse$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Subject $course;
    final Boolean $subscribeStatus;
    int label;

    static final class a implements h {

        public static final a f42918a = new a();

        a() {
        }

        @Override
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    public static final class b extends dg.a {

        final Subject f42919d;

        final int f42920e;

        b(Subject subject, int i10) {
            this.f42919d = subject;
            this.f42920e = i10;
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
            this.f42919d.setSeenStatus(Integer.valueOf(this.f42920e));
            CourseManager.f42905a.p(dk.a.a(this.f42919d));
            if (this.f42920e == 1) {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.course_add_success);
            } else {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.course_remove_success);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CourseManager$subscribeCourse$1(Subject subject, Boolean bool, Continuation<? super CourseManager$subscribeCourse$1> continuation) {
        super(2, continuation);
        this.$course = subject;
        this.$subscribeStatus = bool;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CourseManager$subscribeCourse$1(this.$course, this.$subscribeStatus, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Subject subject = this.$course;
        Boolean bool = this.$subscribeStatus;
        try {
            Result.Companion companion = Result.INSTANCE;
            String subjectId = subject.getSubjectId();
            if (subjectId == null) {
                return Unit.f64096a;
            }
            ?? BooleanValue = 0;
            BooleanValue = 0;
            if (bool != null) {
                BooleanValue = bool.booleanValue();
            } else {
                Integer seenStatus = subject.getSeenStatus();
                if (seenStatus != null && seenStatus.intValue() == 0) {
                    BooleanValue = 1;
                }
            }
            c.a.d(CourseManager.f42905a.k(), null, new CourseBody(subjectId, BooleanValue), 1, null).v(ey.a.c()).x(a.f42918a).f(d.f59034a.c()).subscribe(new b(subject, BooleanValue));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            Unit unit = (Unit) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
            if (unit != null) {
                Log.e("subscribeCourse", "error: " + unit);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CourseManager$subscribeCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
