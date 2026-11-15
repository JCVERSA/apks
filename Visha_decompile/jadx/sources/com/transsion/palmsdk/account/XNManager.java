package com.transsion.palmsdk.account;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.gson.Gson;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.palmsdk.data.PalmTokenInfo;
import defpackage.aw7;
import defpackage.mj7;
import defpackage.qj7;
import defpackage.rj7;
import defpackage.vj7;
import defpackage.xj7;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
import p002OooO0Oo.OooO;
import p002OooO0Oo.OooO0o;
import p002OooO0Oo.OooOO0;
import p002OooO0Oo.OooOO0O;

public class XNManager {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public a e;
    public mj7 f;
    public SharedPreferences g;

    public static class Config implements Serializable {
        public boolean isKeyUploaded;
        public String refreshToken;
        public String token;
    }

    public interface a {
        boolean a(Context context, String str, PalmID.a aVar);

        void b(Context context, String str, int i);

        void c(Context context, String str);

        String d(Context context);

        boolean e(Context context);

        void f(Context context, String str);

        long g(Context context);

        String h(Context context, boolean z);

        void i(Context context, String str, String str2);
    }

    public class b implements a {
        public final PalmAuthParam a;

        public class a implements rj7 {
            public final Context a;
            public final PalmID.a b;

            public a(Context context, PalmID.a aVar) {
                this.a = context;
                this.b = aVar;
            }

            @Override
            public void a(int i, String str) {
                vj7.a.g("refreshToken errorCode = " + i + ", errorMessage = " + str);
                if (i == 40055) {
                    b.this.k(this.a, true);
                }
                PalmID.a aVar = this.b;
                if (aVar != null) {
                    aVar.a(i, str);
                }
            }

            @Override
            public void onSuccess(Object obj) {
                PalmTokenInfo palmTokenInfo = (PalmTokenInfo) obj;
                vj7.a.g("refreshToken onSuccess");
                b.this.i(this.a, palmTokenInfo.access_token, palmTokenInfo.refresh_token);
                XNManager.this.g.edit().putLong("key_refresh_time", System.currentTimeMillis()).apply();
                PalmID.a aVar = this.b;
                if (aVar != null) {
                    aVar.onSuccess(palmTokenInfo.access_token);
                }
            }
        }

        public class C0238b implements rj7 {
            public C0238b() {
            }

            @Override
            public void a(int i, String str) {
                vj7.a.g("callOpenApi errorCode = " + i + ", errorMessage = " + str);
            }

            @Override
            public void onSuccess(Object obj) {
                String str = (String) obj;
                vj7.a.g("callOpenApi onSuccess");
                if (XNManager.this.f != null) {
                    XNManager.this.f.a.saveString("account", str);
                }
            }
        }

        public class c implements rj7 {
            public final PalmAuthRequest a;
            public final PalmAuthParam b;
            public final Map c;

            public c(b bVar, PalmAuthRequest palmAuthRequest, PalmAuthParam palmAuthParam, Map map) {
                this.a = palmAuthRequest;
                this.b = palmAuthParam;
                this.c = map;
            }

            @Override
            public void a(int i, String str) {
                vj7.a.g("getAuthCode errorCode = " + i + ", errorMessage = " + str);
                this.a.setException(i, str);
            }

