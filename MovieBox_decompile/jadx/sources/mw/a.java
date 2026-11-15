package mw;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import ci.p;
import com.transsion.ad.bidding.base.v;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberSource;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

public final class a {

    public static final a f66724a = new a();

    private static PsActivateBean f66725b;

    public class C0819a {

        public static final int[] f66726a;

        static {
            int[] iArr = new int[MemberSource.values().length];
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_TIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f66726a = iArr;
        }
    }

    private a() {
    }

    private final boolean c(Activity activity) {
        if (v.f40881a.b()) {
            wf.a.C0922a.g(wf.a.f74274a, "ActivateAdManager --> canShow(" + activity.getClass().getSimpleName() + ") --> 当前Activity广告正在展示", false, 2, null);
            return false;
        }
        if (i()) {
            wf.a.C0922a.g(wf.a.f74274a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 配置已关闭", false, 2, null);
            return false;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("activate_show_date", "");
        String strC = p.f16947a.c();
        if (!TextUtils.equals(string, strC)) {
            bVar.b().putInt("activate_show_times", 0);
            wf.a.C0922a.g(wf.a.f74274a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 新的一天重置次数 --> curDate = " + strC + " --> lastShowDate = " + string, false, 2, null);
        }
        int i10 = bVar.b().getInt("activate_show_times", 0);
        int iH = h();
        if (i10 >= iH) {
            wf.a.C0922a.g(wf.a.f74274a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 展示次数已达上限 --> showTimes = " + i10 + " --> limit = " + iH, false, 2, null);
            return false;
        }
        long jG = g();
        long j10 = bVar.b().getLong("activate_show_timestamp", 0L);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j11 = jElapsedRealtime - j10;
        if (j11 >= jG) {
            return true;
        }
        wf.a.C0922a.g(wf.a.f74274a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 展示间隔未到 --> lastShowTimestamp = " + j10 + " --> cur = " + jElapsedRealtime + " --> interval = " + jG + " --> gap = " + j11, false, 2, null);
        return false;
    }

    private final String f() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final SpannableStringBuilder a(Context context, String rawTitle) {
        Intrinsics.h(context, "context");
        Intrinsics.h(rawTitle, "rawTitle");
        String strO = o(rawTitle);
        String strP = p(j(), "notificationStyleTitle", strO);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strP);
        int iO0 = StringsKt.o0(strP, strO, 0, false, 6, null);
        spannableStringBuilder.setSpan(new StyleSpan(2), iO0, strO.length() + iO0, 33);
        return spannableStringBuilder;
    }

    public final SpannableStringBuilder b(Context context, String name, String fullText) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(fullText, "fullText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fullText);
        int iO0 = StringsKt.o0(fullText, name, 0, false, 6, null);
        spannableStringBuilder.setSpan(new StyleSpan(2), iO0, name.length() + iO0, 33);
        return spannableStringBuilder;
    }

    public final void d(boolean z10) {
        PsActivateBean psActivateBean;
        wf.a.C0922a.g(wf.a.f74274a, "ActivateAdManager --> consumeActivateAd() --> 广告被消费 --> bestAd = " + f66725b, false, 2, null);
        if (z10 && (psActivateBean = f66725b) != null) {
            PSActivateManager.f41122a.a(psActivateBean);
        }
        f66725b = null;
    }

    public final PsActivateBean e(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (!c(activity)) {
            return null;
        }
        if (f66725b == null) {
            PsActivateBean psActivateBeanB = PSActivateManager.f41122a.b();
            f66725b = psActivateBeanB;
            if (psActivateBeanB != null) {
                q();
            }
        }
        return f66725b;
    }

    public final long g() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Long.valueOf(new JSONObject(value).optLong("notificationStyleIntervalMinutes") * ((long) 60) * 1000));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 1000L;
        }
        return ((Number) objM453constructorimpl).longValue();
    }

    public final int h() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf(new JSONObject(value).optInt("notificationStyleLimit")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 3;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final boolean i() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("notificationStyleOff")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final String j() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(new JSONObject(value).optString("notificationStyleTitle"));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : "");
    }

    public final boolean k(MemberSource sceneId) {
        Object objM453constructorimpl;
        String str;
        String value;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            int i10 = C0819a.f66726a[sceneId.ordinal()];
            String str2 = "";
            if (i10 == 1) {
                str = "activateDialogResolutionOff";
            } else if (i10 != 2) {
                str = i10 != 3 ? "" : "activateDialogNoResolutionOff";
            } else {
                str = "activateDialogTipResolutionOff";
            }
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC != null && (value = configBeanC.getValue()) != null) {
                str2 = value;
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(new JSONObject(str2).optBoolean(str)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final int l() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf(new JSONObject(value).optInt("installedGuideTipViewAutoCloseTime")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 10;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final boolean m() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("isAutoOpenApp")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean n() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("isShowInstalledGuideTipView")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final String o(String text) {
        Intrinsics.h(text, "text");
        if (text.length() <= 10) {
            return text;
        }
        String strSubstring = text.substring(0, 9);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring + "…";
    }

    public final String p(String text, String placeholder, String target) {
        Intrinsics.h(text, "text");
        Intrinsics.h(placeholder, "placeholder");
        Intrinsics.h(target, "target");
        return StringsKt.c0(text, placeholder, false, 2, null) ? StringsKt.Q(text, placeholder, target, false, 4, null) : text;
    }

    public final void q() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("activate_show_date", "");
        p pVar = p.f16947a;
        if (!TextUtils.equals(string, pVar.c())) {
            bVar.b().putString("activate_show_date", pVar.c());
            bVar.b().putInt("activate_show_times", 0);
            wf.a.C0922a.g(wf.a.f74274a, "ActivateAdManager --> showActivateAd() --> 广告展示 --> bestAd = " + f66725b + " --> 日期重置", false, 2, null);
        }
        int i10 = bVar.b().getInt("activate_show_times", 0) + 1;
        bVar.b().putInt("activate_show_times", i10);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        bVar.b().putLong("activate_show_timestamp", jElapsedRealtime);
        wf.a.C0922a.g(wf.a.f74274a, "ActivateAdManager --> showActivateAd() --> 广告展示 --> bestAd = " + f66725b + " --> cur = " + jElapsedRealtime + " --> showTimes = " + i10, false, 2, null);
    }
}
