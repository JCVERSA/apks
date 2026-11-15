package com.transsion.commercialization.task;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.lottery.LotteryUserInfoEntity;
import com.transsion.commercialization.task.treasure.CheckLotteryLoadingDialog;
import com.transsion.commercialization.task.treasure.TreasureStyleADialog;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.OpType;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class TaskCenterProvider implements wj.f {

    private final Lazy f42703a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TaskCenterProvider.l();
        }
    });

    public static final class a implements im.a {

        final wj.g f42705b;

        final MemberSceneType f42706c;

        final String f42707d;

        a(wj.g gVar, MemberSceneType memberSceneType, String str) {
            this.f42705b = gVar;
            this.f42706c = memberSceneType;
            this.f42707d = str;
        }

        public static final Unit h(TaskCenterProvider taskCenterProvider, MemberSceneType memberSceneType, Object obj) {
            wj.h.f74282a.a(taskCenterProvider.j() + " --> checkMemberRights() --> sceneType = " + memberSceneType + " --> success");
            return Unit.f64096a;
        }

        @Override
        public void a(MemberCheckResult memberCheckResult) {
            TaskCenterProvider.this.m(this.f42705b, memberCheckResult);
        }

        @Override
        public void b(MemberCheckResult memberCheckResult) {
            new DownloadInterceptAdHelper(this.f42705b, memberCheckResult, this.f42707d, false, 8, null).h();
        }

        @Override
        public void c(MemberCheckResult memberCheckResult) {
            im.a.C0761a.g(this, memberCheckResult);
            new TreasureStyleADialog().z0(memberCheckResult).x0(this.f42707d).A0(this.f42706c).y0(this.f42705b).k0(com.blankj.utilcode.util.a.b(), "TreasureStyleADialog");
        }

        @Override
        public void d(MemberCheckResult memberCheckResult) {
            new DownloadInterceptAdHelper(this.f42705b, memberCheckResult, this.f42707d, false, 8, null).h();
        }

        @Override
        public void e() {
            this.f42705b.onSuccess();
            wj.h.f74282a.a(TaskCenterProvider.this.j() + " --> checkMemberRights() --> passed() --> 会员权益通过验证 --> 继续下载任务");
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null) {
                OpType opType = OpType.OP_DOWNLOAD;
                final TaskCenterProvider taskCenterProvider = TaskCenterProvider.this;
                final MemberSceneType memberSceneType = this.f42706c;
                bVar.n(opType, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return TaskCenterProvider.a.h(taskCenterProvider, memberSceneType, obj);
                    }
                });
            }
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
            wj.h.f74282a.b(TaskCenterProvider.this.j() + " --> triggerDownload() --> showCheckMemberRights() --> notImplement() --> 当前类型没有实现");
        }

        @Override
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wj.h.f74282a.b(TaskCenterProvider.this.j() + " --> checkMemberRights() --> showCheckMemberRightsDialog() --> " + errorMsg);
            this.f42705b.onFail();
        }
    }

    public static final class b implements im.c {

        final wj.g f42709b;

        b(wj.g gVar) {
            this.f42709b = gVar;
        }

        @Override
        public void a() {
            wj.h.f74282a.a(TaskCenterProvider.this.j() + " --> showMemberPage() --> checkMember() --> onFailed() --> 开通会员失败");
            wj.g gVar = this.f42709b;
            if (gVar != null) {
                gVar.onFail();
            }
        }

        @Override
        public void onSuccess() {
            wj.h.f74282a.a(TaskCenterProvider.this.j() + " --> showMemberPage() --> checkMember() --> onSuccess() --> 开通会员成功，直接下载不需要做任务了");
            wj.g gVar = this.f42709b;
            if (gVar != null) {
                gVar.onSuccess();
            }
        }
    }

    private final void i(wj.g gVar, Integer num, String str, MemberSceneType memberSceneType) {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.d(memberSceneType, num, new a(gVar, memberSceneType, str));
        }
    }

    private final com.transsion.commercialization.task.treasure.b k() {
        return (com.transsion.commercialization.task.treasure.b) this.f42703a.getValue();
    }

    public static final com.transsion.commercialization.task.treasure.b l() {
        return (com.transsion.commercialization.task.treasure.b) kg.c.f63982e.a().h(com.transsion.commercialization.task.treasure.b.class);
    }

    public final void m(wj.g gVar, MemberCheckResult memberCheckResult) {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.x(com.blankj.utilcode.util.a.b(), MemberSource.SOURCE_OTHER_DOWNLOAD_DIALOG, memberCheckResult, new b(gVar));
        }
    }

    @Override
    public Object a(String str, String str2, boolean z10, Continuation continuation) {
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB != null) {
            new CheckLotteryLoadingDialog().x0(str, str2, z10).k0(activityB, "CheckLotteryLoadingDialog");
        }
        return Unit.f64096a;
    }

    @Override
    public void b(String genre, MemberCheckResult memberCheckResult, wj.g gVar) {
        Intrinsics.h(genre, "genre");
        new TreasureStyleADialog().z0(memberCheckResult).x0(genre).A0(MemberSceneType.SCENE_MULTIDL).y0(gVar).k0(com.blankj.utilcode.util.a.b(), "TreasureStyleADialog");
    }

    @Override
    public void c(FragmentActivity fragmentActivity, Function1 function1) {
        new MemberPageVideoTaskDialog().t0(function1).k0(fragmentActivity, "MemberPageVideoTaskDialog");
    }

    @Override
    public void d(wj.g gVar) {
        new DownloadInterceptAdHelper(gVar, null, null, true, 6, null).h();
    }

    @Override
    public void e(Integer num, String str, wj.g listener, MemberSceneType sceneType) {
        Intrinsics.h(listener, "listener");
        Intrinsics.h(sceneType, "sceneType");
        wj.h.f74282a.b(j() + " --> interception() --> resolution = " + num + " -- genre = " + str + " -- sceneType = " + sceneType.getValue());
        i(listener, num, str, sceneType);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override
    public Object f(Continuation continuation) {
        TaskCenterProvider$getLotteryUserInfoEntity$1 taskCenterProvider$getLotteryUserInfoEntity$1;
        Object objM453constructorimpl;
        if (continuation instanceof TaskCenterProvider$getLotteryUserInfoEntity$1) {
            taskCenterProvider$getLotteryUserInfoEntity$1 = (TaskCenterProvider$getLotteryUserInfoEntity$1) continuation;
            int i10 = taskCenterProvider$getLotteryUserInfoEntity$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                taskCenterProvider$getLotteryUserInfoEntity$1.label = i10 - Integer.MIN_VALUE;
            } else {
                taskCenterProvider$getLotteryUserInfoEntity$1 = new TaskCenterProvider$getLotteryUserInfoEntity$1(this, continuation);
            }
        } else {
            taskCenterProvider$getLotteryUserInfoEntity$1 = new TaskCenterProvider$getLotteryUserInfoEntity$1(this, continuation);
        }
        TaskCenterProvider$getLotteryUserInfoEntity$1 taskCenterProvider$getLotteryUserInfoEntity$2 = taskCenterProvider$getLotteryUserInfoEntity$1;
        Object objB = taskCenterProvider$getLotteryUserInfoEntity$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = taskCenterProvider$getLotteryUserInfoEntity$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                com.transsion.commercialization.task.treasure.b bVarK = k();
                taskCenterProvider$getLotteryUserInfoEntity$2.label = 1;
                objB = com.transsion.commercialization.task.treasure.b.a.b(bVarK, null, null, taskCenterProvider$getLotteryUserInfoEntity$2, 3, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            objM453constructorimpl = Result.m453constructorimpl(baseDto != null ? (LotteryUserInfoEntity) baseDto.getData() : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return objM453constructorimpl;
        }
        wj.h.f74282a.b(j() + " --> getLotteryUserInfoEntity() --> it = " + thM456exceptionOrNullimpl);
        return null;
    }

    public final String j() {
        String simpleName = TaskCenterProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }
}
