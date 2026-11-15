package com.transsion.push.db;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PagerConfig;
import com.transsion.push.bean.PermanentConfig;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.bean.PermanentPushResp;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class PermanentRoom {

    public static final PermanentRoom f48721a = new PermanentRoom();

    private static final Lazy f48722b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PermanentRoom.k();
        }
    });

    private PermanentRoom() {
    }

    private final MMKV j() {
        return (MMKV) f48722b.getValue();
    }

    public static final MMKV k() {
        MMKV mmkvI = MMKV.I("PermanentRushMsg");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final Object b(List list, Continuation continuation) {
        PermanentPushDatabase.Companion companion = PermanentPushDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        a aVarI0 = companion.b(applicationA).i0();
        if (list == null) {
            return Unit.f64096a;
        }
        Object objB = aVarI0.b(list, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    public final Object c(Continuation continuation) {
        PermanentPushDatabase.Companion companion = PermanentPushDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Object objA = companion.b(applicationA).i0().a(continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }

    public final Object d(PermanentItemBean permanentItemBean, Continuation continuation) {
        if (permanentItemBean == null) {
            return Unit.f64096a;
        }
        PermanentPushDatabase.Companion companion = PermanentPushDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Object objD = companion.b(applicationA).i0().d(permanentItemBean, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Continuation continuation) {
        PermanentRoom$getAll$1 permanentRoom$getAll$1;
        if (continuation instanceof PermanentRoom$getAll$1) {
            permanentRoom$getAll$1 = (PermanentRoom$getAll$1) continuation;
            int i10 = permanentRoom$getAll$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                permanentRoom$getAll$1.label = i10 - Integer.MIN_VALUE;
            } else {
                permanentRoom$getAll$1 = new PermanentRoom$getAll$1(this, continuation);
            }
        } else {
            permanentRoom$getAll$1 = new PermanentRoom$getAll$1(this, continuation);
        }
        Object objC = permanentRoom$getAll$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = permanentRoom$getAll$1.label;
        if (i11 == 0) {
            ResultKt.b(objC);
            PermanentPushDatabase.Companion companion = PermanentPushDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            a aVarI0 = companion.b(applicationA).i0();
            permanentRoom$getAll$1.label = 1;
            objC = aVarI0.c(permanentRoom$getAll$1);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objC);
        }
        List list = (List) objC;
        return list == null ? CollectionsKt.l() : list;
    }

    public final PermanentConfig f() {
        String string = j().getString(PushConstants.SP_KEY_CONFIG, null);
        if (string != null) {
            return (PermanentConfig) o.d(string, PermanentConfig.class);
        }
        return null;
    }

    public final String g() {
        String string = j().getString("pager", "1");
        return string == null ? "1" : string;
    }

    public final long h() {
        return j().getLong(EventConstants.KEY_TIME, 0L);
    }

    public final String i() {
        String string = j().getString(CampaignEx.JSON_KEY_TITLE, "");
        return string == null ? "" : string;
    }

    public final Object l(PermanentPushResp permanentPushResp, Continuation continuation) {
        String strG;
        String title = permanentPushResp.getTitle();
        if (title == null) {
            title = i();
        }
        p(title);
        PagerConfig pager = permanentPushResp.getPager();
        if (pager == null || (strG = pager.getNextPage()) == null) {
            strG = g();
        }
        n(strG);
        o(System.currentTimeMillis());
        PermanentConfig cfg = permanentPushResp.getCfg();
        if (cfg != null) {
            f48721a.m(cfg);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        List<PermanentItemBean> items = permanentPushResp.getItems();
        Integer numD = items != null ? Boxing.d(items.size()) : null;
        PagerConfig pager2 = permanentPushResp.getPager();
        String nextPage = pager2 != null ? pager2.getNextPage() : null;
        wf.a.C0922a.l(c0922a, "PUSH_SHOW", "DB-addMsgList, size:" + numD + "，mPager:" + nextPage + ",title:" + permanentPushResp.getTitle() + " ", false, 4, null);
        List<PermanentItemBean> items2 = permanentPushResp.getItems();
        Object objB = b(items2 != null ? CollectionsKt.f0(items2) : null, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }

    public final void m(PermanentConfig permanentConfig) {
        j().putString(PushConstants.SP_KEY_CONFIG, o.j(permanentConfig));
    }

    public final void n(String value) {
        Intrinsics.h(value, "value");
        j().putString("pager", value);
    }

    public final void o(long j10) {
        j().putLong(EventConstants.KEY_TIME, j10);
    }

    public final void p(String value) {
        Intrinsics.h(value, "value");
        j().putString(CampaignEx.JSON_KEY_TITLE, value);
    }
}
