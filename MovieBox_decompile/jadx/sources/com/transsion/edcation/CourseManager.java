package com.transsion.edcation;

import androidx.fragment.app.FragmentManager;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.edcation.bean.CourseListResp;
import com.transsion.edcation.dialog.InterestSelectDialog;
import com.transsion.moviedetailapi.bean.Subject;
import dg.d;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import yx.h;

public final class CourseManager implements n0 {

    private static t1 f42913i;

    public static final CourseManager f42905a = new CourseManager();

    private static final Lazy f42906b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CourseManager.o();
        }
    });

    private static final Lazy f42907c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(CourseManager.n());
        }
    });

    private static boolean f42908d = true;

    private static final w0 f42909e = c1.b(0, 0, null, 7, null);

    private static final x0 f42910f = i1.a(null);

    private static final x0 f42911g = i1.a(new ArrayList());

    private static final w0 f42912h = c1.b(0, 0, null, 7, null);

    private static final CoroutineContext f42914j = y0.b().plus(l2.b(null, 1, null));

    static final class a implements h {

        public static final a f42915a = new a();

        a() {
        }

        @Override
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    private CourseManager() {
    }

    public final c k() {
        return (c) f42906b.getValue();
    }

    private final boolean m() {
        return ((Boolean) f42907c.getValue()).booleanValue();
    }

    public static final boolean n() {
        return com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("edu_interest_dialog", true);
    }

    public static final c o() {
        return (c) kg.c.f63982e.a().h(c.class);
    }

    public final void p(CourseBean courseBean) {
        t1 t1Var = f42913i;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f42913i = k.d(this, null, null, new CourseManager$notifyCourse$1(courseBean, null), 3, null);
    }

    public static void r(CourseManager courseManager, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "1";
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        courseManager.q(str, str2);
    }

    public static void u(CourseManager courseManager, Subject subject, Boolean bool, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bool = null;
        }
        courseManager.t(subject, bool);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(CourseBean courseBean, Continuation continuation) {
        CourseManager$updateCourse$1 courseManager$updateCourse$1;
        CourseBean courseBean2;
        List list;
        Object next;
        if (continuation instanceof CourseManager$updateCourse$1) {
            courseManager$updateCourse$1 = (CourseManager$updateCourse$1) continuation;
            int i10 = courseManager$updateCourse$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                courseManager$updateCourse$1.label = i10 - Integer.MIN_VALUE;
            } else {
                courseManager$updateCourse$1 = new CourseManager$updateCourse$1(this, continuation);
            }
        } else {
            courseManager$updateCourse$1 = new CourseManager$updateCourse$1(this, continuation);
        }
        Object obj = courseManager$updateCourse$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = courseManager$updateCourse$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                list = (List) courseManager$updateCourse$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        List list2 = (List) f42911g.getValue();
        if (list2 != null) {
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((CourseBean) next).getSubjectId(), courseBean.getSubjectId()));
            courseBean2 = (CourseBean) next;
        } else {
            courseBean2 = null;
        }
        if (courseBean2 != null) {
            Boxing.a(list2.remove(courseBean2));
        }
        if (courseBean.getSeenStatus() == 1 && list2 != null) {
            list2.add(0, courseBean);
        }
        x0 x0Var = f42911g;
        courseManager$updateCourse$1.L$0 = list2;
        courseManager$updateCourse$1.label = 1;
        if (x0Var.emit(list2, courseManager$updateCourse$1) == objF) {
            return objF;
        }
        list = list2;
        x0 x0Var2 = f42910f;
        CourseBean courseBean3 = list != null ? (CourseBean) CollectionsKt.k0(list) : null;
        courseManager$updateCourse$1.L$0 = null;
        courseManager$updateCourse$1.label = 2;
        if (x0Var2.emit(courseBean3, courseManager$updateCourse$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    public final void x(List list, String str) {
        k.d(this, null, null, new CourseManager$updateCourseList$1(str, list, null), 3, null);
    }

    public final void g(FragmentManager fragmentManager) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        if (m() && f42908d) {
            new InterestSelectDialog().show(fragmentManager, "InterestSelectDialog");
        }
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return f42914j;
    }

    public final x0 h() {
        return f42911g;
    }

    public final w0 i() {
        return f42912h;
    }

    public final w0 j() {
        return f42909e;
    }

    public final x0 l() {
        return f42910f;
    }

    public final void q(final String page, final String str) {
        Intrinsics.h(page, "page");
        c.a.b(k(), null, page, 0, 5, null).v(ey.a.c()).x(a.f42915a).f(d.f59034a.c()).subscribe(new dg.a() {
            @Override
            public void a(String str2, String str3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("error: ");
                sb2.append(str2);
                sb2.append(", msg:");
                sb2.append(str3);
            }

            @Override
            public void c(CourseListResp courseListResp) {
                List<CourseBean> items;
                List<CourseBean> items2;
                super.c(courseListResp);
                List listU0 = null;
                Integer numValueOf = (courseListResp == null || (items2 = courseListResp.getItems()) == null) ? null : Integer.valueOf(items2.size());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("list is empty: ");
                sb2.append(numValueOf);
                CourseManager courseManager = CourseManager.f42905a;
                k.d(courseManager, null, null, new CourseManager$refreshCourseList$2$onSuccess$1(courseListResp, str, null), 3, null);
                if (courseListResp != null && (items = courseListResp.getItems()) != null) {
                    listU0 = CollectionsKt.U0(items);
                }
                courseManager.x(listU0, page);
            }
        });
    }

    public final void s(boolean z10) {
        f42908d = z10;
    }

    public final void t(Subject subject, Boolean bool) {
        if (subject == null) {
            return;
        }
        k.d(this, null, null, new CourseManager$subscribeCourse$1(subject, bool, null), 3, null);
    }

    public final void v(String str, Integer num) {
        if (str == null) {
            return;
        }
        k.d(this, null, null, new CourseManager$subscribeCourseById$1(num, str, null), 3, null);
    }
}
