package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.request.InviteUserShareInfoReq;
import com.transsion.member.constants.TaskType;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberTaskGroup;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskInviteRewards;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.SkuItem;
import com.transsion.payment.lib.bean.HttpErrorBodyBean;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import retrofit2.HttpException;

public final class MemberViewModel extends androidx.p009lifecycle.b {

    public static final a f44963o = new a(null);

    public static final int f44964p = 8;

    private final Lazy f44965b;

    private final Lazy f44966c;

    private final androidx.p009lifecycle.b0 f44967d;

    private final androidx.p009lifecycle.b0 f44968e;

    private final androidx.p009lifecycle.b0 f44969f;

    private final androidx.p009lifecycle.b0 f44970g;

    private final androidx.p009lifecycle.b0 f44971h;

    private final androidx.p009lifecycle.b0 f44972i;

    private final androidx.p009lifecycle.b0 f44973j;

    private final androidx.p009lifecycle.b0 f44974k;

    private Map f44975l;

    private io.reactivex.rxjava3.disposables.c f44976m;

    private io.reactivex.rxjava3.disposables.c f44977n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b implements yx.f {

        public static final b f44978a = new b();

        b() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            MemberDetail memberDetail = (MemberDetail) it.getData();
            if (memberDetail != null) {
                w.f45184a.b().putString("MEMBER_JSON", com.blankj.utilcode.util.o.j(memberDetail));
            }
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            MemberViewModel.this.f44967d.q(null);
        }

