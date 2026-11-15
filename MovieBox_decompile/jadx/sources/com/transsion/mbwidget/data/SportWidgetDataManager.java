package com.transsion.mbwidget.data;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.o;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.gslb.GslbSdk;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.h1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class SportWidgetDataManager {

    private static volatile long f44880b;

    private static volatile boolean f44881c;

    private static SportMatch f44883e;

    private static final x0 f44884f;

    private static final h1 f44885g;

    public static final SportWidgetDataManager f44879a = new SportWidgetDataManager();

    private static final Lazy f44882d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SportWidgetDataManager.n();
        }
    });

    static {
        x0 x0VarA = i1.a(null);
        f44884f = x0VarA;
        f44885g = x0VarA;
    }

    private SportWidgetDataManager() {
    }

    private final void d() {
        f44880b = 0L;
        int i10 = Build.VERSION.SDK_INT;
        Context contextCreateDeviceProtectedStorageContext = i10 >= 24 ? GslbSdk.context.createDeviceProtectedStorageContext() : GslbSdk.context;
        Intent intent = new Intent(contextCreateDeviceProtectedStorageContext, (Class<?>) SportWidgetRefreshReceiver.class);
        intent.setAction("com.transsion.mbwidget.ACTION_MATCH_REFRESH");
        PendingIntent broadcast = PendingIntent.getBroadcast(contextCreateDeviceProtectedStorageContext, 202603051, intent, i10 >= 31 ? 201326592 : ASTNode.NOJIT);
        Object systemService = contextCreateDeviceProtectedStorageContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        AlarmManager alarmManager = systemService instanceof AlarmManager ? (AlarmManager) systemService : null;
        if (alarmManager != null) {
            alarmManager.cancel(broadcast);
        }
        wf.a.f74274a.c("SportWidget", "Cancel match refresh alarm", true);
    }

    public final void f() {
        f44883e = null;
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SportWidgetDataManager$forceRefresh$1(null), 3, null);
    }

    private final SportMatch i() {
        try {
            String string = com.transsion.mbwidget.d.f44872a.k().getString("sport_widget_match_cache", null);
            if (string != null) {
                return (SportMatch) o.d(string, SportMatch.class);
            }
            return null;
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SportWidget", "Get cached match error: " + e10.getMessage(), e10, false, 8, null);
            return null;
        }
    }

    private final a j() {
        return (a) f44882d.getValue();
    }

    public static final a n() {
        return (a) kg.c.f63982e.a().h(a.class);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, com.transsion.mbwidget.data.SportMatch] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30, types: [T, com.transsion.mbwidget.data.SportMatch, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object q(Continuation continuation) {
        SportWidgetDataManager$requestMatch$1 sportWidgetDataManager$requestMatch$1;
        Ref.ObjectRef objectRef;
        Ref.BooleanRef booleanRef;
        SportWidgetDataManager sportWidgetDataManager;
        Object objM453constructorimpl;
        ?? r10;
        SportMatch sportMatchB;
        if (continuation instanceof SportWidgetDataManager$requestMatch$1) {
            sportWidgetDataManager$requestMatch$1 = (SportWidgetDataManager$requestMatch$1) continuation;
            int i10 = sportWidgetDataManager$requestMatch$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sportWidgetDataManager$requestMatch$1.label = i10 - Integer.MIN_VALUE;
            } else {
                sportWidgetDataManager$requestMatch$1 = new SportWidgetDataManager$requestMatch$1(this, continuation);
            }
        } else {
            sportWidgetDataManager$requestMatch$1 = new SportWidgetDataManager$requestMatch$1(this, continuation);
        }
        SportWidgetDataManager$requestMatch$1 sportWidgetDataManager$requestMatch$2 = sportWidgetDataManager$requestMatch$1;
        Object objA = sportWidgetDataManager$requestMatch$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = sportWidgetDataManager$requestMatch$2.label;
        if (i11 == 0) {
            ResultKt.b(objA);
            if (f44881c) {
                wf.a.C0922a.f(wf.a.f74274a, "SportWidget", "[Lab] requestMatch started (laboratory trigger)", false, 4, null);
                f44881c = false;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.f74274a.c("SportWidget", "Request match from API...", true);
                a aVarJ = j();
                sportWidgetDataManager$requestMatch$2.L$0 = objectRef2;
                sportWidgetDataManager$requestMatch$2.L$1 = booleanRef2;
                sportWidgetDataManager$requestMatch$2.L$2 = this;
                sportWidgetDataManager$requestMatch$2.label = 1;
                objA = a.C0607a.a(aVarJ, null, null, sportWidgetDataManager$requestMatch$2, 3, null);
                if (objA == objF) {
                    return objF;
                }
                sportWidgetDataManager = this;
                objectRef = objectRef2;
                booleanRef = booleanRef2;
            } catch (Throwable th2) {
                th = th2;
                objectRef = objectRef2;
                booleanRef = booleanRef2;
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            SportWidgetDataManager sportWidgetDataManager2 = (SportWidgetDataManager) sportWidgetDataManager$requestMatch$2.L$2;
            booleanRef = (Ref.BooleanRef) sportWidgetDataManager$requestMatch$2.L$1;
            objectRef = (Ref.ObjectRef) sportWidgetDataManager$requestMatch$2.L$0;
            try {
                ResultKt.b(objA);
                sportWidgetDataManager = sportWidgetDataManager2;
            } catch (Throwable th3) {
                th = th3;
                Result.Companion companion3 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
            }
        }
        BaseDto baseDto = (BaseDto) objA;
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            baseDto = null;
        }
        BffMatchData bffMatchData = baseDto != null ? (BffMatchData) baseDto.getData() : null;
        if (bffMatchData != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            List<ServerMatchItem> list = bffMatchData.getList();
            c0922a.c("SportWidget", "API request success, data list size: " + (list != null ? list.size() : 0), true);
            ServerMatchItem serverMatchItemA = c.a(bffMatchData.getList());
            if (serverMatchItemA != null) {
                sportMatchB = c.b(serverMatchItemA);
            } else {
                r10 = 0;
            }
            if (r10 != 0) {
                r10 = sportMatchB;
                sportWidgetDataManager.r(r10);
                f44883e = r10;
                f44884f.setValue(r10);
                c0922a.c("SportWidget", "Request match success: " + r10.getMatchId(), true);
                sportWidgetDataManager.s(r10);
                objectRef.element = r10;
            } else {
                r10 = sportMatchB;
                c0922a.c("SportWidget", "No valid match from API response (conversion failed or empty list)", true);
                f44883e = null;
                f44884f.setValue(null);
            }
        } else {
            wf.a.f74274a.c("SportWidget", "API response failed, need fallback", true);
            booleanRef.element = true;
        }
        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.k(wf.a.f74274a, "SportWidget", "Request match error: " + thM456exceptionOrNullimpl.getMessage(), thM456exceptionOrNullimpl, false, 8, null);
            booleanRef.element = true;
        }
        if (objectRef.element == 0 && booleanRef.element) {
            wf.a.f74274a.c("SportWidget", "API failed, use fallback data (cache > mock)", true);
            objectRef.element = t();
        }
        return objectRef.element;
    }

    private final void r(SportMatch sportMatch) {
        try {
            com.transsion.mbwidget.d.f44872a.k().putString("sport_widget_match_cache", o.j(sportMatch));
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SportWidget", "Save cache error: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    private final void s(SportMatch sportMatch) {
        if (sportMatch.getStatus() == MatchStatus.NOT_START && sportMatch.getMatchTime() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long matchTime = sportMatch.getMatchTime() + 300000;
            long j10 = matchTime - jCurrentTimeMillis;
            if (j10 <= 0) {
                wf.a.f74274a.c("SportWidget", "Skip scheduleMatchRefresh: triggerAt=" + matchTime + ", now=" + jCurrentTimeMillis + ", delta=" + j10 + ", matchId=" + sportMatch.getMatchId() + ", status=" + sportMatch.getStatus(), true);
                return;
            }
            long j11 = f44880b;
            if (jCurrentTimeMillis + 1 <= j11 && j11 < matchTime) {
                wf.a.f74274a.c("SportWidget", "Skip scheduleMatchRefresh: keep earlier alarm at " + j11 + ", new trigger " + matchTime + " is later, matchId=" + sportMatch.getMatchId(), true);
                return;
            }
            int i10 = Build.VERSION.SDK_INT;
            Context contextCreateDeviceProtectedStorageContext = i10 >= 24 ? GslbSdk.context.createDeviceProtectedStorageContext() : GslbSdk.context;
            Intent intent = new Intent(contextCreateDeviceProtectedStorageContext, (Class<?>) SportWidgetRefreshReceiver.class);
            intent.setAction("com.transsion.mbwidget.ACTION_MATCH_REFRESH");
            PendingIntent broadcast = PendingIntent.getBroadcast(contextCreateDeviceProtectedStorageContext, 202603051, intent, i10 >= 31 ? 201326592 : ASTNode.NOJIT);
            Object systemService = contextCreateDeviceProtectedStorageContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
            AlarmManager alarmManager = systemService instanceof AlarmManager ? (AlarmManager) systemService : null;
            if (alarmManager != null) {
                alarmManager.setAndAllowWhileIdle(0, matchTime, broadcast);
                f44880b = matchTime;
            }
            wf.a.f74274a.c("SportWidget", "Schedule match refresh at " + matchTime + " (in " + j10 + "ms), matchId=" + sportMatch.getMatchId(), true);
        }
    }

    private final SportMatch t() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("SportWidget", "Using fallback data...", true);
        SportMatch sportMatchI = i();
        if (sportMatchI == null) {
            c0922a.c("SportWidget", "Mock fallback disabled, return null to show Fallback UI", true);
            return null;
        }
        c0922a.c("SportWidget", "Use cached match as fallback: " + sportMatchI.getMatchId(), true);
        f44883e = sportMatchI;
        f44884f.setValue(sportMatchI);
        s(sportMatchI);
        return sportMatchI;
    }

    public final void e() {
        f44883e = null;
        f44884f.setValue(null);
    }

    public final Object g(Continuation continuation) {
        wf.a.f74274a.c("SportWidget", "Force refresh for match change (periodic or after match start)", true);
        Object objQ = q(continuation);
        return objQ == IntrinsicsKt.f() ? objQ : Unit.f64096a;
    }

    public final void h() {
        f44881c = true;
        wf.a.f74274a.c("SportWidget", "[Lab] forceRefresh triggered from Laboratory", true);
        f();
    }

    public final Object k(Continuation continuation) {
        if (f44883e == null) {
            return q(continuation);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        SportMatch sportMatch = f44883e;
        c0922a.c("SportWidget", "Return memory cached match: " + (sportMatch != null ? sportMatch.getMatchId() : null), true);
        return f44883e;
    }

    public final boolean l(SportMatch sportMatch) {
        return sportMatch != null && d.f44901a.a(sportMatch);
    }

    public final boolean m(SportMatch sportMatch) {
        return sportMatch != null && d.f44901a.b(sportMatch);
    }

    public final void o() {
        wf.a.f74274a.c("SportWidget", "All sport widgets removed, clear memory and persistent cache", true);
        d();
        f44883e = null;
        f44884f.setValue(null);
        try {
            com.transsion.mbwidget.d.f44872a.k().remove("sport_widget_match_cache");
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SportWidget", "Clear persistent cache error: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    public final void p() {
        wf.a.f74274a.c("SportWidget", "Refresh on user click (likely viewing live match)", true);
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new SportWidgetDataManager$refreshOnUserClick$1(null), 3, null);
    }
}
