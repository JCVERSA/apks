package com.transsion.palmsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.palmsdk.b;
import com.transsion.palmsdk.data.PalmAuthResult;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.utils.ToastUtils;
import defpackage.fi1;
import defpackage.g06;
import defpackage.ge;
import defpackage.gec;
import defpackage.h27;
import defpackage.kfc;
import defpackage.r0a;
import defpackage.v34;
import defpackage.w29;
import defpackage.w6c;
import defpackage.zdc;

public abstract class b {
    public static PalmID a;
    public static VishaPalmUserInfo b;
    public static PalmID.c c = new C0242b();
    public static PalmID.d d = new c();

    public class a implements PalmID.a {
        @Override
        public void a(int i, String str) {
            Log.d("visha_PalmIdManager", "errorCode = " + i + ", errorMessage = " + str);
        }

        @Override
        public void onSuccess(String str) {
            LogUtils.j("visha_PalmIdManager", "queryPalmIdInfo callOpenApi onSuccess : " + str);
            VishaPalmUserInfo vishaPalmUserInfo = (VishaPalmUserInfo) fi1.b(str, VishaPalmUserInfo.class);
            if (b.b == null) {
                b.b = new VishaPalmUserInfo();
            }
            b.b.setAccess_token(b.a.j());
            b.b.setUserName(vishaPalmUserInfo.getUserName());
            b.b.setNickName(vishaPalmUserInfo.getNickName());
            if (vishaPalmUserInfo.getNickName() != null && !vishaPalmUserInfo.getNickName().isEmpty()) {
                b.b.setPalmNickName(vishaPalmUserInfo.getNickName());
            }
            if (vishaPalmUserInfo.getUserName() != null && !vishaPalmUserInfo.getUserName().isEmpty()) {
                b.b.setPalmUserName(vishaPalmUserInfo.getUserName());
            }
            b.b.setAvatarUrl(vishaPalmUserInfo.getAvatarUrl());
            b.b.setOpenId(vishaPalmUserInfo.getOpenId());
            b.b.setUniqueId(vishaPalmUserInfo.getUniqueId());
            b.I(b.b.getOpenId());
            b.J(b.b.getUniqueId());
            zdc.q(b.b.getAccess_token());
            zdc.s(b.b.getUniqueId());
            h27.c().e(AnalyticsListener.EVENT_RENDERER_READY_CHANGED, b.b);
        }
    }

    public class C0242b implements PalmID.c {
        @Override
        public void onChanged(boolean z) {
            LogUtils.j("visha_PalmIdManager", "onChanged " + z);
            v34.d("login_flow");
            if (z) {
                b.D();
            } else {
                b.B();
            }
        }
    }

    public class c implements PalmID.d {
        @Override
        public void a(PalmID.Profile profile) {
            LogUtils.j("visha_PalmIdManager", "mPalmProfileListener onChanged " + profile.toString());
            if (b.b == null) {
                b.b = new VishaPalmUserInfo();
            }
            b.b.setAccess_token(b.a.j());
            b.b.setUserName(profile.username);
            b.b.setNickName(profile.nickname);
            b.b.setAvatarUrl(profile.avatarUrl);
            b.b.setOpenId(profile.openId);
            b.b.setUniqueId(profile.uniqueId);
            b.I(b.b.openId);
            zdc.q(b.b.access_token);
            h27.c().e(AnalyticsListener.EVENT_RENDERER_READY_CHANGED, b.b);
        }
    }

    public class d implements PalmID.a {
        public final String a;
        public final WebView b;

        public d(String str, WebView webView) {
            this.a = str;
            this.b = webView;
        }

        @Override
        public void a(int i, String str) {
        }

        @Override
        public void onSuccess(String str) {
            WebView webView;
            VishaPalmUserInfo vishaPalmUserInfo = b.b;
            if (vishaPalmUserInfo != null) {
                vishaPalmUserInfo.access_token = str;
                zdc.q(str);
                if (this.a.isEmpty() || (webView = this.b) == null) {
                    return;
                }
                webView.evaluateJavascript(this.a, null);
            }
        }
    }