        @Override
        public void c(MemberDetail memberDetail) {
            super.c(memberDetail);
            MemberViewModel.this.f44967d.q(memberDetail);
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null) {
                bVar.j(memberDetail);
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            super.onSubscribe(d10);
            MemberViewModel.this.f44976m = d10;
        }
    }

    public static final class d implements im.d {
        d() {
        }

        @Override
        public void a(MemberAdTaskInfo memberAdTaskInfo, boolean z10) {
            im.d.a.a(this, memberAdTaskInfo, z10);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:54:0x00e2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:56:0x00a7 A[SYNTHETIC] */
        @Override
        public void b(MemberTaskInfo memberTaskInfo, boolean z10) {
            List<MemberTaskGroup> arrayList;
            ArrayList arrayList2 = new ArrayList();
            if (memberTaskInfo == null || (arrayList = memberTaskInfo.getList()) == null) {
                arrayList = new ArrayList<>();
            }
            for (MemberTaskGroup memberTaskGroup : arrayList) {
                List<MemberTaskItem> taskItems = memberTaskGroup.getTaskItems();
                if (!taskItems.isEmpty()) {
                    MemberTaskItem memberTaskItem = (MemberTaskItem) CollectionsKt.i0(taskItems);
                    List<MemberTaskItemInvite> inviteList = memberTaskItem.getInviteList();
                    boolean z11 = false;
                    boolean z12 = inviteList != null && (inviteList.isEmpty() ^ true);
                    List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
                    if (checkInList != null && (!checkInList.isEmpty())) {
                        z11 = true;
                    }
                    if (z12 || z11) {
                        arrayList2.add(new MemberTaskItem(null, null, Integer.valueOf(TaskType.TITLE.getValue()), null, null, memberTaskGroup.getGroupName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, memberTaskGroup.getGroupName(), memberTaskGroup.getGroupUrl(), memberTaskGroup.getGroupInfo(), 2097115, null));
                        for (MemberTaskItem memberTaskItem2 : taskItems) {
                            Integer taskSubType = memberTaskItem2.getTaskSubType();
                            int value = TaskType.DOWNLOAD_APP.getValue();
                            if (taskSubType == null || taskSubType.intValue() != value) {
                                Integer taskSubType2 = memberTaskItem2.getTaskSubType();
                                int value2 = TaskType.OPEN_APP.getValue();
                                if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                                    if (zh.b.f76790a.n()) {
                                    }
                                }
                                arrayList2.add(memberTaskItem2);
                            } else if (zh.b.f76790a.n()) {
                                arrayList2.add(memberTaskItem2);
                            }
                        }
                    }
                }
            }
            MemberViewModel.this.f44970g.q(arrayList2);
        }
    }

    static final class e implements yx.h {

        public static final e f44981a = new e();

        e() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(Throwable it) {
            Intrinsics.h(it, "it");
            String string = w.f45184a.b().getString("SKU_LIST_JSON", null);
            if (string == null || string.length() == 0) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
            try {
                SkuData skuData = (SkuData) com.blankj.utilcode.util.o.e(string, com.blankj.utilcode.util.o.h(SkuData.class, new Type[0]));
                BaseDto baseDto = new BaseDto();
                baseDto.setCode("0");
                baseDto.setData(skuData);
                return io.reactivex.rxjava3.core.j.t(baseDto);
            } catch (Exception unused) {
                return io.reactivex.rxjava3.core.j.l(it);
            }
        }
    }

    static final class f implements yx.f {

        public static final f f44982a = new f();

        f() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            SkuData skuData = (SkuData) it.getData();
            if (skuData != null) {
                List<SkuItem> skuList = skuData.getSkuList();
                List<SkuItem> listK0 = skuList != null ? CollectionsKt.K0(skuList, 3) : null;
                if (listK0 == null) {
                    listK0 = CollectionsKt.l();
                }
                skuData.setSkuList(listK0);
                List<SkuItem> skuPointList = skuData.getSkuPointList();
                List<SkuItem> listK1 = skuPointList != null ? CollectionsKt.K0(skuPointList, 3) : null;
                if (listK1 == null) {
                    listK1 = CollectionsKt.l();
                }
                skuData.setSkuPointList(listK1);
                w.f45184a.b().putString("SKU_LIST_JSON", com.blankj.utilcode.util.o.j(skuData));
            }
        }
    }

    public static final class g extends dg.a {
        g() {
        }

        @Override
        public void a(String str, String str2) {
            MemberViewModel.this.f44968e.q(null);
        }

        @Override
        public void c(SkuData skuData) {
            super.c(skuData);
            MemberViewModel.this.f44968e.q(skuData);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            super.onSubscribe(d10);
            MemberViewModel.this.f44977n = d10;
        }
    }

    public static final class h extends dg.a {
        h() {
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("requestInviteUserMore failed " + str + ", " + str2);
            MemberViewModel.this.f44973j.q(null);
        }

        @Override
        public void c(MemberTaskInviteRewards memberTaskInviteRewards) {
            super.c(memberTaskInviteRewards);
            com.transsion.member.a.f45001a.b("requestInviteUserMore onSuccess:" + memberTaskInviteRewards);
            MemberViewModel.this.f44973j.q(memberTaskInviteRewards);
        }
    }

    static final class i implements yx.g {

        public static final i f44985a = new i();

        i() {
        }

        @Override
        public final Triple a(BaseDto response1, BaseDto response2, BaseDto response3) {
            Intrinsics.h(response1, "response1");
            Intrinsics.h(response2, "response2");
            Intrinsics.h(response3, "response3");
            return new Triple(response1.getData(), response2.getData(), response3.getData());
        }
    }

    static final class j implements yx.f {
        j() {
        }

        @Override
        public final void accept(Triple it) {
            Intrinsics.h(it, "it");
            androidx.p009lifecycle.b0 b0Var = MemberViewModel.this.f44974k;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("WhatsApp", it.getFirst());
            linkedHashMap.put("Telegram", it.getSecond());
            linkedHashMap.put("CopyLink", it.getThird());
            b0Var.q(linkedHashMap);
        }
    }

    static final class k implements yx.f {
        k() {
        }

        @Override
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            MemberViewModel.this.f44974k.q(new LinkedHashMap());
        }
    }

    public static final class l extends dg.a {

        final int f44989e;

        l(int i10) {
            this.f44989e = i10;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("taskCheckInSubmit failed " + str + ", " + str2);
            MemberViewModel.this.f44971h.q(new Pair(Integer.valueOf(this.f44989e), null));
        }

        @Override
        public void c(MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes) {
            super.c(memberTaskSubmitCheckInRes);
            MemberViewModel.this.f44971h.q(new Pair(Integer.valueOf(this.f44989e), memberTaskSubmitCheckInRes));
        }
    }

    public static final class m extends dg.a {

        final int f44991e;

        final String f44992f;

        final int f44993g;

        final int f44994h;

        m(int i10, String str, int i11, int i12) {
            this.f44991e = i10;
            this.f44992f = str;
            this.f44993g = i11;
            this.f44994h = i12;
        }

        @Override
        public void a(String str, String str2) {
            com.transsion.member.a.f45001a.b("taskCheckInSubmit failed " + str + ", " + str2);
            MemberViewModel.this.f44972i.q(new im.e(-this.f44991e, this.f44992f, this.f44993g, this.f44994h, null));
        }

        @Override
        public void c(MemberTaskRewardInfo memberTaskRewardInfo) {
            super.c(memberTaskRewardInfo);
            MemberViewModel.this.f44972i.q(new im.e(this.f44991e, this.f44992f, this.f44993g, this.f44994h, memberTaskRewardInfo));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemberViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44965b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MemberViewModel.F();
            }
        });
        this.f44966c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MemberViewModel.G();
            }
        });
        this.f44967d = new androidx.p009lifecycle.b0();
        this.f44968e = new androidx.p009lifecycle.b0();
        this.f44969f = new androidx.p009lifecycle.b0();
        this.f44970g = new androidx.p009lifecycle.b0();
        this.f44971h = new androidx.p009lifecycle.b0();
        this.f44972i = new androidx.p009lifecycle.b0();
        this.f44973j = new androidx.p009lifecycle.b0();
        this.f44974k = new androidx.p009lifecycle.b0();
        this.f44975l = new LinkedHashMap();
    }

    public static final fm.a F() {
        return (fm.a) kg.c.f63982e.a().h(fm.a.class);
    }

    public static final im.b G() {
        return (im.b) TheRouter.d(im.b.class, new Object[0]);
    }

    private final void H() {
        SkuData skuData = (SkuData) im.i.f62186a.b().f();
        wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "Preload skuCache is " + skuData, false, 4, null);
        this.f44968e.q(skuData);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object I(SkuItem skuItem, Continuation continuation) {
        MemberViewModel$redeem$1 memberViewModel$redeem$1;
        String message;
        String code;
        String reason;
        if (continuation instanceof MemberViewModel$redeem$1) {
            memberViewModel$redeem$1 = (MemberViewModel$redeem$1) continuation;
            int i10 = memberViewModel$redeem$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                memberViewModel$redeem$1.label = i10 - Integer.MIN_VALUE;
            } else {
                memberViewModel$redeem$1 = new MemberViewModel$redeem$1(this, continuation);
            }
        } else {
            memberViewModel$redeem$1 = new MemberViewModel$redeem$1(this, continuation);
        }
        Object objA = memberViewModel$redeem$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = memberViewModel$redeem$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("skuId", skuItem.getSkuId());
                if (this.f44975l.get(skuItem.getSkuId()) != null) {
                    jSONObject.put("clientOrderId", this.f44975l.get(skuItem.getSkuId()));
                } else {
                    jSONObject.put("clientOrderId", UUID.randomUUID().toString());
                    this.f44975l.put(skuItem.getSkuId(), jSONObject.getString("clientOrderId"));
                }
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                fm.a aVarU = u();
                String strA = gg.a.f61067a.a();
                memberViewModel$redeem$1.label = 1;
                objA = aVarU.a(strA, requestBodyCreate, memberViewModel$redeem$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return objA;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(Result.m453constructorimpl(ResultKt.a(th2)));
            if (thM456exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM456exceptionOrNullimpl instanceof HttpException)) {
                wf.a.C0922a.l(wf.a.f74274a, "MemberViewModel", "it = " + thM456exceptionOrNullimpl, false, 4, null);
                return null;
            }
            HttpErrorBodyBean httpErrorBodyBeanA = HttpErrorBodyBean.INSTANCE.a((HttpException) thM456exceptionOrNullimpl);
            String str = "";
            if (httpErrorBodyBeanA == null || (message = httpErrorBodyBeanA.getMessage()) == null) {
                message = "";
            }
            if (httpErrorBodyBeanA == null || (code = httpErrorBodyBeanA.getCode()) == null) {
                code = "";
            }
            if (httpErrorBodyBeanA != null && (reason = httpErrorBodyBeanA.getReason()) != null) {
                str = reason;
            }
            return new BaseDto(message, code, null, str);
        }
    }

    private final fm.a u() {
        return (fm.a) this.f44965b.getValue();
    }

    private final im.b w() {
        return (im.b) this.f44966c.getValue();
    }

    public final LiveData A() {
        return this.f44968e;
    }

    public final LiveData B() {
        return this.f44971h;
    }

    public final LiveData C() {
        return this.f44972i;
    }

    public final LiveData D() {
        return this.f44970g;
    }

    public final void E() {
        String string = w.f45184a.b().getString("MEMBER_JSON", null);
        if (string != null && string.length() != 0) {
            try {
                this.f44967d.q((MemberDetail) com.blankj.utilcode.util.o.d(string, MemberDetail.class));
            } catch (Exception e10) {
                wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "No member detail cache " + e10, false, 4, null);
            }
        }
        String string2 = w.f45184a.b().getString("SKU_LIST_JSON", null);
        if (string2 == null || string2.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "Preload sku local cache", false, 4, null);
            H();
        } else {
            try {
                this.f44968e.q((SkuData) com.blankj.utilcode.util.o.e(string2, com.blankj.utilcode.util.o.h(SkuData.class, new Type[0])));
                wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "Sku list mmkv cache exists", false, 4, null);
            } catch (Exception unused) {
                wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "No Sku list mmkv cache that needs to preload sku local cache", false, 4, null);
                H();
            }
        }
        r();
    }

    public final void J(SkuItem skuItem) {
        Intrinsics.h(skuItem, "skuItem");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new MemberViewModel$redeemProduct$1(this, skuItem, null), 3, null);
    }

    public final void K(int i10, int i11) {
        fm.a.C0732a.a(u(), null, i10, i11, 1, null).f(dg.d.f59034a.c()).subscribe(new h());
    }

    public final void L() {
        io.reactivex.rxjava3.core.j.H(fm.a.C0732a.b(u(), null, new InviteUserShareInfoReq(null, "WhatsApp", null, 5, null), 1, null), fm.a.C0732a.b(u(), null, new InviteUserShareInfoReq(null, "Telegram", null, 5, null), 1, null), fm.a.C0732a.b(u(), null, new InviteUserShareInfoReq(null, "CopyLink", null, 5, null), 1, null), i.f44985a).f(dg.d.f59034a.c()).B(new j(), new k());
    }

    public final void M(int i10) {
        fm.a.C0732a.h(u(), null, null, 3, null).f(dg.d.f59034a.c()).subscribe(new l(i10));
    }

    public final void N(int i10, String rewardId, int i11, int i12) {
        Intrinsics.h(rewardId, "rewardId");
        fm.a.C0732a.f(u(), null, rewardId, 1, null).f(dg.d.f59034a.c()).subscribe(new m(i10, rewardId, i11, i12));
    }

    public final void q() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f44976m;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f44976m) != null) {
            cVar.dispose();
        }
        fm.a.C0732a.c(u(), null, 1, null).v(ey.a.c()).h(b.f44978a).f(dg.d.f59034a.c()).subscribe(new c());
    }

    public final void r() {
        im.b bVarW = w();
        if (bVarW != null) {
            bVarW.p(new d());
        }
    }

    public final void s() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f44977n;
        if (cVar2 != null && !cVar2.isDisposed() && (cVar = this.f44977n) != null) {
            cVar.dispose();
        }
        fm.a.C0732a.e(u(), null, 1, null).v(ey.a.c()).x(e.f44981a).h(f.f44982a).f(dg.d.f59034a.c()).subscribe(new g());
    }

    public final LiveData t() {
        return this.f44973j;
    }

    public final LiveData v() {
        return this.f44967d;
    }

    public final LiveData x() {
        return this.f44969f;
    }

    public final LiveData y() {
        return this.f44974k;
    }

    public final SkuData z() {
        return (SkuData) this.f44968e.f();
    }
}
