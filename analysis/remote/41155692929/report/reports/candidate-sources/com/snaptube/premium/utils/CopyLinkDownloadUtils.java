package com.snaptube.premium.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.appcompat.app.AppCompatActivity;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.plugin.extension.nonlifecycle.ad.ChooseFormatAdRewardViewModel;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.activity.ChooseFormatActivity;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.views.CommonPopupView;
import com.snaptube.search.view.SocialLoginPopupFragment;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.enums.a;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.text.StringsKt__StringsKt;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.a56;
import o.by3;
import o.h52;
import o.hg7;
import o.if9;
import o.ih6;
import o.or3;
import o.pn0;
import o.r6;
import o.rt1;
import o.wu0;
import org.jetbrains.annotations.NotNull;

public final class CopyLinkDownloadUtils {
    public static final a56 e;
    public static final by3[] b = {ih6.g(new MutablePropertyReference1Impl(CopyLinkDownloadUtils.class, "isProcessPreloadOnCopyLink", "isProcessPreloadOnCopyLink()Z", 0))};
    public static final CopyLinkDownloadUtils a = new CopyLinkDownloadUtils();
    public static final Pattern c = Pattern.compile("https?://[^\\s\\]}\"]+");
    public static final String d = "CopyLinkDownloadUtils";

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/snaptube/premium/utils/CopyLinkDownloadUtils$Position;", "", "(Ljava/lang/String;I)V", "CLIPBOARD_MONITOR", "APP_START_MONITOR", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum Position {
        CLIPBOARD_MONITOR,
        APP_START_MONITOR;

        private static final h52 $ENTRIES = a.a(a());

        @NotNull
        public static h52 getEntries() {
            return $ENTRIES;
        }
    }

    static {
        Context appContext = GlobalConfig.getAppContext();
        Boolean bool = Boolean.TRUE;
        SharedPreferences sharedPreferences = appContext.getSharedPreferences(PubnativeAdModel.PREF_NAME, 0);
        or3.e(sharedPreferences, "getSharedPreferences(...)");
        e = new a56(sharedPreferences, "/is_process_preload_on_copy_link", bool, CopyLinkDownloadUtils$special$$inlined$preference$1.INSTANCE, CopyLinkDownloadUtils$special$$inlined$preference$2.INSTANCE);
    }

    public static boolean e(CopyLinkDownloadUtils copyLinkDownloadUtils, String str, Context context, String str2, boolean z, boolean z2, String str3, int i, Object obj) {
        boolean z3 = (i & 16) != 0 ? false : z2;
        if ((i & 32) != 0) {
            str3 = null;
        }
        return copyLinkDownloadUtils.d(str, context, str2, z, z3, str3);
    }

    public final boolean a(String str) {
        if (URLUtil.isValidUrl(str)) {
            return PhoenixApplication.O().g(str);
        }
        return false;
    }

    public final boolean b(String str, Position position) {
        or3.f(position, "position");
        if (TextUtils.isEmpty(str) || SocialLoginPopupFragment.INSTANCE.a()) {
            return false;
        }
        if (!TextUtils.equals(str, c())) {
            rt1.m("action_copylink", str, "clip_internal");
            k(str);
        }
        if (position == Position.CLIPBOARD_MONITOR) {
            if (PhoenixApplication.U()) {
                if (a(str)) {
                    j(str);
                }
                return false;
            }
        } else if (position == Position.APP_START_MONITOR) {
            String strD1 = Config.d1();
            String strH0 = Config.H0();
            String str2 = d;
            ProductionEnv.debugLog(str2, "pre CopyLink is " + strD1 + " and url is: " + str);
            if (or3.a(strD1, str) || or3.a(strH0, str)) {
                ProductionEnv.debugLog(str2, "skip show copy link dialog as showed before : " + str);
                return false;
            }
        }
        return a(str);
    }

    public final String c() {
        return Config.D0();
    }

    public final boolean d(String str, Context context, String str2, boolean z, boolean z2, String str3) {
        or3.f(context, "context");
        or3.f(str2, IntentUtil.POS);
        if (str == null) {
            return false;
        }
        Intent intentD = r6.d(context);
        if (if9.s(str)) {
            ChooseFormatAdRewardViewModel.INSTANCE.d();
            NavigationManager.H(context, str, str2, null);
            return false;
        }
        if (hg7.a(str)) {
            if (f()) {
                ChooseFormatAdRewardViewModel.INSTANCE.e();
            }
            if ((or3.a("action_send", str2) || or3.a("homesearch_clipboard", str2)) && (context instanceof AppCompatActivity)) {
                h((AppCompatActivity) context, str, str2, r6.g((Activity) context), str3);
                return true;
            }
            g(context, str, str2);
            return false;
        }
        if (!z2 || intentD == null) {
            NavigationManager.P0(context, str, "", z, str2);
            return false;
        }
        Intent intent = new Intent(intentD);
        intent.putExtra("app_start_pos", str2);
        intent.putExtra("app_start_pos_new", str2);
        intent.putExtra("full_url", str);
        intent.putExtra("referrer", r6.h(context));
        intent.setClass(context, ExploreActivity.class);
        intent.setFlags(335544320);
        NavigationManager.l1(context, intent);
        return false;
    }

    public final boolean f() {
        return ((Boolean) e.a(this, b[0])).booleanValue();
    }

    public final void g(Context context, String str, String str2) {
        NavigationManager.l1(context, ChooseFormatActivity.P0(context, str, str2, null));
        if (context instanceof AppCompatActivity) {
            ((AppCompatActivity) context).overridePendingTransition(0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h(AppCompatActivity appCompatActivity, String str, String str2, String str3, String str4) {
        pn0.a aVarC = new pn0.a().c(new pn0.c(null, 1, null).e(str).m(str2).j(str3));
        if (str4 != null) {
            HashMap map = new HashMap();
            map.put("intent_uri", str4);
            aVarC.b(map);
        }
        if (appCompatActivity instanceof CommonPopupView.f) {
            aVarC.a((CommonPopupView.f) appCompatActivity);
        }
        aVarC.f(wu0.b(str), true, appCompatActivity);
    }

    public final String i(String str) {
        String strGroup;
        String string;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Pattern pattern = c;
        or3.c(str);
        Matcher matcher = pattern.matcher(str);
        return (!matcher.find() || (strGroup = matcher.group(0)) == null || (string = StringsKt__StringsKt.V0(strGroup).toString()) == null) ? "" : string;
    }

    public final void j(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ProductionEnv.debugLog(d, "record Copy copy link " + str);
        Config.n5(str);
    }

    public final void k(String str) {
        Config.P5(str);
    }
}