    public class e implements PalmID.b {
        public final String a;

        public e(String str) {
            this.a = str;
        }

        @Override
        public void a(int i, String str) {
            b.z(i, str, false, this.a);
            v34.d("login_flow");
        }

        @Override
        public void b(PalmAuthResult palmAuthResult) {
            b.A(palmAuthResult, false, this.a);
        }

        @Override
        public void onCancel() {
            b.y(false);
            v34.d("login_flow");
        }
    }

    public class f implements PalmID.b {
        public final String a;

        public f(String str) {
            this.a = str;
        }

        @Override
        public void a(int i, String str) {
            b.z(i, str, false, this.a);
            v34.d("login_flow");
        }

        @Override
        public void b(PalmAuthResult palmAuthResult) {
            b.A(palmAuthResult, false, this.a);
        }

        @Override
        public void onCancel() {
            b.y(false);
            v34.d("login_flow");
        }
    }

    public class g implements PalmID.b {
        public final boolean a;
        public final String b;

        public g(boolean z, String str) {
            this.a = z;
            this.b = str;
        }

        @Override
        public void a(int i, String str) {
            b.z(i, str, this.a, this.b);
        }

        @Override
        public void b(PalmAuthResult palmAuthResult) {
            b.A(palmAuthResult, this.a, this.b);
        }

        @Override
        public void onCancel() {
            b.y(this.a);
        }
    }

    public class h implements PalmID.b {
        public final boolean a;
        public final String b;

        public h(boolean z, String str) {
            this.a = z;
            this.b = str;
        }

        @Override
        public void a(int i, String str) {
            b.z(i, str, this.a, this.b);
        }

        @Override
        public void b(PalmAuthResult palmAuthResult) {
            b.A(palmAuthResult, this.a, this.b);
        }

        @Override
        public void onCancel() {
            b.y(this.a);
        }
    }

    public class i implements kfc.d {
        public final String a;
        public final boolean b;

        public i(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        @Override
        public void a() {
            g06.c(false, this.a, !this.b ? 1 : 0, "request vip info failed");
            h27.c().e(AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, b.b);
        }

        @Override
        public void b(UserInfoBean userInfoBean) {
            LogUtils.j("visha_PalmIdManager", "get visha user info success, post EVENT_PALM_ID_LOG_IN event");
            h27.c().e(AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, b.b);
            g06.c(true, this.a, !this.b ? 1 : 0, "success");
        }
    }

