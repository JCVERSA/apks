package com.transsion.playercommon.vishaweb.pages;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.b;
import com.blankj.utilcode.util.c;
import com.just.agentweb.AgentWebUtils;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import com.transsion.playercommon.vishaweb.jsbridge.DefaultJsToNative;
import com.transsion.utils.deviceinfo.a;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.f5;
import defpackage.hb0;
import defpackage.jf;
import defpackage.pp3;
import defpackage.qp3;
import defpackage.r0a;
import defpackage.ydc;
import defpackage.zdc;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Map;

public abstract class VishaFeedbackPage {
    public static final String a = "visha_" + VishaFeedbackPage.class.getSimpleName();

    public static class FeedbackJsToNative extends DefaultJsToNative {
        public static final Parcelable.Creator<FeedbackJsToNative> CREATOR = new a();

        public class a implements Parcelable.Creator {
            @Override
            public FeedbackJsToNative createFromParcel(Parcel parcel) {
                return new FeedbackJsToNative();
            }

            @Override
            public FeedbackJsToNative[] newArray(int i) {
                return new FeedbackJsToNative[i];
            }
        }

        @Override
        public void jsToNative(String str, String str2) {
            super.jsToNative(str, str2);
        }
    }

    public static void a(Context context, Uri.Builder builder) {
        if (!r0a.g(zdc.c())) {
            builder.appendQueryParameter("open_id", zdc.c());
        }
        if (!r0a.g(c.b())) {
            builder.appendQueryParameter(CommonUrlParts.MODEL, c.b());
        }
        if (!r0a.g(jf.h(jf.c()))) {
            builder.appendQueryParameter("app_version", jf.h(jf.c()));
        }
        if (!r0a.g(c.c())) {
            builder.appendQueryParameter("android_version", c.c());
        }
        if (CountryInfoUtil.m() > 0) {
            builder.appendQueryParameter(hb0.KEY_NAME_REGION_ID, Integer.toString(CountryInfoUtil.m()));
        }
        if (!r0a.g(CountryInfoUtil.l())) {
            builder.appendQueryParameter("region_name", CountryInfoUtil.l());
        }
        builder.appendQueryParameter("player_kernel", pp3.d());
        builder.appendQueryParameter("versionCode", String.valueOf(ydc.a()));
        builder.appendQueryParameter("versionName", b.d());
        builder.appendQueryParameter("restrictedModel", pp3.a());
        builder.appendQueryParameter("brand", a.k().f());
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        builder.appendQueryParameter("dark", (context.getResources().getConfiguration().uiMode & 48) == 32 ? "1" : "0");
    }

    public static void b(Context context, Uri.Builder builder, Map map) {
        a(context, builder);
        for (String str : map.keySet()) {
            if (!r0a.g((CharSequence) map.get(str))) {
                builder.appendQueryParameter(str, (String) map.get(str));
            }
        }
    }

    public static void c(Context context, String str) {
        if (context == null) {
            LogUtils.j(a, "invalid context");
            return;
        }
        String str2 = OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/feedback?";
        Uri.Builder builderBuildUpon = Uri.parse("http://www.google.com?").buildUpon();
        if (pp3.c) {
            builderBuildUpon.appendQueryParameter("vt", "pre");
        }
        a(context, builderBuildUpon);
        String strReplace = AgentWebUtils.urlAppendLang(builderBuildUpon.build().toString()).replace("http://www.google.com?", str2);
        LogUtils.j(a, "visha feedback url:" + strReplace);
        g(context, strReplace, str);
    }

    public static void d(Context context, String str, String str2, String str3, String str4) {
        f(context, MainApp.f().getString(R.string.visha_cloud_report_problem_type), 6, str, str2, str3, str4);
    }

    public static void e(Context context, String str, int i, String... strArr) {
        if (context == null) {
            LogUtils.j(a, "invalid context");
            return;
        }
        String str2 = OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/feedback/type?";
        Uri.Builder builderBuildUpon = Uri.parse("http://www.google.com?").buildUpon();
        builderBuildUpon.appendQueryParameter(TtmlNode.ATTR_ID, String.valueOf(i));
        if (pp3.c) {
            builderBuildUpon.appendQueryParameter("vt", "pre");
        }
        b(context, builderBuildUpon, qp3.a(0, strArr));
        String strReplace = AgentWebUtils.urlAppendLang(builderBuildUpon.build().toString()).replace("http://www.google.com?", str2);
        LogUtils.j(a, "visha feedback url:" + strReplace);
        g(context, strReplace, str);
    }

    public static void f(Context context, String str, int i, String... strArr) {
        if (context == null) {
            LogUtils.j(a, "invalid context");
            return;
        }
        String str2 = OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/feedback/form?";
        Uri.Builder builderBuildUpon = Uri.parse("http://www.google.com?").buildUpon();
        if (pp3.c) {
            builderBuildUpon.appendQueryParameter("vt", "pre");
        }
        b(context, builderBuildUpon, qp3.a(i, strArr));
        String strReplace = AgentWebUtils.urlAppendLang(builderBuildUpon.build().toString()).replace("http://www.google.com?", str2);
        LogUtils.j(a, "visha feedback url:" + strReplace);
        g(context, strReplace, str);
    }

    public static void g(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) VishaWebViewActivity.class);
        intent.putExtra(VkConstant.URL, str);
        intent.putExtra("title", str2);
        f5.c(intent, context);
    }
}
