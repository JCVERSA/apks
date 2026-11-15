package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.gson.Gson;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.livecaption.constant.ICode;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.auth.data.AuthTokenReq;
import com.transsion.xuanniao.account.auth.data.AuthTokenRes;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.Config;
import com.transsion.xuanniao.account.model.data.LoginRes;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import org.json.JSONObject;

public class il7 {
    public static il7 a;

    public class a implements Callback {
        public final PalmAuthRequest b;
        public final Context c;
        public final String d;
        public final PalmAuthParam e;

        public a(PalmAuthRequest palmAuthRequest, Context context, String str, PalmAuthParam palmAuthParam) {
            this.b = palmAuthRequest;
            this.c = context;
            this.d = str;
            this.e = palmAuthParam;
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.d("com.palm.id.log", Log.getStackTraceString(iOException));
            this.b.setException(40104, iOException.getMessage());
            Bundle bundle = new Bundle();
            ok7.a(this.b, bundle, "appid", "version", "2.0.1.03");
            bundle.putString("ti_s_result", "failure");
            new wj("sdk_auth_scope_result", 7710).c(bundle, null).b();
        }

        @Override
        public void onResponse(Call call, Response response) {
            try {
                int iCode = response.code();
                String strString = response.body().string();
                Log.d("com.palm.id.log", "onResponse code = " + iCode);
                if (iCode != 200) {
                    Log.d("com.palm.id.log", "onResponse body = " + strString);
                }
                JSONObject jSONObject = new JSONObject(strString);
                int iOptInt = jSONObject.optInt("errorCode", 0);
                if (iOptInt <= 0 && jSONObject.optInt(TrackingKey.CODE) <= 0) {
                    if (!TextUtils.equals(jSONObject.getString(ICode.CALL.CALL_KEY_STATE), this.e.getState())) {
                        this.b.setException(40104, "state data error");
                        return;
                    }
                    if (jSONObject.has(TrackingKey.CODE)) {
                        if (this.e.isReqToken()) {
                            il7.b(il7.this, this.c, this.d, jSONObject.getString(TrackingKey.CODE));
                            return;
                        }
                        AccountRes accountResJ = ao7.a.a.j(this.c);
                        Bundle bundle = new Bundle();
                        if (accountResJ != null) {
                            try {
                                bundle.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                                bundle.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, jSONObject.getString(TrackingKey.CODE)).put("open_id", jSONObject.optString("open_id")).toString());
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("appid", this.b.getAuthParam().getAppid());
                        bundle2.putString("version", "2.0.1.03");
                        bundle2.putString("ti_s_result", "success");
                        new wj("sdk_auth_result", 7710).c(bundle2, null).b();
                        this.b.setResult(bundle);
                        return;
                    }
                    return;
                }
                if (iOptInt > 0) {
                    this.b.setException(iOptInt, jSONObject.optString("error_description"));
                } else {
                    iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString = jSONObject.optString("message");
                    if (iOptInt == 40055 && il7.this.e(this.c, null, null)) {
                        il7.this.d(this.c, this.d);
                    } else {
                        this.b.setException(iOptInt, strOptString);
                    }
                }
                Bundle bundle3 = new Bundle();
                bundle3.putString("appid", this.b.getAuthParam().getAppid());
                bundle3.putString("version", "2.0.1.03");
                bundle3.putString("ti_s_result", "failure");
                bundle3.putInt("errcode", iOptInt);
                new wj("sdk_auth_scope_result", 7710).c(bundle3, null).b();
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                this.b.setException(40104, e2.getMessage());
            }
        }
    }

    public class b extends OppO0O0 {
        public final Context k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, String str, Class cls, Context context2) {
            super(context, null, cls);
            this.k = context2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            AccountRes accountRes = (AccountRes) obj;
            if (accountRes != null) {
                ao7.a.a.c(this.k, accountRes);
            }
        }