    public static void A(PalmAuthResult palmAuthResult, final boolean z, final String str) {
        if (b == null) {
            b = new VishaPalmUserInfo();
        }
        b.setOpenId(palmAuthResult.getOpenid());
        b.setNickName(palmAuthResult.getNickName());
        b.setUserName(palmAuthResult.getUserName());
        b.setPalmUserName(palmAuthResult.getUserName());
        b.setPalmNickName(palmAuthResult.getNickName());
        b.setAvatarUrl(palmAuthResult.getAvatarUrl());
        b.setAccess_token(palmAuthResult.getAccessToken());
        b.setUniqueId(palmAuthResult.getUniqueId());
        LogUtils.j("visha_PalmIdManager", "onAuthorizeSuccess PalmAuthResult: " + palmAuthResult, "bSilentMode = " + z, "mPalmUserInfo: " + b);
        I(b.getOpenId());
        J(b.getUniqueId());
        zdc.q(b.getAccess_token());
        zdc.s(b.getUniqueId());
        gec.c().b();
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                b.x(str, z);
            }
        }, 500L);
    }

    public static void B() {
        b = null;
        I("");
        J("");
        gec.c().j();
        zdc.o("");
        zdc.v("");
        CacheManager.getInstance().removeCache("user_info_cache_key");
        h27.c().e(AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED, new Object[0]);
    }

    public static void C(Activity activity) {
        PalmID palmID = a;
        palmID.o(activity, palmID.j());
    }

    public static void D() {
        LogUtils.j("visha_PalmIdManager", "queryPalmIdInfo");
        PalmID.Profile profileI = a.i();
        if (profileI == null || TextUtils.isEmpty(profileI.uniqueId)) {
            LogUtils.j("visha_PalmIdManager", "queryPalmIdInfo callOpenApi");
            PalmID palmID = a;
            palmID.e("/openapi/user/get-profile", palmID.j(), null, new a());
            return;
        }
        LogUtils.j("visha_PalmIdManager", "query user profile:" + profileI);
        if (b == null) {
            b = new VishaPalmUserInfo();
        }
        b.setAccess_token(a.j());
        b.setUserName(profileI.username);
        b.setNickName(profileI.nickname);
        String str = profileI.username;
        if (str != null && !str.isEmpty()) {
            b.setPalmUserName(profileI.username);
        }
        String str2 = profileI.nickname;
        if (str2 != null && !str2.isEmpty()) {
            b.setPalmNickName(profileI.nickname);
        }
        b.setAvatarUrl(profileI.avatarUrl);
        b.setOpenId(profileI.openId);
        b.setUniqueId(profileI.uniqueId);
        I(b.getOpenId());
        J(b.getUniqueId());
        zdc.q(b.access_token);
        zdc.s(b.getUniqueId());
        h27.c().e(AnalyticsListener.EVENT_RENDERER_READY_CHANGED, b);
        LogUtils.j("visha_PalmIdManager", "queryPalmIdInfo onSuccess : " + b);
    }

    public static void E(WebView webView, String str) {
        if (a.k() == 0) {
            a.p(new d(str, webView));
        }
    }

    public static void F(PalmID.a aVar) {
        PalmID palmID = a;
        if (palmID != null) {
            palmID.p(aVar);
        }
    }

    public static void G() {
        PalmID palmID = a;
        if (palmID == null) {
            return;
        }
        palmID.a(c);
    }

    public static void H() {
        PalmID palmID = a;
        if (palmID == null) {
            return;
        }
        palmID.b(d);
    }

    public static void I(String str) {
        w6c.x(Utils.a(), "palm_open_id", str);
        zdc.o(str);
    }

    public static void J(String str) {
        w6c.x(Utils.a(), "palm_unique_id", str);
        zdc.r(str);
    }

    public static void K(String str) {
        zdc.q(b.access_token);
        zdc.s(b.getUniqueId());
        VishaPalmUserInfo vishaPalmUserInfo = b;
        if (vishaPalmUserInfo != null) {
            vishaPalmUserInfo.access_token = str;
        }
    }

    public static void L() {
        PalmID palmID = a;
        if (palmID == null) {
            return;
        }
        palmID.q(c);
    }

    public static void M() {
        PalmID palmID = a;
        if (palmID == null) {
            return;
        }
        palmID.r(d);
    }

    public static void g(Activity activity) {
        h(activity, null);
    }

    public static void h(Activity activity, String str) {
        g06.b(str, 1);
        if (a == null) {
            y(false);
            LogUtils.m("visha_PalmIdManager", "PalmID is null");
            return;
        }
        v34.c("login_flow", 300000L);
        boolean zT = t();
        Log.d("visha_PalmIdManager", "authorize isPalmOSLogin:" + zT);
        if (zT) {
            a.c(activity, new e(str));
        } else {
            a.d(activity, false, true, new f(str));
        }
    }

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
    public static void i(Activity activity, String str, boolean z) {
        if (a == null) {
            return;
        }
        Log.i("visha_PalmIdManager", "authorize from:" + str + ",bSilentMode:" + z);
        g06.b(str, !z ? 1 : 0);
        if (z && t()) {
            a.c(activity, new g(z, str));
        } else {
            a.d(activity, z, !z, new h(z, str));
        }
    }

    public static String j() {
        VishaPalmUserInfo vishaPalmUserInfo = b;
        String avatarUrl = vishaPalmUserInfo != null ? vishaPalmUserInfo.getAvatarUrl() : "";
        LogUtils.j("visha_PalmIdManager", "getAvatar: " + avatarUrl);
        return avatarUrl;
    }

    public static String k() {
        String openId;
        VishaPalmUserInfo vishaPalmUserInfo = b;
        return (vishaPalmUserInfo == null || a == null || (openId = vishaPalmUserInfo.getOpenId()) == null) ? "" : openId;
    }

    public static String l() {
        String strK = w6c.k(Utils.a(), "palm_open_id");
        return strK == null ? "" : strK;
    }

    public static String m() {
        String uniqueId;
        VishaPalmUserInfo vishaPalmUserInfo = b;
        return (vishaPalmUserInfo == null || (uniqueId = vishaPalmUserInfo.getUniqueId()) == null) ? "" : uniqueId;
    }

    public static String n() {
        String strK = w6c.k(Utils.a(), "palm_unique_id");
        return strK == null ? "" : strK;
    }

    public static String o() {
        PalmID palmID = a;
        return (palmID == null || r0a.g(palmID.j())) ? "" : a.j();
    }

    public static VishaPalmUserInfo p() {
        return b;
    }

    public static int q(Context context) {
        return (!ge.e() || w6c.d(context, "environment_mode", 0) == 1) ? 4 : 2;
    }

    public static void r(Context context) {
        a = PalmID.f(context, new PalmAuthParam.a().p("vishaplayer").q(new String[]{w29.b}).r(q(context)).o().s(true).t(true).n());
        VishaPalmUserInfo vishaPalmUserInfo = new VishaPalmUserInfo();
        b = vishaPalmUserInfo;
        vishaPalmUserInfo.setOpenId(l());
        b.setUniqueId(n());
        zdc.o(b.getOpenId());
        zdc.r(b.getUniqueId());
        zdc.m("vishaplayer");
        zdc.n("vishaplayer");
        zdc.q(o());
        zdc.s(b.getUniqueId());
        gec.c();
        LogUtils.j("visha_PalmIdManager", "token:" + o(), "userid:" + b.openId);
        ThreadUtils.t(new Runnable() {
            @Override
            public final void run() {
                b.w();
            }
        }, 1500L);
    }

    public static boolean s() {
        PalmID palmID = a;
        if (palmID == null) {
            return false;
        }
        return palmID.m();
    }

    public static boolean t() {
        PalmID palmID = a;
        if (palmID == null) {
            return false;
        }
        return palmID.n();
    }

    public static boolean u() {
        PalmID palmID = a;
        return palmID != null && palmID.k() > 0;
    }

    public static void v() {
        if (s()) {
            LogUtils.j("visha_PalmIdManager", "VishaUserManger getVishaUserInfo");
            kfc.k(false, null);
        }
    }

    public static void w() {
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                b.v();
            }
        });
    }

    public static void x(String str, boolean z) {
        kfc.k(false, new i(str, z));
    }

    public static void y(boolean z) {
        h27.c().e(1190, new Object[0]);
    }

    public static void z(int i2, String str, boolean z, String str2) {
        LogUtils.j("visha_PalmIdManager", "errorCode = " + i2, "errorMessage = " + str, "bSilentMode = " + z);
        h27.c().e(1189, Integer.valueOf(i2), str);
        B();
        g06.c(false, str2, !z ? 1 : 0, str);
        if (z) {
            return;
        }
        if (i2 == 40103) {
            ToastUtils.s(com.transsion.playercommon.R.string.net_not_connect);
        } else {
            ToastUtils.s(com.transsion.playercommon.R.string.palm_id_login_error);
        }
    }
}
