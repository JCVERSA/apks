package com.transsion.baselib.kids;

import cm.f;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.transsion.baselib.report.launch.b;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import ij.o;
import java.util.Iterator;
import java.util.List;
import kg.c;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.RequestBody;

public final class KidsAccountManager {

    public static final KidsAccountManager f42144a = new KidsAccountManager();

    private static final Gson f42145b = new Gson();

    public static final class a {

        public static final C0581a f42146b = new C0581a(null);

        private final int f42147a;

        public static final class C0581a {
            public C0581a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0581a() {
            }
        }

        public a(int i10) {
            this.f42147a = i10;
        }
    }

    private KidsAccountManager() {
    }

    private final String a() {
        UserInfo userInfoI;
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        String userId = (aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId();
        return (userId == null || userId.length() == 0) ? "visitor" : userId;
    }

    private final boolean h(String str) {
        String value;
        Long lX;
        long jH = b.f42221a.b().h(str, 0L);
        if (jH == 0) {
            return false;
        }
        ConfigBean configBeanC = f.f17019c.a().c("pk_kids_dialog_suppress_duration", false);
        return System.currentTimeMillis() - jH < ((configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 604800000L : lX.longValue());
    }

    public static void n(KidsAccountManager kidsAccountManager, KidsProfile kidsProfile, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        kidsAccountManager.m(kidsProfile, z10);
    }

    public final void b() {
        b.f42221a.b().M("kids_profile");
        MMKV mmkvI = MMKV.I("kv_search_list");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        mmkvI.M("kv_kids_search_work");
        mmkvI.M("kv_kids_search_group");
        wf.a.C0922a.f(wf.a.f74274a, "KidsAccountManager", "deleteKidsProfile: profile and search history cleared", false, 4, null);
        a aVar = new a(2);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    public final void c(KidsProfile profile) {
        Intrinsics.h(profile, "profile");
        wf.a.C0922a.f(wf.a.f74274a, "KidsAccountManager", "enter kids mode.", false, 4, null);
        o.f62115a.a(profile.getKidsId());
    }

    public final void d() {
        wf.a.C0922a.f(wf.a.f74274a, "KidsAccountManager", "exit kids mode.", false, 4, null);
        o.f62115a.b();
    }

    public final String e() {
        String strD = o.f62115a.d();
        if (strD != null) {
            return strD;
        }
        KidsProfile kidsProfileF = f();
        if (kidsProfileF != null) {
            return kidsProfileF.getKidsId();
        }
        return null;
    }

    public final KidsProfile f() {
        String strK = b.f42221a.b().k("kids_profile");
        if (strK == null) {
            return null;
        }
        return (KidsProfile) f42145b.fromJson(strK, KidsProfile.class);
    }

    public final boolean g() {
        return h("kids_create_dialog_dismiss_" + a());
    }

    public final boolean i() {
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return false;
        }
        String pinHash = kidsProfileF.getPinHash();
        return !(pinHash == null || pinHash.length() == 0);
    }

    public final boolean j() {
        return h("kids_switch_dialog_dismiss_" + a());
    }

    public final void k() {
        b.f42221a.b().t("kids_create_dialog_dismiss_" + a(), System.currentTimeMillis());
    }

    public final void l() {
        b.f42221a.b().t("kids_switch_dialog_dismiss_" + a(), System.currentTimeMillis());
    }

    public final void m(KidsProfile profile, boolean z10) {
        Intrinsics.h(profile, "profile");
        b.f42221a.b().v("kids_profile", f42145b.toJson(profile));
        if (z10) {
            a aVar = new a(1);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object o(Continuation continuation) {
        KidsAccountManager$shouldShowAutoPopup$1 kidsAccountManager$shouldShowAutoPopup$1;
        boolean zBooleanValue;
        Object next;
        Boolean boolIsConsume;
        if (continuation instanceof KidsAccountManager$shouldShowAutoPopup$1) {
            kidsAccountManager$shouldShowAutoPopup$1 = (KidsAccountManager$shouldShowAutoPopup$1) continuation;
            int i10 = kidsAccountManager$shouldShowAutoPopup$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                kidsAccountManager$shouldShowAutoPopup$1.label = i10 - Integer.MIN_VALUE;
            } else {
                kidsAccountManager$shouldShowAutoPopup$1 = new KidsAccountManager$shouldShowAutoPopup$1(this, continuation);
            }
        } else {
            kidsAccountManager$shouldShowAutoPopup$1 = new KidsAccountManager$shouldShowAutoPopup$1(this, continuation);
        }
        KidsAccountManager$shouldShowAutoPopup$1 kidsAccountManager$shouldShowAutoPopup$2 = kidsAccountManager$shouldShowAutoPopup$1;
        Object objA = kidsAccountManager$shouldShowAutoPopup$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = kidsAccountManager$shouldShowAutoPopup$2.label;
        boolean z10 = false;
        try {
            if (i11 == 0) {
                ResultKt.b(objA);
                mg.b.a aVar = mg.b.f66404a;
                String json = new Gson().toJson(new ConsumeJudgeRequest(CollectionsKt.e("USER_CONSUME_EDUCATION")));
                Intrinsics.g(json, "toJson(...)");
                RequestBody requestBodyA = aVar.a(json);
                if (requestBodyA == null) {
                    return Boxing.a(false);
                }
                com.transsion.baselib.kids.a aVar2 = (com.transsion.baselib.kids.a) c.f63982e.a().h(com.transsion.baselib.kids.a.class);
                kidsAccountManager$shouldShowAutoPopup$2.label = 1;
                objA = com.transsion.baselib.kids.a.C0582a.a(aVar2, null, requestBodyA, kidsAccountManager$shouldShowAutoPopup$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            List<ConsumeJudgeItem> list = ((ConsumeJudgeResponse) objA).getList();
            if (list != null) {
                Iterator<T> it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((ConsumeJudgeItem) next).getConsumeType(), "USER_CONSUME_EDUCATION"));
                ConsumeJudgeItem consumeJudgeItem = (ConsumeJudgeItem) next;
                if (consumeJudgeItem == null || (boolIsConsume = consumeJudgeItem.isConsume()) == null) {
                    zBooleanValue = false;
                } else {
                    zBooleanValue = boolIsConsume.booleanValue();
                }
            } else {
                zBooleanValue = false;
            }
            wf.a.C0922a.f(wf.a.f74274a, "KidsAccountManager", "shouldShowAutoPopup response result: " + zBooleanValue, false, 4, null);
            z10 = zBooleanValue;
        } catch (Exception e10) {
            wf.a.f74274a.i("KidsAccountManager", "shouldShowAutoPopup error: " + e10.getMessage(), true);
        }
        return Boxing.a(z10);
    }

    public final void p(String pinHash) {
        Intrinsics.h(pinHash, "pinHash");
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return;
        }
        b.f42221a.b().v("kids_profile", f42145b.toJson(kidsProfileF.copy((479 & 1) != 0 ? kidsProfileF.kidsId : null, (479 & 2) != 0 ? kidsProfileF.name : null, (479 & 4) != 0 ? kidsProfileF.avatarResId : 0, (479 & 8) != 0 ? kidsProfileF.gender : null, (479 & 16) != 0 ? kidsProfileF.birthday : null, (479 & 32) != 0 ? kidsProfileF.pinHash : pinHash, (479 & 64) != 0 ? kidsProfileF.avatarLocalPath : null, (479 & 128) != 0 ? kidsProfileF.favorites : null, (479 & 256) != 0 ? kidsProfileF.age : null)));
    }

    public final boolean q(String inputPin) {
        Intrinsics.h(inputPin, "inputPin");
        KidsProfile kidsProfileF = f();
        if (kidsProfileF == null) {
            return false;
        }
        return Intrinsics.c(kidsProfileF.getPinHash(), inputPin);
    }
}