        @Override
        public void g() {
            il7.this.c(this.k);
        }
    }

    public static il7 a() {
        if (a == null) {
            synchronized (il7.class) {
                try {
                    if (a == null) {
                        a = new il7();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public static void b(il7 il7Var, Context context, String str, String str2) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        il7Var.getClass();
        PalmAuthRequest palmAuthRequestB = aw7.c(context).b(str);
        if (context != null && (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    Map<String, Object> map = palmAuthRequestB.getAuthParam().toMap();
                    map.put(TrackingKey.CODE, str2);
                    map.put("grant_type", "authorization_code");
                    try {
                        OkHttpClient.Builder builder = new OkHttpClient.Builder();
                        TimeUnit timeUnit = TimeUnit.SECONDS;
                        builder.connectTimeout(40L, timeUnit).readTimeout(40L, timeUnit);
                        builder.build();
                        bo7 bo7Var = new bo7(il7Var, context, AuthTokenRes.class, context, palmAuthRequestB, str, str2);
                        AuthTokenReq authTokenReq = new AuthTokenReq();
                        authTokenReq.setClientId((String) map.get("client_id"));
                        authTokenReq.setRedirectUri((String) map.get("redirect_uri"));
                        authTokenReq.setScope((String) map.get("scope"));
                        authTokenReq.setCode((String) map.get(TrackingKey.CODE));
                        authTokenReq.setGrantType((String) map.get("grant_type"));
                        mk7 mk7VarA = ao7.a.a.a();
                        bo7Var.f = mk7VarA;
                        new zn7().c(context, dp7.a("/client/token-crypt"), CommReq.generateReq(context, mk7VarA, authTokenReq), bo7Var);
                        return;
                    } catch (Exception e) {
                        palmAuthRequestB.setException(40104, e.getMessage());
                        Bundle bundle = new Bundle();
                        ok7.a(palmAuthRequestB, bundle, "appid", "version", "2.0.1.03");
                        bundle.putString("ti_s_result", "failure");
                        bundle.putInt("errcode", 40104);
                        xm7.a("sdk_auth_result", 7710, bundle, null);
                        return;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        palmAuthRequestB.setException(40103, "network unavailable");
    }

    public void c(Context context) {
        try {
            if (context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                b bVar = new b(context, null, AccountRes.class, context);
                mk7 mk7VarA = ao7.a.a.a();
                bVar.f = mk7VarA;
                HashMap map = new HashMap();
                map.put("sign", "sign");
                map.put("enableBase64Img", "1");
                Object objGenerateReq = CommReq.generateReq(context, mk7VarA, map);
                cr7 cr7Var = cr7.b.a;
                if (cr7Var.a(context)) {
                    new zn7().c(context, dp7.a("/sdk/account/get-profile-crypt"), objGenerateReq, bVar);
                    return;
                }
                if (context instanceof BaseActivity) {
                    ((BaseActivity) context).A0();
                }
                if (context instanceof Activity) {
                    cr7Var.b(context);
                }
            }
        } catch (Exception e) {
            StringBuilder sbA = xo7.a("getAccountFromNet e = ");
            sbA.append(e.getMessage());
            Log.d("com.palm.id.log", sbA.toString());
        }
    }

    public void d(Context context, String str) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        PalmAuthRequest palmAuthRequestB = aw7.c(context).b(str);
        if (palmAuthRequestB == null) {
            return;
        }
        if (context != null && (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    PalmAuthParam authParam = palmAuthRequestB.getAuthParam();
                    HashMap map = new HashMap();
                    StringBuilder sbA = xo7.a("Bearer ");
                    ao7 ao7Var = ao7.a.a;
                    ao7Var.n(context);
                    Config configF = ao7Var.f();
                    sbA.append(configF != null ? configF.token : "");
                    map.put(RtspHeaders.AUTHORIZATION, sbA.toString());
                    Resources resources = context.getResources();
                    map.put(DataTypes.OBJ_LANGUAGE, resources != null ? resources.getString(R.string.xn_language) : "");
                    map.put("Client-ID", authParam.getAppid());
                    map.put("AppSign", authParam.getAppSign());
                    map.put("AppPackage", authParam.getPkgName());
                    Map<String, Object> map2 = authParam.toMap();
                    map2.put("grant_type", "authorization_code");
                    map2.put("response_type", TrackingKey.CODE);
                    new dk7().d(map, map2, new a(palmAuthRequestB, context, str, authParam));
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        palmAuthRequestB.setException(40103, "network unavailable");
    }

    public boolean e(Context context, String str, PalmID.a aVar) {
        String str2;
        Log.d("com.palm.id.log", "refreshLocalToken -----> start");
        if (str == null || str.length() <= 0) {
            ao7 ao7Var = ao7.a.a;
            ao7Var.n(context);
            Config configF = ao7Var.f();
            str2 = configF != null ? configF.refreshToken : "";
        } else {
            str2 = str;
        }
        if (TextUtils.isEmpty(str2)) {
            Log.d("com.palm.id.log", "refreshLocalToken rt = null");
            if (aVar != null) {
                aVar.a(40105, "not login");
            }
            return false;
        }
        HashMap map = new HashMap();
        map.put("refreshToken", str2);
        try {
            Response responseB = new zn7().b(context, dp7.a("/sdk/login/refresh-token"), map);
            if (responseB != null && responseB.isSuccessful()) {
                String strString = responseB.body().string();
                Log.d("com.palm.id.log", "refreshLocalToken -----> success");
                LoginRes.SdkToken sdkToken = (LoginRes.SdkToken) new Gson().fromJson(strString, LoginRes.SdkToken.class);
                ao7.a.a.d(context, sdkToken.accessToken, sdkToken.refreshToken);
                SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).edit();
                editorEdit.putBoolean("is_logged_in", true);
                editorEdit.putLong("key_refresh_time", System.currentTimeMillis());
                if (!TextUtils.isEmpty(str)) {
                    editorEdit.putBoolean("key_tudc_relogin", true);
                }
                editorEdit.apply();
                if (!TextUtils.isEmpty(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("notify", true);
                    bundle.putBoolean("is_login", true);
                    am7.a(context, wk7.a(), bundle);
                }
                if (aVar != null) {
                    aVar.onSuccess(sdkToken.accessToken);
                }
                return true;
            }
            if (responseB == null || responseB.code() != 400) {
                if (responseB != null) {
                    return false;
                }
                Log.d("com.palm.id.log", "refreshLocalToken -----> response = null");
                if (aVar == null) {
                    return false;
                }
                aVar.a(40104, "response is null");
                return false;
            }
            try {
                String strString2 = responseB.body().string();
                Log.d("com.palm.id.log", "refreshLocalToken -----> " + strString2);
                BaseData baseData = (BaseData) new Gson().fromJson(strString2, BaseData.class);
                if (baseData.code == 400006) {
                    vo7.a(context);
                    am7.a(context, wk7.a(), null);
                    if (aVar != null) {
                        aVar.a(40105, baseData.message);
                    }
                } else if (aVar != null) {
                    aVar.a(40104, baseData.code + StringUtils.COMMA + baseData.message);
                }
                return false;
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                return false;
            }
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            if (aVar != null) {
                aVar.a(40104, e2.getMessage());
            }
            return false;
        }
    }
}
