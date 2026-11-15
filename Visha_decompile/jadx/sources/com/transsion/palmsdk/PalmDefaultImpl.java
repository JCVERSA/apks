package com.transsion.palmsdk;

import OooO0OO.OooO00o;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.palmsdk.account.PalmAccProvider;
import com.transsion.palmsdk.account.XNManager;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.palmsdk.data.PalmAuthResult;
import com.transsion.xuanniao.account.api.PalmInitialize;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import defpackage.aw7;
import defpackage.lj7;
import defpackage.mj7;
import defpackage.nj7;
import defpackage.oj7;
import defpackage.pj7;
import defpackage.qj7;
import defpackage.sj7;
import defpackage.uj7;
import defpackage.vj7;
import defpackage.wj;
import defpackage.xj7;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class PalmDefaultImpl extends PalmID {
    public final Context e;
    public final PalmAuthParam f;
    public OooO00o g;
    public boolean h;
    public boolean i;
    public final pj7 j;
    public final lj7 k;
    public final sj7 l;
    public final uj7 m;

    public class OooO0O0 implements Runnable {
        public final PalmID.b OooO00o;
        public final Bundle OooO0O0;

        public final boolean f22OooO0OO;

        public final boolean f23OooO0Oo;

        public class OooO00o extends com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o {
            public final Bundle OooO0O0;

            public OooO00o(Bundle bundle) {
                this.OooO0O0 = bundle;
            }

            @Override
            public void OooO00o(Bundle bundle) throws RemoteException {
                if (this.OooO0O0.size() > 0) {
                    bundle.putAll(this.OooO0O0);
                    this.OooO0O0.clear();
                }
                if (!bundle.containsKey(SniffSoucreBean.JSON_KEY_TOKEN_INFO)) {
                    int i = bundle.getInt("error_code", 0);
                    OooO0O0.this.OooO00o.a(i, bundle.getString(TrackingKey.ERROR_MESSAGE));
                    OooO0O0.this.OooO0O0.putString("ti_s_result", "failure");
                    OooO0O0.this.OooO0O0.putInt("errcode", i);
                    new wj("sdk_start_auth_callback", 7710).c(OooO0O0.this.OooO0O0, null).b();
                    return;
                }
                OooO0O0.this.OooO00o.b(new PalmAuthResult(bundle));
                PalmDefaultImpl.this.y(true);
                String string = bundle.getString("linked_bd");
                if (string != null) {
                    mj7.a(PalmDefaultImpl.this.e).a.saveString("linked_bd", string);
                }
                OooO0O0.this.OooO0O0.putString("ti_s_result", "success");
                new wj("sdk_start_auth_callback", 7710).c(OooO0O0.this.OooO0O0, null).b();
            }

            @Override
            public void onCancel() throws RemoteException {
                OooO0O0.this.OooO00o.onCancel();
                OooO0O0.this.OooO0O0.putString("ti_s_result", "cancel");
                new wj("sdk_start_auth_callback", 7710).c(OooO0O0.this.OooO0O0, null).b();
            }
        }

        public class a implements PalmID.b {
            public final Bundle a;
            public final PalmAuthRequest b;

            public a(Bundle bundle, PalmAuthRequest palmAuthRequest) {
                this.a = bundle;
                this.b = palmAuthRequest;
            }

            @Override
            public void a(int i, String str) {
                if (i != 49999) {
                    OooO0O0.this.OooO00o.a(i, str);
                    return;
                }
                if (PalmDefaultImpl.this.h) {
                    if (PalmDefaultImpl.this.i) {
                        aw7.c(PalmDefaultImpl.this.e).d(this.b);
                    } else {
                        OooO0O0 oooO0O0 = OooO0O0.this;
                        PalmDefaultImpl.this.B(oooO0O0.OooO00o);
                    }
                }
            }

            @Override
            public void b(PalmAuthResult palmAuthResult) {
                vj7.a.g("sdkAuthListener onSuccess");
                String string = null;
                if (palmAuthResult.getNickName() != null || palmAuthResult.getUserName() != null) {
                    try {
                        string = new JSONObject().put("nickName", palmAuthResult.getNickName()).put("userName", palmAuthResult.getUserName()).put("avatarUrl", palmAuthResult.getAvatarUrl()).put("openId", palmAuthResult.getOpenid()).put("unique_id", palmAuthResult.getUniqueId()).toString();
                        this.a.putString("user_info", string);
                    } catch (Exception e) {
                        vj7.a.i(Log.getStackTraceString(e));
                    }
                }
                if (PalmDefaultImpl.this.i) {
                    if (string != null) {
                        XNManager.g().l(PalmDefaultImpl.this.e, string);
                    }
                    XNManager.g().n(PalmDefaultImpl.this.e, palmAuthResult.getAccessToken(), palmAuthResult.getRefreshToken());
                } else {
                    try {
                        ContentValues contentValues = new ContentValues(3);
                        if (string != null) {
                            contentValues.put("account", string);
                        }
                        contentValues.put("aToken", palmAuthResult.getAccessToken());
                        contentValues.put("rToken", palmAuthResult.getRefreshToken());
                        ContentResolver contentResolver = PalmDefaultImpl.this.e.getContentResolver();
                        StringBuilder sb = new StringBuilder();
                        sb.append("content://");
                        Context context = PalmDefaultImpl.this.e;
                        String str = PalmAccProvider.b;
                        sb.append(context.getPackageName() + ".PalmAccProvider");
                        sb.append("/token");
                        contentResolver.insert(Uri.parse(sb.toString()), contentValues);
                    } catch (Exception e2) {
                        vj7.a.i(Log.getStackTraceString(e2));
                    }
                }
                OooO0O0.this.OooO00o.b(palmAuthResult);
                PalmDefaultImpl.this.y(true);
            }

            @Override
            public void onCancel() {
                OooO0O0.this.OooO00o.onCancel();
            }
        }

        public OooO0O0(PalmID.b bVar, Bundle bundle, boolean z, boolean z2) {
            this.OooO00o = bVar;
            this.OooO0O0 = bundle;
            this.f22OooO0OO = z;
            this.f23OooO0Oo = z2;
        }

        @Override
        public void run() {
            Bundle bundle = new Bundle();
            PalmAuthRequest palmAuthRequest = new PalmAuthRequest(PalmDefaultImpl.this.f, PalmDefaultImpl.this.h, new OooO00o(bundle));
            if (PalmDefaultImpl.this.f.hasTudc()) {
                nj7.a(PalmDefaultImpl.this.f.getTudcSpName()).b(PalmDefaultImpl.this.e);
            }
            if (this.f22OooO0OO) {
                Context context = PalmDefaultImpl.this.e;
                ObjectLogUtils objectLogUtils = vj7.a;
                try {
                    Bundle bundle2 = context.getPackageManager().getApplicationInfo("tech.palm.id", 128).metaData;
                    if (bundle2 != null && bundle2.getString("palm_sdk_version", "").compareTo("1.0.2.05") >= 0) {
                        if (!PalmDefaultImpl.this.n() && !this.f23OooO0Oo) {
                            this.OooO00o.a(40105, "palm id not login");
                            return;
                        } else {
                            try {
                                if ("1".equals(PalmAccProvider.a(PalmDefaultImpl.this.e, "userLogout"))) {
                                    this.OooO00o.a(ComConstants.AD_TIMEOUT_MILLIS, "user logout before");
                                    return;
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                this.OooO00o.a(40102, "not support silent mode");
                return;
            }
            Intent intentA = PalmDefaultImpl.this.f.ignorePalmApp() ? null : vj7.a(PalmDefaultImpl.this.e, false);
            vj7.a.g("palm id intent = " + intentA);
            if (intentA != null) {
                PalmAuthParam palmAuthParamCopy = PalmDefaultImpl.this.f.copy();
                if (!PalmDefaultImpl.this.h) {
                    palmAuthParamCopy.setShowPreLogin(false);
                }
                Bundle bundle3 = new Bundle();
                bundle3.putParcelable("auth_param", palmAuthParamCopy);
                bundle3.putBoolean("host_mode", intentA.getBooleanExtra("host_mode", false));
                bundle3.putBoolean("silent_mode", this.f22OooO0OO);
                if (vj7.i(PalmDefaultImpl.this.e)) {
                    bundle3.putBoolean("auto_jump_login", this.f23OooO0Oo);
                } else {
                    bundle3.putBoolean("auto_jump_login", false);
                }
                a aVar = new a(bundle, palmAuthRequest);
                for (int i = 0; i < 2; i++) {
                    if (new com.transsion.palmsdk.auth.OooO0OO(PalmDefaultImpl.this.e, intentA, bundle3, aVar, PalmDefaultImpl.this.i).a()) {
                        return;
                    }
                }
            }
            if (PalmDefaultImpl.this.h) {
                if (PalmDefaultImpl.this.i) {
                    aw7.c(PalmDefaultImpl.this.e).d(palmAuthRequest);
                } else {
                    PalmDefaultImpl.this.B(this.OooO00o);
                }
            }
        }
    }

    public class OooO0OO implements Runnable {
        public final PalmAuthParam OooO00o;
        public final PalmID.b OooO0O0;

        public final Bundle f26OooO0OO;

        public class OooO00o extends com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o {
            public OooO00o() {
            }

            @Override
            public void OooO00o(Bundle bundle) throws RemoteException {
                if (bundle.containsKey(SniffSoucreBean.JSON_KEY_TOKEN_INFO)) {
                    PalmID.b bVar = OooO0OO.this.OooO0O0;
                    if (bVar != null) {
                        bVar.b(new PalmAuthResult(bundle));
                    }
                    OooO0OO.this.f26OooO0OO.putString("ti_s_result", "success");
                    new wj("sdk_start_auth_callback", 7710).c(OooO0OO.this.f26OooO0OO, null).b();
                    return;
                }
                int i = bundle.getInt("error_code", 0);
                String string = bundle.getString(TrackingKey.ERROR_MESSAGE);
                PalmID.b bVar2 = OooO0OO.this.OooO0O0;
                if (bVar2 != null) {
                    bVar2.a(i, string);
                }
                OooO0OO.this.f26OooO0OO.putString("ti_s_result", "failure");
                OooO0OO.this.f26OooO0OO.putInt("errcode", i);
                new wj("sdk_start_auth_callback", 7710).c(OooO0OO.this.f26OooO0OO, null).b();
            }

            @Override
            public void onCancel() throws RemoteException {
                PalmID.b bVar = OooO0OO.this.OooO0O0;
                if (bVar != null) {
                    bVar.onCancel();
                }
                OooO0OO.this.f26OooO0OO.putString("ti_s_result", "cancel");
                new wj("sdk_start_auth_callback", 7710).c(OooO0OO.this.f26OooO0OO, null).b();
            }
        }

        public OooO0OO(PalmAuthParam palmAuthParam, PalmID.b bVar, Bundle bundle) {
            this.OooO00o = palmAuthParam;
            this.OooO0O0 = bVar;
            this.f26OooO0OO = bundle;
        }

        @Override
        public void run() {
            boolean zJ = XNManager.g().j(PalmDefaultImpl.this.e);
            PalmAuthRequest palmAuthRequest = new PalmAuthRequest(this.OooO00o, PalmDefaultImpl.this.h, new OooO00o());
            aw7 aw7VarC = aw7.c(PalmDefaultImpl.this.e);
            if (zJ) {
                palmAuthRequest.setSilentMode(true);
                aw7VarC.d(palmAuthRequest);
            } else {
                PalmID.b bVar = this.OooO0O0;
                if (bVar != null) {
                    bVar.a(40105, "palm id not login");
                }
            }
        }
    }

    public class a implements PalmID.b {
        public final PalmID.b a;

        public a(PalmID.b bVar) {
            this.a = bVar;
        }

        @Override
        public void a(int i, String str) {
            vj7.a.g("onFailure errorCode = " + i + ", errorMessage = " + str);
            PalmID.b bVar = this.a;
            if (bVar != null) {
                bVar.a(i, str);
            }
        }

        @Override
        public void b(PalmAuthResult palmAuthResult) {
            String string;
            String string2 = "";
            ObjectLogUtils objectLogUtils = vj7.a;
            StringBuilder sbA = qj7.a("onSuccess ");
            sbA.append(palmAuthResult.getUniqueId());
            objectLogUtils.g(sbA.toString());
            String intentActivity = PalmDefaultImpl.this.f.getIntentActivity();
            if (TextUtils.isEmpty(intentActivity)) {
                if (this.a != null) {
                    vj7.a.g("callback onSuccess");
                    this.a.b(palmAuthResult);
                    return;
                }
                return;
            }
            try {
                string = new JSONObject().put("access_token", palmAuthResult.getAccessToken()).put("refresh_token", palmAuthResult.getRefreshToken()).put("open_id", palmAuthResult.getOpenid()).toString();
                try {
                    if (palmAuthResult.getNickName() != null || palmAuthResult.getUserName() != null) {
                        string2 = new JSONObject().put("nickName", palmAuthResult.getNickName()).put("userName", palmAuthResult.getUserName()).put("avatarUrl", palmAuthResult.getAvatarUrl()).toString();
                    }
                } catch (Exception e) {
                    e = e;
                    vj7.a.i(Log.getStackTraceString(e));
                }
            } catch (Exception e2) {
                e = e2;
                string = "";
            }
            Bundle bundle = new Bundle();
            bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, string);
            bundle.putString("user_info", string2);
            try {
                PalmDefaultImpl.this.e.startActivity(new Intent("android.intent.action.VIEW").setClassName(PalmDefaultImpl.this.e, intentActivity).addFlags(268435456).putExtras(bundle));
            } catch (Exception e3) {
                vj7.a.i(Log.getStackTraceString(e3));
            }
        }

        @Override
        public void onCancel() {
            vj7.a.g("onCancel");
            PalmID.b bVar = this.a;
            if (bVar != null) {
                bVar.onCancel();
            }
        }
    }

    public class b implements PalmID.a {
        public final PalmID.a a;
        public final Bundle b;

        public b(PalmDefaultImpl palmDefaultImpl, PalmID.a aVar, Bundle bundle) {
            this.a = aVar;
            this.b = bundle;
        }

        @Override
        public void a(int i, String str) {
            PalmID.a aVar = this.a;
            if (aVar != null) {
                aVar.a(i, str);
            }
            this.b.putString("ti_s_result", "failure");
            this.b.putInt("errcode", i);
            new wj("sdk_openapi_callback", 7710).c(this.b, null).b();
        }

        @Override
        public void onSuccess(Object obj) {
            String str = (String) obj;
            PalmID.a aVar = this.a;
            if (aVar != null) {
                aVar.onSuccess(str);
            }
            this.b.putString("ti_s_result", "success");
            new wj("sdk_openapi_callback", 7710).c(this.b, null).b();
        }
    }

    public PalmDefaultImpl(Context context, PalmAuthParam palmAuthParam) {
        this.h = false;
        this.i = false;
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        this.f = palmAuthParam;
        palmAuthParam.setupApp(context);
        this.j = new pj7(applicationContext, palmAuthParam);
        sj7 sj7Var = new sj7(applicationContext, palmAuthParam);
        this.l = sj7Var;
        this.m = new uj7(applicationContext, palmAuthParam);
        this.k = new lj7(applicationContext, palmAuthParam);
        sj7Var.e();
        this.i = sj7Var.h();
        this.g = sj7Var.d();
        boolean zA = A(this.i);
        this.h = zA;
        if (!this.i || zA) {
            return;
        }
        XNManager.g().d(palmAuthParam);
    }

    public boolean A(boolean z) {
        try {
            if (z) {
                int i = PalmInitialize.b;
                return true;
            }
            int i2 = LoginActivity.K;
            return true;
        } catch (Exception e) {
            oj7.a(e, qj7.a("palmInitialize error: "), vj7.a);
            return false;
        }
    }

    public final void B(PalmID.b bVar) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("auth_param", this.f.copy());
        Intent intent = new Intent("intent.action.PALM_ACCOUNT_AUTH");
        intent.setPackage(this.e.getPackageName());
        for (int i = 0; i < 2 && !new com.transsion.palmsdk.auth.OooO0OO(this.e, intent, bundle, bVar, this.i).a(); i++) {
        }
    }

    @Override
    public void c(Context context, PalmID.b bVar) {
        d(context, true, true, bVar);
    }

    @Override
    public void d(Context context, boolean z, boolean z2, PalmID.b bVar) {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.f.getAppid());
        bundle.putString("version", "2.0.1.03");
        if (context instanceof Activity) {
            bundle.putString("ti_s_source", context.getClass().getSimpleName());
        }
        new wj("sdk_start_auth", 7710).c(bundle, null).b();
        a aVar = new a(bVar);
        if (!vj7.h(this.e)) {
            aVar.a(40103, "network unavailable");
            bundle.putString("ti_s_result", "failure");
            bundle.putInt("errcode", 40103);
            new wj("sdk_start_auth_callback", 7710).c(bundle, null).b();
            return;
        }
        if (m()) {
            aVar.b(new PalmAuthResult(XNManager.g().h(this.e), XNManager.g().e(this.e)));
            vj7.a.g("palm id is already logged in");
        } else {
            if (this.i) {
                XNManager.g().c(this.e, this.f.getAppid(), this.f.getServerMode());
            }
            xj7.a().execute(new OooO0O0(aVar, bundle, z, z2));
        }
    }

    @Override
    public void e(String str, String str2, Map map, PalmID.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.f.getAppid());
        bundle.putString("version", "2.0.1.03");
        bundle.putString("param", str);
        new wj("sdk_openapi", 7710).c(bundle, null).b();
        this.k.a(str, str2, map, new b(this, aVar, bundle));
    }

    @Override
    public PalmID.Profile i() {
        try {
            if (this.i) {
                return this.m.a();
            }
            String strA = PalmAccProvider.a(this.e, MediaFormat.KEY_PROFILE);
            if (strA != null) {
                return (PalmID.Profile) new Gson().fromJson(strA, PalmID.Profile.class);
            }
            return null;
        } catch (Exception e) {
            oj7.a(e, qj7.a("getProfile error: "), vj7.a);
            return null;
        }
    }

    @Override
    public String j() {
        try {
            return this.i ? XNManager.g().h(this.e) : PalmAccProvider.a(this.e, "token");
        } catch (Exception e) {
            oj7.a(e, qj7.a("getToken error: "), vj7.a);
            return null;
        }
    }

    @Override
    public long k() {
        try {
            return XNManager.g().i(this.e);
        } catch (Exception e) {
            oj7.a(e, qj7.a("getTokenExpiredTs error: "), vj7.a);
            return 0L;
        }
    }

    @Override
    public boolean m() {
        boolean zJ = false;
        try {
            if (!this.i) {
                return "1".equals(PalmAccProvider.a(this.e, "status"));
            }
            uj7 uj7Var = this.m;
            uj7Var.getClass();
            try {
                zJ = XNManager.g().j(uj7Var.a);
                return zJ;
            } catch (Exception e) {
                vj7.a.i("PalmUserManager isLoggedIn error: " + e.getMessage());
                return false;
            }
        } catch (Exception e2) {
            oj7.a(e2, qj7.a("isLoggedIn error: "), vj7.a);
            return zJ;
        }
    }

    @Override
    public boolean n() {
        try {
            return this.m.b();
        } catch (Exception e) {
            oj7.a(e, qj7.a("isOSLoggedIn error: "), vj7.a);
            return false;
        }
    }

    @Override
    public void o(Activity activity, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.f.getAppid());
        bundle.putString("version", "2.0.1.03");
        new wj("sdk_open_palm_center", 7710).c(bundle, null).b();
        if (activity == null) {
            Log.e("PalmSDK", "invalid arguments");
            return;
        }
        try {
            vj7.a.g("isLogged = " + m());
            try {
                ApplicationInfo applicationInfo = activity.getApplicationContext().getPackageManager().getApplicationInfo("tech.palm.id", 0);
                if (applicationInfo != null && applicationInfo.enabled) {
                    try {
                        Intent intent = new Intent();
                        intent.setClassName("tech.palm.id", "com.transsion.xuanniao.account.center.view.UserCenterActivity");
                        activity.startActivity(intent);
                    } catch (Exception e) {
                        Log.e("PalmSDK", Log.getStackTraceString(e));
                    }
                } else if (this.h) {
                    int i = UserCenterActivity.r;
                    activity.startActivity(new Intent(this.e, (Class<?>) UserCenterActivity.class));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (Exception e2) {
            Log.e("PalmSDK", Log.getStackTraceString(e2));
        }
    }

    @Override
    public void p(PalmID.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.f.getAppid());
        bundle.putString("version", "2.0.1.03");
        new wj("sdk_refresh_token", 7710).c(bundle, null).b();
        OooO0OO.OooO0O0.a(this.e).c(aVar, false);
    }

    public PalmAuthParam x() {
        return this.f;
    }

    public void y(boolean z) {
        try {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((PalmID.c) it.next()).onChanged(z);
            }
        } catch (Exception e) {
            oj7.a(e, qj7.a("notifyLoggedListener error: "), vj7.a);
        }
    }

    public void z(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                vj7.a.z("PalmSDK newProfile is empty");
                return;
            }
            PalmID.Profile profile = (PalmID.Profile) new Gson().fromJson(str, PalmID.Profile.class);
            if (profile == null) {
                Log.d("PalmSDK", "notifyProfileListener newProfile = null");
                return;
            }
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((PalmID.d) it.next()).a(profile);
            }
        } catch (Exception e) {
            oj7.a(e, qj7.a("notifyProfileListener error: "), vj7.a);
        }
    }
}
