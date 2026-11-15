package com.transsion.member;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.google.gson.JsonObject;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.member.dialog.CheckMemberRightsLoadingDialog;
import com.transsion.member.dialog.ClaimMemberDialog;
import com.transsion.member.dialog.MemberGuideDialog;
import com.transsion.member.dialog.MemberMiddleStateDialog;
import com.transsion.member.dialog.PurchaseSucceedDialog;
import com.transsion.memberapi.GlobalTaskInfo;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.OpType;
import com.transsion.memberapi.TaskRewards;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.flow.h1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

public final class MemberProvider implements im.b {

    private volatile MemberDetail f44947b;

    private volatile MemberTaskInfo f44948c;

    private ClaimMemberDialog f44952g;

    private final Lazy f44946a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MemberProvider.W();
        }
    });

    private final x0 f44949d = i1.a(null);

    private final x0 f44950e = i1.a(Boolean.FALSE);

    private String f44951f = "";

    public static final class a extends dg.a {

        final Function2 f44953d;

        final Function1 f44954e;

        a(Function2 function2, Function1 function1) {
            this.f44953d = function2;
            this.f44954e = function1;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("claimTaskReward error:" + str2);
            Function2 function2 = this.f44953d;
            if (function2 != null) {
                function2.invoke(str, str2);
            }
        }

        @Override
        public void c(TaskRewards taskRewards) {
            com.transsion.member.a.f45001a.a("claimTaskReward success");
            Function1 function1 = this.f44954e;
            if (function1 != null) {
                function1.invoke(taskRewards);
            }
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("fetchGlobalTasks failed, code: " + str + ", message: " + str2);
        }

        @Override
        public void c(GlobalTaskInfo globalTaskInfo) {
            super.c(globalTaskInfo);
            if (globalTaskInfo == null) {
                com.transsion.member.a.f45001a.b("fetchGlobalTasks data error");
                return;
            }
            com.transsion.member.a.f45001a.a("fetchGlobalTasks succeed " + globalTaskInfo.getTaskInfo());
            MemberProvider.this.f44949d.setValue(globalTaskInfo.getTaskInfo());
            MemberProvider.this.f44950e.setValue(Boolean.valueOf(globalTaskInfo.getTaskInfo() != null));
            hm.k.f61387a.T(globalTaskInfo.getGlobalTaskConf());
        }
    }

    static final class c implements yx.f {

        public static final c f44956a = new c();

        c() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
        }
    }

    public static final class d extends dg.a {

        final im.d f44957d;

        d(im.d dVar) {
            this.f44957d = dVar;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("fetchMemberAdTaskInfo onFailure:" + str + ", " + str2);
        }

        @Override
        public void c(MemberAdTaskInfo memberAdTaskInfo) {
            super.c(memberAdTaskInfo);
            com.transsion.member.a.f45001a.b("fetchMemberAdTaskInfo onSuccess:" + memberAdTaskInfo);
            im.d dVar = this.f44957d;
            if (dVar != null) {
                dVar.a(memberAdTaskInfo, false);
            }
        }
    }

    public static final class e extends dg.a {
        e() {
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("Fetch member detail failed " + str + ", " + str2);
        }

        @Override
        public void c(MemberDetail memberDetail) {
            super.c(memberDetail);
            if (memberDetail == null) {
                com.transsion.member.a.f45001a.b("Fetch member detail failed");
                return;
            }
            com.transsion.member.a.f45001a.a("Fetch member detail succeed " + memberDetail);
            MemberProvider.this.f44947b = memberDetail;
            w.f45184a.b().putString("MEMBER_JSON", com.blankj.utilcode.util.o.j(MemberProvider.this.f44947b));
        }
    }

    static final class f implements yx.f {
        f() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            MemberTaskInfo memberTaskInfo = (MemberTaskInfo) it.getData();
            if (memberTaskInfo != null) {
                MemberProvider memberProvider = MemberProvider.this;
                w.f45184a.b().putString("MEMBER_TASK_JSON", com.blankj.utilcode.util.o.j(memberTaskInfo));
                memberProvider.f44948c = memberTaskInfo;
                memberProvider.f44951f = memberProvider.U();
            }
        }
    }

    public static final class g extends dg.a {

        final im.d f44961e;

        g(im.d dVar) {
            this.f44961e = dVar;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("MemberProvider --> fetchMemberTaskInfo onFailure:" + str + ", " + str2);
            hm.k.f61387a.S(MemberProvider.this.f44948c);
            im.d dVar = this.f44961e;
            if (dVar != null) {
                dVar.b(MemberProvider.this.f44948c, true);
            }
        }

        @Override
        public void c(MemberTaskInfo memberTaskInfo) {
            super.c(memberTaskInfo);
            com.transsion.member.a.f45001a.b("MemberProvider --> fetchMemberTaskInfo onSuccess:" + memberTaskInfo);
            hm.k.f61387a.S(memberTaskInfo);
            im.d dVar = this.f44961e;
            if (dVar != null) {
                dVar.b(memberTaskInfo, false);
            }
        }
    }

    public static final class h extends dg.a {

        final Function1 f44962d;

        h(Function1 function1) {
            this.f44962d = function1;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("Upload operation stat failed " + str + ", " + str2);
            Function1 function1 = this.f44962d;
            if (function1 != null) {
                function1.invoke(null);
            }
        }

        @Override
        public void c(Object obj) {
            super.c(obj);
            com.transsion.member.a.f45001a.b("Upload operation stat succeed " + obj);
            Function1 function1 = this.f44962d;
            if (function1 != null) {
                function1.invoke("ok");
            }
        }
    }

    public MemberProvider() {
        Object objM453constructorimpl;
        String string = w.f45184a.b().getString("MEMBER_JSON", null);
        if (string == null || string.length() == 0) {
            this.f44947b = null;
        } else {
            try {
                this.f44947b = (MemberDetail) com.blankj.utilcode.util.o.d(string, MemberDetail.class);
            } catch (Exception unused) {
                this.f44947b = null;
            }
        }
        String string2 = w.f45184a.b().getString("MEMBER_TASK_JSON", null);
        if (string2 != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl((MemberTaskInfo) com.blankj.utilcode.util.o.d(string2, MemberTaskInfo.class));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            this.f44948c = (MemberTaskInfo) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
        }
        if (z()) {
            ObserveLoginAction.f44995c.a().j();
        }
    }

    public static final Unit R(Function2 function2, String str, String str2) {
        if (function2 != null) {
            function2.invoke(str, str2);
        }
        fh.b.a aVar = fh.b.f60176a;
        if (str2 == null) {
            return Unit.f64096a;
        }
        aVar.e(str2);
        return Unit.f64096a;
    }

    public static final Unit S(MemberProvider memberProvider, Function0 function0, TaskRewards taskRewards) {
        memberProvider.f44949d.setValue(null);
        memberProvider.f44950e.setValue(Boolean.FALSE);
        if (taskRewards != null && taskRewards.getTips() != null) {
            fh.b.f60176a.e(taskRewards.getTips());
        }
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f64096a;
    }

    public final String T() {
        String simpleName = MemberProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final String U() {
        String str = new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date(Calendar.getInstance().getTimeInMillis() - ((long) 14400000)));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final fm.a V() {
        return (fm.a) this.f44946a.getValue();
    }

    public static final fm.a W() {
        return (fm.a) kg.c.f63982e.a().h(fm.a.class);
    }

    @Override
    public void A(Function0 function0) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new MemberProvider$checkShowAdState$1(this, function0, null), 3, null);
    }

    @Override
    public int B() {
        return w.f45184a.b().getInt("kv_parallel_download_task_num", 1);
    }

    @Override
    public void C(Activity activity, String title, String buttonTitle, im.j jVar) {
        Intrinsics.h(title, "title");
        Intrinsics.h(buttonTitle, "buttonTitle");
        PurchaseSucceedDialog purchaseSucceedDialog = new PurchaseSucceedDialog(title, buttonTitle, jVar);
        purchaseSucceedDialog.s0(jVar);
        purchaseSucceedDialog.t0(title);
        purchaseSucceedDialog.r0(buttonTitle);
        purchaseSucceedDialog.k0(activity, "PurchaseSucceedDialog");
    }

    @Override
    public void D(im.f listener) {
        Intrinsics.h(listener, "listener");
        ObserveLoginAction.f44995c.a().e(listener);
    }

    @Override
    public void E() {
        ClaimMemberDialog claimMemberDialog = this.f44952g;
        if (claimMemberDialog != null) {
            claimMemberDialog.r0();
        }
        this.f44952g = null;
    }

    @Override
    public h1 a() {
        return this.f44950e;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object b(MemberSceneType memberSceneType, Integer num, Function1 function1, Continuation continuation) {
        MemberProvider$checkMemberRights$1 memberProvider$checkMemberRights$1;
        Object objM453constructorimpl;
        if (continuation instanceof MemberProvider$checkMemberRights$1) {
            memberProvider$checkMemberRights$1 = (MemberProvider$checkMemberRights$1) continuation;
            int i10 = memberProvider$checkMemberRights$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                memberProvider$checkMemberRights$1.label = i10 - Integer.MIN_VALUE;
            } else {
                memberProvider$checkMemberRights$1 = new MemberProvider$checkMemberRights$1(this, continuation);
            }
        } else {
            memberProvider$checkMemberRights$1 = new MemberProvider$checkMemberRights$1(this, continuation);
        }
        Object objM = memberProvider$checkMemberRights$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = memberProvider$checkMemberRights$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    function1 = (Function1) memberProvider$checkMemberRights$1.L$0;
                    ResultKt.b(objM);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objM);
                }
                return Unit.f64096a;
            }
            ResultKt.b(objM);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("sceneType", memberSceneType != null ? memberSceneType.getValue() : null);
            if (num != null) {
                jsonObject.addProperty("resolution", num);
            }
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyCreate = companion.create(string, MediaType.INSTANCE.parse("application/json"));
            Result.Companion companion2 = Result.INSTANCE;
            fm.a aVarV = V();
            String strA = gg.a.f61067a.a();
            memberProvider$checkMemberRights$1.L$0 = function1;
            memberProvider$checkMemberRights$1.label = 1;
            objM = aVarV.m(strA, requestBodyCreate, memberProvider$checkMemberRights$1);
            if (objM == objF) {
                return objF;
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objM);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            com.transsion.member.a.f45001a.b(T() + " --> checkMemberRights() ---> getOrElse() --> it = " + thM456exceptionOrNullimpl);
            objM453constructorimpl = null;
        }
        BaseDto baseDto = (BaseDto) objM453constructorimpl;
        if (function1 != null) {
            a2 a2VarC = y0.c();
            MemberProvider$checkMemberRights$2$1 memberProvider$checkMemberRights$2$1 = new MemberProvider$checkMemberRights$2$1(function1, baseDto, null);
            memberProvider$checkMemberRights$1.L$0 = null;
            memberProvider$checkMemberRights$1.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, memberProvider$checkMemberRights$2$1, memberProvider$checkMemberRights$1) == objF) {
                return objF;
            }
        }
        return Unit.f64096a;
    }

    @Override
    public boolean c() {
        return w.f45184a.b().getBoolean("kv_is_pay_enable_member", false);
    }

    @Override
    public void d(MemberSceneType sceneType, Integer num, im.a aVar) {
        Intrinsics.h(sceneType, "sceneType");
        CheckMemberRightsLoadingDialog checkMemberRightsLoadingDialog = new CheckMemberRightsLoadingDialog();
        checkMemberRightsLoadingDialog.u0(aVar);
        checkMemberRightsLoadingDialog.v0(sceneType, num);
        checkMemberRightsLoadingDialog.k0(com.blankj.utilcode.util.a.b(), "CheckMemberRightsDialog");
    }

    @Override
    public boolean e() {
        return w.f45184a.b().getBoolean("kv_is_skip_ad", false);
    }

    @Override
    public void f() {
        V().o(gg.a.f61067a.a()).f(dg.d.f59034a.c()).subscribe(new b());
    }

    @Override
    public void g(Integer num, im.a aVar) {
        com.transsion.member.a.f45001a.a(T() + " --> showCheckResolutionRightsDialog() --> 这里不需要判断了，统一下载的时候会有校验 ");
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override
    public void h() {
        hm.k.f61387a.Y();
    }

    @Override
    public boolean i(Fragment fragment) {
        return fragment instanceof MemberFragment;
    }

    @Override
    public void j(MemberDetail memberDetail) {
        this.f44947b = memberDetail;
    }

    @Override
    public void k(MemberTaskItem item, Function2 function2, Function1 function1) throws JSONException {
        Intrinsics.h(item, "item");
        JSONObject jSONObject = new JSONObject();
        com.transsion.member.a.f45001a.a("claimTaskReward taskId: " + item.getTaskId());
        Object taskId = item.getTaskId();
        if (taskId == null) {
            taskId = 0;
        }
        jSONObject.put("taskId", taskId);
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        V().j(gg.a.f61067a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).f(dg.d.f59034a.c()).subscribe(new a(function2, function1));
    }

    @Override
    public MemberDetail l() {
        return this.f44947b;
    }

    @Override
    public boolean m() {
        MemberInfo memberInfo;
        MemberDetail memberDetail = this.f44947b;
        if (memberDetail == null || (memberInfo = memberDetail.getMemberInfo()) == null) {
            return false;
        }
        return memberInfo.isActive();
    }

    @Override
    public void n(OpType opType, Function1 function1) {
        Intrinsics.h(opType, "opType");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("opType", opType.getValue());
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        V().h(gg.a.f61067a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).f(dg.d.f59034a.c()).subscribe(new h(function1));
    }

    @Override
    public void o() {
        V().k(gg.a.f61067a.a()).f(dg.d.f59034a.c()).subscribe(new e());
    }

    @Override
    public void p(im.d dVar) {
        V().n(gg.a.f61067a.a()).f(dg.d.f59034a.c()).h(new f()).subscribe(new g(dVar));
    }

    @Override
    public void q() {
        hm.k.f61387a.a0();
    }

    @Override
    public Fragment r() {
        Fragment fragmentK = TheRouter.c("/member/MemberFragment").k();
        return fragmentK == null ? new EmptyFragment() : fragmentK;
    }

    @Override
    public void s(im.d dVar) {
        V().l(gg.a.f61067a.a()).f(dg.d.f59034a.c()).h(c.f44956a).subscribe(new d(dVar));
    }

    @Override
    public void t() {
        hm.k.f61387a.W();
    }

    @Override
    public void u(Activity activity, MemberSource memberSource, im.c cVar, boolean z10, String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        if (z()) {
            MemberMiddleStateDialog memberMiddleStateDialogA = MemberMiddleStateDialog.INSTANCE.a(z10);
            memberMiddleStateDialogA.p0(cVar);
            memberMiddleStateDialogA.q0(memberSource);
            memberMiddleStateDialogA.r0(sceneId);
            memberMiddleStateDialogA.k0(activity, "MemberMiddleStateDialog");
            return;
        }
        com.transsion.member.a.f45001a.b(T() + " --> startMemberPage() --> 当前不开发会员功能");
    }

    @Override
    public void v(im.f listener) {
        Intrinsics.h(listener, "listener");
        ObserveLoginAction.f44995c.a().n(listener);
    }

    @Override
    public void w(float f10) {
        com.transsion.member.a.f45001a.a("checkMemberShipShow data:" + this.f44949d.getValue());
        try {
            if (this.f44949d.getValue() != null) {
                ClaimMemberDialog claimMemberDialog = new ClaimMemberDialog();
                claimMemberDialog.y0((MemberTaskItem) this.f44949d.getValue());
                claimMemberDialog.z0(com.blankj.utilcode.util.a0.a(f10));
                claimMemberDialog.k0(com.blankj.utilcode.util.a.b(), "ClaimMemberDialog");
                this.f44952g = claimMemberDialog;
            }
        } catch (Exception e10) {
            com.transsion.member.a.f45001a.b("checkMemberShipShow error:" + e10.getMessage());
        }
    }

    @Override
    public void x(Activity activity, MemberSource source, MemberCheckResult memberCheckResult, im.c callback) {
        Intrinsics.h(source, "source");
        Intrinsics.h(callback, "callback");
        MemberGuideDialog memberGuideDialog = new MemberGuideDialog();
        memberGuideDialog.r0(callback);
        memberGuideDialog.w0(source);
        memberGuideDialog.v0(memberCheckResult);
        memberGuideDialog.k0(activity, "MemberGuideDialog");
    }

    @Override
    public void y(final Function2 function2, final Function0 function0) throws JSONException {
        MemberTaskItem memberTaskItem = (MemberTaskItem) this.f44949d.getValue();
        if (memberTaskItem != null) {
            k(memberTaskItem, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return MemberProvider.R(function2, (String) obj, (String) obj2);
                }
            }, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MemberProvider.S(this.f45012a, function0, (TaskRewards) obj);
                }
            });
        }
    }

    @Override
    public boolean z() {
        return w.f45184a.b().getBoolean("kv_is_enable_member", true);
    }
}
