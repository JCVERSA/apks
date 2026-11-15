package com.transsion.push.helper;

import android.app.Application;
import android.text.format.DateUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.push.bean.PermanentConfig;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.bean.PushConfigHelper;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class PushPermanentManager {

    private static PermanentConfig f48748d;

    private static String f48749e;

    private static t1 f48751g;

    private static long f48753i;

    public static final PushPermanentManager f48745a = new PushPermanentManager();

    private static final Lazy f48746b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushPermanentManager.u();
        }
    });

    private static CopyOnWriteArrayList f48747c = new CopyOnWriteArrayList();

    private static boolean f48750f = true;

    private static String f48752h = "";

    private PushPermanentManager() {
    }

    private final void n(long j10) {
        wf.a.f74274a.c("PUSH_SHOW", "checkRequest time:" + j10 + ", lastTime:" + (System.currentTimeMillis() - f48753i) + ", hash:" + PushConfigHelper.INSTANCE.getHashTime(), true);
        if (System.currentTimeMillis() - f48753i >= j10) {
            q();
        }
    }

    public final to.b r() {
        return (to.b) f48746b.getValue();
    }

    public final boolean t() {
        return DateUtils.isToday(f48753i);
    }

    public static final to.b u() {
        return (to.b) kg.c.f63982e.a().h(to.b.class);
    }

    public final void v() {
        PermanentConfig permanentConfig = f48748d;
        if (permanentConfig != null) {
            if (!permanentConfig.getEnable() || !w(permanentConfig)) {
                return;
            }
            if (permanentConfig.getInterval() > 0) {
                n((long) ((permanentConfig.getInterval() + PushConfigHelper.INSTANCE.getHashTime()) * 60 * 1000));
            }
        }
        PushPermanentShowHelper pushPermanentShowHelper = PushPermanentShowHelper.f48754a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        pushPermanentShowHelper.p(applicationA, CollectionsKt.f0(f48747c));
    }

    private final boolean w(PermanentConfig permanentConfig) {
        List listL;
        try {
            Result.Companion companion = Result.INSTANCE;
            String startTime = permanentConfig.getStartTime();
            if (startTime == null) {
                return true;
            }
            List<String> listSplit = new Regex(":").split(startTime, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        listL = CollectionsKt.l();
                        break;
                    }
                    if (listIterator.previous().length() != 0) {
                        listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            } else {
                listL = CollectionsKt.l();
                break;
            }
            String[] strArr = (String[]) listL.toArray(new String[0]);
            int i10 = Integer.parseInt(strArr[0]);
            int i11 = Integer.parseInt(strArr[1]);
            Calendar calendar = Calendar.getInstance();
            int i12 = calendar.get(11);
            int i13 = calendar.get(12);
            wf.a.C0922a.f(wf.a.f74274a, "PUSH_SHOW", "timeReady, cur:" + i12 + ":" + i13 + ",time:" + i10, false, 4, null);
            if (i12 <= i10) {
                return i12 == i10 && i13 >= i11;
            }
            return true;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
            return true;
        }
    }

    public final void o() {
        if (PushConfigHelper.INSTANCE.isAbType()) {
            k.d(o0.a(y0.b()), null, null, new PushPermanentManager$checkShow$1(null), 3, null);
        }
    }

    public final void p(String deepLink) {
        Object next;
        PermanentItemBean permanentItemBean;
        Intrinsics.h(deepLink, "deepLink");
        wf.a.f74274a.c("PUSH_SHOW", "clickMsg deeplink:" + deepLink + ",pushCacheList:" + f48747c.size(), true);
        Iterator it = f48747c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                permanentItemBean = (PermanentItemBean) next;
            }
        } while (!Intrinsics.c(permanentItemBean != null ? permanentItemBean.getDeeplink() : null, deepLink));
        PermanentItemBean permanentItemBean2 = (PermanentItemBean) next;
        if (permanentItemBean2 == null) {
            return;
        }
        f48747c.remove(permanentItemBean2);
        if (f48747c.size() < 10) {
            q();
        } else {
            v();
        }
        k.d(o0.a(y0.b()), null, null, new PushPermanentManager$clickMsg$1(permanentItemBean2, null), 3, null);
    }

    public final void q() {
        t1 t1Var = f48751g;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f48751g = k.d(o0.a(y0.b()), null, null, new PushPermanentManager$fetchPushData$1(null), 3, null);
    }

    public final String s() {
        return f48752h;
    }
}
