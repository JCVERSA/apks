package com.snaptube.taskManager;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.utils.RxBus;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import o.b29;
import o.d18;

public class TaskMessageCenter {
    public final b29 a = new b29();
    public final Handler b = new Handler(Looper.getMainLooper());

    public enum NotificationType {
        STATUS_CHANGED,
        PROGRESS_CHANGED,
        VISIBILITY_CHANGED,
        UNREAD_FLAG_CHANGED
    }

    public class a implements Runnable {
        public final Uri a;

        public a(Uri uri) {
            this.a = uri;
        }

        @Override
        public void run() {
            Pair pairZ = TaskInfoDBUtils.Z(this.a);
            if (pairZ != null) {
                if (pairZ.second == TaskInfo.TaskStatus.DELETED) {
                    TaskMessageCenter.e(TaskMessageCenter.this, (List) pairZ.first);
                    return;
                } else {
                    TaskMessageCenter.h(TaskMessageCenter.this, (List) pairZ.first, NotificationType.STATUS_CHANGED);
                    return;
                }
            }
            Pair pairA0 = TaskInfoDBUtils.a0(this.a);
            if (pairA0 != null) {
                TaskMessageCenter.g(TaskMessageCenter.this, ((Long) pairA0.first).longValue(), NotificationType.PROGRESS_CHANGED);
                return;
            }
            Pair pairC0 = TaskInfoDBUtils.c0(this.a);
            if (pairC0 != null) {
                TaskMessageCenter.g(TaskMessageCenter.this, ((Long) pairC0.first).longValue(), NotificationType.VISIBILITY_CHANGED);
                return;
            }
            Pair pairB0 = TaskInfoDBUtils.b0(this.a);
            if (pairB0 != null) {
                TaskMessageCenter.f(TaskMessageCenter.this, (String) pairB0.first, NotificationType.UNREAD_FLAG_CHANGED);
            }
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[NotificationType.values().length];
            a = iArr;
            try {
                iArr[NotificationType.STATUS_CHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[NotificationType.PROGRESS_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[NotificationType.VISIBILITY_CHANGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[NotificationType.UNREAD_FLAG_CHANGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class c extends d {
        @Override
        public void f(List list) {
        }

        @Override
        public void g(long j) {
        }

        @Override
        public void h(TaskInfo taskInfo) {
        }

        @Override
        public void i(TaskInfo taskInfo) {
        }

        @Override
        public void j(TaskInfo taskInfo) {
        }
    }

    public static abstract class d {
        public Handler a;

        public class a implements Runnable {
            public final TaskInfo a;

            public a(TaskInfo taskInfo) {
                this.a = taskInfo;
            }

            @Override
            public void run() {
                d.this.h(this.a);
            }
        }

        public class b implements Runnable {
            public final TaskInfo a;

            public b(TaskInfo taskInfo) {
                this.a = taskInfo;
            }

            @Override
            public void run() {
                d.this.i(this.a);
            }
        }

        public class c implements Runnable {
            public final List a;

            public c(List list) {
                this.a = list;
            }

            @Override
            public void run() {
                d.this.f(this.a);
            }
        }

        public class RunnableC0469d implements Runnable {
            public final TaskInfo a;

            public RunnableC0469d(TaskInfo taskInfo) {
                this.a = taskInfo;
            }

            @Override
            public void run() {
                d.this.j(this.a);
            }
        }

        public class e implements Runnable {
            public final long a;

            public e(long j) {
                this.a = j;
            }

            @Override
            public void run() {
                d.this.g(this.a);
            }
        }

        public d() {
        }

        public d(Handler handler) {
            this.a = handler;
        }

        public void a(TaskInfo taskInfo) {
            Handler handler = this.a;
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new b(taskInfo));
        }

        public void b(List list) {
            Handler handler = this.a;
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new c(list));
        }

        public void c(long j) {
            Handler handler = this.a;
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new e(j));
        }

        public void d(TaskInfo taskInfo) {
            Handler handler = this.a;
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new a(taskInfo));
        }

        public void e(TaskInfo taskInfo) {
            Handler handler = this.a;
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new RunnableC0469d(taskInfo));
        }

        public abstract void f(List list);

        public abstract void g(long j);

        public abstract void h(TaskInfo taskInfo);

        public abstract void i(TaskInfo taskInfo);

        public abstract void j(TaskInfo taskInfo);
    }

    public static void a(TaskMessageCenter taskMessageCenter, List list, NotificationType notificationType) {
        taskMessageCenter.n(list, notificationType);
    }

    public static void b(TaskMessageCenter taskMessageCenter, String str, NotificationType notificationType) {
        taskMessageCenter.l(str, notificationType);
    }

    public static void c(TaskMessageCenter taskMessageCenter, long j, NotificationType notificationType) {
        taskMessageCenter.m(j, notificationType);
    }

    public static void d(TaskMessageCenter taskMessageCenter, List list) {
        taskMessageCenter.k(list);
    }

    public static void e(TaskMessageCenter taskMessageCenter, List list) {
        taskMessageCenter.o(list);
    }

    public static void f(TaskMessageCenter taskMessageCenter, String str, NotificationType notificationType) {
        taskMessageCenter.u(str, notificationType);
    }

    public static void g(TaskMessageCenter taskMessageCenter, long j, NotificationType notificationType) {
        taskMessageCenter.v(j, notificationType);
    }

    public static void h(TaskMessageCenter taskMessageCenter, List list, NotificationType notificationType) {
        taskMessageCenter.w(list, notificationType);
    }

    public final List i() {
        LinkedList linkedList = new LinkedList();
        synchronized (this) {
            try {
                b29.b bVarB = this.a.b();
                while (true) {
                    d dVar = (d) bVarB.next();
                    if (dVar != null) {
                        linkedList.add(dVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return linkedList;
    }

    public final void j(TaskInfo taskInfo, NotificationType notificationType) {
        if (taskInfo == null) {
            return;
        }
        int i = b.a[notificationType.ordinal()];
        if (i == 1) {
            r(taskInfo);
            return;
        }
        if (i == 2) {
            q(taskInfo);
            return;
        }
        if (i == 3) {
            s(taskInfo);
        } else if (i == 4 && !taskInfo.t) {
            p(taskInfo.a);
        }
    }

    public final void k(List list) {
        Iterator it2 = i().iterator();
        while (it2.hasNext()) {
            ((d) it2.next()).b(list);
        }
    }

    public final void l(String str, NotificationType notificationType) {
        j(TaskInfoDBUtils.y0(str), notificationType);
    }

    public final void m(long j, NotificationType notificationType) {
        j(TaskInfoDBUtils.B0(j), notificationType);
    }

    public final void n(List list, NotificationType notificationType) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            j(TaskInfoDBUtils.B0(((Long) it2.next()).longValue()), notificationType);
        }
    }

    public final void o(List list) {
        TaskInfoDBUtils.C().execute(new d18(this, list));
    }

    public final void p(long j) {
        Iterator it2 = i().iterator();
        while (it2.hasNext()) {
            ((d) it2.next()).c(j);
        }
    }

    public final void q(TaskInfo taskInfo) {
        Iterator it2 = i().iterator();
        while (it2.hasNext()) {
            ((d) it2.next()).d(taskInfo);
        }
    }

    public final void r(TaskInfo taskInfo) {
        Iterator it2 = i().iterator();
        while (it2.hasNext()) {
            ((d) it2.next()).a(taskInfo);
        }
    }

    public final void s(TaskInfo taskInfo) {
        Iterator it2 = i().iterator();
        while (it2.hasNext()) {
            ((d) it2.next()).e(taskInfo);
        }
        RxBus.d().i(new RxBus.d(Sdk.SDKError.Reason.AD_NO_FILL_VALUE, taskInfo));
    }

    public void t(Uri uri) {
        this.b.post(new a(uri));
    }

    public final void u(String str, NotificationType notificationType) {
        TaskInfoDBUtils.C().execute(new com.snaptube.taskManager.c(this, str, notificationType));
    }

    public final void v(long j, NotificationType notificationType) {
        TaskInfoDBUtils.C().execute(new com.snaptube.taskManager.a(this, j, notificationType));
    }

    public final void w(List list, NotificationType notificationType) {
        TaskInfoDBUtils.C().execute(new com.snaptube.taskManager.b(this, list, notificationType));
    }

    public void x(d dVar) {
        synchronized (this) {
            this.a.c(dVar);
        }
    }

    public void y(d dVar) {
        synchronized (this) {
            this.a.d(dVar);
        }
    }
}
