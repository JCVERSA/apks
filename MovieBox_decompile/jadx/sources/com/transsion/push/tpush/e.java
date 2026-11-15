package com.transsion.push.tpush;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.transsion.lib.push.R$drawable;
import com.transsion.push.PushManager;
import com.transsion.push.TPushListener;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushNotification;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private static f f48870b;

    public static final e f48869a = new e();

    private static volatile String f48871c = "";

    private static volatile String f48872d = "";

    private static final Lazy f48873e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.e();
        }
    });

    public static final class a implements TPushListener {
        a() {
        }

        @Override
        public void onClickException(long j10, String str) {
            wf.a.f74274a.c("FCM_PUSH", "onClickException msgId " + j10 + " reason " + str, true);
        }

        @Override
        public void onMessageReceive(long j10, String str, int i10) {
            f fVarI = e.f48869a.i();
            if (fVarI != null) {
                fVarI.b(j10, str);
            }
        }

        @Override
        public void onNotificationShow(long j10, String str) {
            wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "onNotificationShow msgId " + j10 + " landingPage " + str, false, 4, null);
        }

        @Override
        public void onPushReceive(long j10, PushMessage pushMessage, int i10) {
        }

        @Override
        public void onSdkInitSuccess(String str, String str2) {
            wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "onSdkInitSuccess clientId " + str + "  token " + str2, false, 4, null);
            e eVar = e.f48869a;
            eVar.o(str == null ? "" : str);
            eVar.p(str2 != null ? str2 : "");
            f fVarI = eVar.i();
            if (fVarI != null) {
                fVarI.onSdkInitSuccess(str, str2);
            }
        }
    }

    private e() {
    }

    public static final OnCompleteListener e() {
        return new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                e.f(task);
            }
        };
    }

    public static final void f(Task task) {
        Intrinsics.h(task, "task");
        if (!task.isSuccessful()) {
            wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "firebase token getFailed " + task.getException(), false, 4, null);
            return;
        }
        String str = (String) task.getResult();
        f48872d = str == null ? "" : str;
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "firebase token " + str, false, 4, null);
        f fVar = f48870b;
        if (fVar != null) {
            Intrinsics.e(str);
            fVar.a(str);
        }
    }

    private final OnCompleteListener h() {
        return (OnCompleteListener) f48873e.getValue();
    }

    public static final void n(String str, Function1 function1, Task task) {
        Intrinsics.h(task, "task");
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "registerTopic " + str + " isSuccessful:" + task.isSuccessful(), false, 4, null);
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(task.isSuccessful()));
        }
    }

    private final void q(Context context) {
        PushManager.getInstance().addCustomNotification(new PushNotification.Builder().setSmallIcon(R$drawable.push_small_logo).setType(1).setShowDefaultLargeIcon(false).build());
        FirebaseMessaging.p().s().addOnCompleteListener(h());
        PushManager.getInstance().init(context);
        PushManager.getInstance().registerPushListener(new a());
    }

    public static final void s(String str, Task task) {
        Intrinsics.h(task, "task");
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "unregisterTopic " + str + " isSuccessful:" + task.isSuccessful(), false, 4, null);
    }

    public final String g() {
        return f48871c;
    }

    public final f i() {
        return f48870b;
    }

    public final String j() {
        return f48872d;
    }

    public final void k(Application context) {
        Object objM453constructorimpl;
        Intrinsics.h(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            f48869a.q(context);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "firebase onFailure error " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    public final void l(f listener) {
        Intrinsics.h(listener, "listener");
        f48870b = listener;
    }

    public final void m(final String topic, final Function1 function1) {
        Intrinsics.h(topic, "topic");
        FirebaseMessaging.p().O(topic).addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                e.n(topic, function1, task);
            }
        });
    }

    public final void o(String str) {
        Intrinsics.h(str, "<set-?>");
        f48871c = str;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        f48872d = str;
    }

    public final void r(final String topic) {
        Intrinsics.h(topic, "topic");
        FirebaseMessaging.p().R(topic).addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                e.s(topic, task);
            }
        });
    }
}