            @Override
            public void onSuccess(Object obj) {
                String str = (String) obj;
                vj7.a.g("getAuthCode response = " + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(TrackingKey.CODE);
                    if (TextUtils.isEmpty(string)) {
                        this.a.setException(40104, "authCode data error");
                    } else if (this.b.isReqToken()) {
                        this.c.put(TrackingKey.CODE, string);
                        this.c.put("grant_type", "authorization_code");
                        OooO0o oooO0oE = OooO0o.e();
                        Map map = this.c;
                        com.transsion.palmsdk.account.a aVar = new com.transsion.palmsdk.account.a(this);
                        oooO0oE.getClass();
                        xj7.a().execute(new OooOO0(oooO0oE, map, aVar));
                    } else {
                        Bundle bundle = new Bundle();
                        bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, string).put("open_id", jSONObject.optString("open_id")).toString());
                        this.a.setResult(bundle);
                    }
                } catch (Exception e) {
                    vj7.a.g(Log.getStackTraceString(e));
                    this.a.setException(40104, e.getMessage());
                }
            }
        }

        public b(PalmAuthParam palmAuthParam) {
            this.a = palmAuthParam;
        }

        @Override
        public boolean a(Context context, String str, PalmID.a aVar) {
            try {
                long jG = g(context);
                if (aVar == null && str == null && jG > 1800000) {
                    return false;
                }
                HashMap map = new HashMap();
                Config configJ = j();
                map.put("refresh_token", configJ != null ? configJ.refreshToken : "");
                map.put("grant_type", "refresh_token");
                map.put("client_id", this.a.getAppid());
                map.put("scope", this.a.getScopes());
                OooO0o oooO0oE = OooO0o.e();
                a aVar2 = new a(context, aVar);
                oooO0oE.getClass();
                xj7.a().execute(new OooOO0O(oooO0oE, map, aVar2));
                return false;
            } catch (Exception e) {
                vj7.a.g(Log.getStackTraceString(e));
                return false;
            }
        }

        @Override
        public void b(Context context, String str, int i) {
        }

        @Override
        public void c(Context context, String str) {
            if (XNManager.this.f != null) {
                XNManager.this.f.a.saveString("account", str);
            }
        }

        @Override
        public String d(Context context) {
            Config configJ = j();
            return configJ != null ? configJ.token : "";
        }

        @Override
        public boolean e(Context context) {
            return XNManager.this.g.getBoolean("is_logged_in", false);
        }

        @Override
        public void f(Context context, String str) {
            PalmAuthRequest palmAuthRequestB = aw7.c(context).b(str);
            if (palmAuthRequestB == null) {
                return;
            }
            PalmAuthParam authParam = palmAuthRequestB.getAuthParam();
            HashMap map = new HashMap();
            StringBuilder sbA = qj7.a("Bearer ");
            Config configJ = j();
            sbA.append(configJ != null ? configJ.token : "");
            map.put(RtspHeaders.AUTHORIZATION, sbA.toString());
            map.put(DataTypes.OBJ_LANGUAGE, Locale.getDefault().getLanguage());
            map.put("Client-ID", authParam.getAppid());
            map.put("AppSign", authParam.getAppSign());
            map.put("AppPackage", authParam.getPkgName());
            Map<String, Object> map2 = authParam.toMap();
            map2.put("grant_type", "authorization_code");
            map2.put("response_type", TrackingKey.CODE);
            OooO0o oooO0oE = OooO0o.e();
            c cVar = new c(this, palmAuthRequestB, authParam, map2);
            oooO0oE.getClass();
            xj7.a().execute(new OooO(oooO0oE, map, map2, cVar));
        }

        @Override
        public long g(Context context) {
            long j;
            try {
                Config configJ = j();
                String str = configJ != null ? configJ.token : "";
                if (str == null || str.length() <= 0) {
                    j = 7200000;
                } else {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(str.split("\\.")[1], 11), StandardCharsets.UTF_8));
                    j = ((long) (jSONObject.getInt("exp") - jSONObject.getInt("iat"))) * 1000;
                }
            } catch (Exception e) {
                vj7.a.g(Log.getStackTraceString(e));
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = XNManager.this.g.getLong("key_refresh_time", 0L);
            long j3 = jCurrentTimeMillis - j2;
            if (j3 > 0 && j3 < j) {
                return j - j3;
            }
            vj7.a.g("etime = " + j + ", ltime = " + j2 + ", ctime = " + jCurrentTimeMillis);
            return 0L;
        }

        @Override
        public String h(Context context, boolean z) {
            String strLoadString = XNManager.this.f != null ? XNManager.this.f.a.loadString("account") : null;
            if (z || strLoadString == null || !strLoadString.contains("xuanniaoId")) {
                HashMap map = new HashMap();
                StringBuilder sbA = qj7.a("Bearer ");
                Config configJ = j();
                sbA.append(configJ != null ? configJ.token : "");
                map.put(RtspHeaders.AUTHORIZATION, sbA.toString());
                map.put("Client-ID", this.a.getAppid());
                OooO0o.e().d("/openapi/user/get-profile", map, null, new C0238b());
            }
            return strLoadString;
        }

        @Override
        public void i(Context context, String str, String str2) {
            Config config = new Config();
            config.token = str;
            config.refreshToken = str2;
            if (XNManager.this.f != null) {
                mj7 mj7Var = XNManager.this.f;
                mj7Var.a.saveString("config", new Gson().toJson(config));
                if (TextUtils.isEmpty(str)) {
                    XNManager.this.f.a.saveString("account", "");
                    XNManager.this.g.edit().putBoolean("is_logged_in", false).apply();
                } else {
                    XNManager.this.g.edit().putBoolean("is_logged_in", true).putLong("key_refresh_time", System.currentTimeMillis()).apply();
                }
            }
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.PALM_ID_CHANGE"));
        }

        public Config j() {
            if (XNManager.this.f == null) {
                return null;
            }
            String strLoadString = XNManager.this.f.a.loadString("config");
            if (TextUtils.isEmpty(strLoadString)) {
                return null;
            }
            return (Config) new Gson().fromJson(strLoadString, Config.class);
        }

        public void k(Context context, boolean z) {
            vj7.a.g("silentLogout");
            if (XNManager.this.f != null) {
                XNManager.this.f.a.saveString("config", "");
                XNManager.this.f.a.saveString("account", "");
            }
            XNManager.this.g.edit().putBoolean("is_logged_in", false).apply();
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.PALM_ID_CHANGE"));
        }
    }

    public static class c {
        public static XNManager a = new XNManager(null);
    }

    public XNManager(b bVar) {
        this();
    }

    public static XNManager g() {
        return c.a;
    }

    public void c(Context context, String str, int i) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.b(context, str, i);
        }
    }

    public void d(PalmAuthParam palmAuthParam) {
        this.f = mj7.a(PalmID.h());
        this.g = PalmID.h().getSharedPreferences("AccountPrefs", 0);
        this.e = new b(palmAuthParam);
    }

    public String e(Context context) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar.h(context, false);
        }
        return null;
    }

    public String f(Context context, boolean z) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar.h(context, z);
        }
        return null;
    }

    public String h(Context context) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar.d(context);
        }
        return null;
    }

    public long i(Context context) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar.g(context);
        }
        return 0L;
    }

    public boolean j(Context context) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar.e(context);
        }
        return false;
    }

    public boolean k(Context context, String str, PalmID.a aVar) {
        a aVar2 = this.e;
        if (aVar2 != null) {
            return aVar2.a(context, str, aVar);
        }
        return false;
    }

    public void l(Context context, String str) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.c(context, str);
        }
    }

    public void m(a aVar) {
        this.e = aVar;
    }

    public void n(Context context, String str, String str2) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.i(context, str, str2);
        }
    }

    public void o(Context context, String str) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.f(context, str);
        }
    }

    public XNManager() {
        this.a = "account";
        this.b = "config";
        this.c = "is_logged_in";
        this.d = "key_refresh_time";
    }
}
