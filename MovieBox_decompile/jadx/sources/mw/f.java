package mw;

import com.therouter.TheRouter;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.TaskRewards;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f66730a = new f();

    private static final Lazy f66731b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.o();
        }
    });

    public static final class a implements im.d {

        final Function1 f66732a;

        a(Function1 function1) {
            this.f66732a = function1;
        }

        @Override
        public void a(MemberAdTaskInfo memberAdTaskInfo, boolean z10) {
            MemberTaskItem memberTaskItem;
            List<MemberTaskItem> list;
            Object next;
            if (memberAdTaskInfo == null || (list = memberAdTaskInfo.getList()) == null) {
                memberTaskItem = null;
            } else {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                    if (taskSubType != null && taskSubType.intValue() == 19) {
                        break;
                    }
                }
                memberTaskItem = (MemberTaskItem) next;
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            f fVar = f.f66730a;
            wf.a.C0922a.g(c0922a, fVar.l() + " --> fetchAdTaskInfo() --> 获取任务列表 -- taskId = " + (memberTaskItem != null ? memberTaskItem.getTaskId() : null), false, 2, null);
            if (memberTaskItem != null) {
                String taskId = memberTaskItem.getTaskId();
                if (taskId == null) {
                    taskId = "";
                }
                fVar.h(taskId, this.f66732a);
                return;
            }
            Function1 function1 = this.f66732a;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        }

        @Override
        public void b(MemberTaskInfo memberTaskInfo, boolean z10) {
            im.d.a.b(this, memberTaskInfo, z10);
        }
    }

    private f() {
    }

    private final void g(Function1 function1) {
        im.b bVarM = m();
        if (bVarM != null) {
            bVarM.s(new a(function1));
        }
    }

    public final void h(String str, final Function1 function1) {
        MemberTaskItem memberTaskItem = new MemberTaskItem(str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16777214, null);
        wf.a.C0922a.g(wf.a.f74274a, l() + " --> fetchAdTaskReward() --> 领取激活广告任务奖励 -- taskId = " + str, false, 2, null);
        im.b bVarM = m();
        if (bVarM != null) {
            bVarM.k(memberTaskItem, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return f.i(function1, (String) obj, (String) obj2);
                }
            }, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return f.k(function1, (TaskRewards) obj);
                }
            });
        }
    }

    public static final Unit i(final Function1 function1, String str, String str2) {
        new Function0() {
            @Override
            public final Object invoke() {
                return f.j(function1);
            }
        };
        return Unit.f64096a;
    }

    public static final Unit j(Function1 function1) {
        if (function1 == null) {
            return null;
        }
        function1.invoke(Boolean.FALSE);
        return Unit.f64096a;
    }

    public static final Unit k(Function1 function1, TaskRewards taskRewards) {
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
        return Unit.f64096a;
    }

    public final String l() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final im.b m() {
        return (im.b) f66731b.getValue();
    }

    public static final im.b o() {
        return (im.b) TheRouter.d(im.b.class, new Object[0]);
    }

    public final void n(Function1 function1) {
        g(function1);
    }
}
