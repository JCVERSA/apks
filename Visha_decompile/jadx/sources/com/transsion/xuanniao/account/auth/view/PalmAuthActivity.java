package com.transsion.xuanniao.account.auth.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.livecaption.constant.ICode;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.auth.data.AuthTokenRes;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.Config;
import defpackage.ao7;
import defpackage.aw7;
import defpackage.cl7;
import defpackage.dk7;
import defpackage.fm7;
import defpackage.jr7;
import defpackage.ok7;
import defpackage.olb;
import defpackage.wj;
import defpackage.xm7;
import defpackage.xo7;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.json.JSONObject;

public class PalmAuthActivity extends BaseActivity implements fm7 {
    public dk7 e;
    public PalmAuthRequest f;
    public boolean g = false;

    public class a implements Callback {
        public final PalmAuthParam b;

        public a(PalmAuthParam palmAuthParam) {
            this.b = palmAuthParam;
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.d("com.palm.id.log", Log.getStackTraceString(iOException));
            PalmAuthActivity.this.c0(40104, iOException.getMessage());
            Bundle bundle = new Bundle();
            ok7.a(PalmAuthActivity.this.f, bundle, "appid", "version", "2.0.1.03");
            bundle.putString("ti_s_result", "failure");
            bundle.putInt("errcode", 40104);
            xm7.a("sdk_auth_scope_result", 7710, bundle, null);
        }

        /* JADX WARN: Code duplicated, block: B:44:0x01da A[Catch: Exception -> 0x0044, TryCatch #1 {Exception -> 0x0044, blocks: (B:3:0x000b, B:5:0x002f, B:8:0x0047, B:11:0x0061, B:14:0x0069, B:16:0x007b, B:18:0x0083, B:21:0x008b, B:23:0x0093, B:25:0x009d, B:33:0x0120, B:32:0x0119, B:34:0x0159, B:36:0x015f, B:38:0x01b3, B:45:0x01e5, B:39:0x01bf, B:41:0x01c8, B:43:0x01ce, B:44:0x01da, B:27:0x00ac, B:30:0x00f8), top: B:51:0x000b, inners: #0 }] */
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
                    if (!TextUtils.equals(jSONObject.getString(ICode.CALL.CALL_KEY_STATE), this.b.getState())) {
                        PalmAuthActivity.this.c0(40104, "state data error");
                        return;
                    }
                    if (!jSONObject.has(TrackingKey.CODE)) {
                        if (jSONObject.has("scopes")) {
                            Bundle bundle = new Bundle();
                            bundle.putString("appid", PalmAuthActivity.this.f.getAuthParam().getAppid());
                            bundle.putString("version", "2.0.1.03");
                            bundle.putString("ti_s_result", "success");
                            new wj("sdk_auth_scope_result", 7710).c(bundle, null).b();
                            Intent intent = new Intent(PalmAuthActivity.this, (Class<?>) PalmAuthActivity2.class);
                            intent.putExtra("scopes", jSONObject.toString());
                            intent.putExtra("auth_request", PalmAuthActivity.this.f.getAuthRequestId());
                            PalmAuthActivity.this.startActivity(intent);
                            PalmAuthActivity.this.finish();
                            return;
                        }
                        return;
                    }
                    if (this.b.isReqToken()) {
                        PalmAuthActivity.B0(PalmAuthActivity.this, jSONObject.getString(TrackingKey.CODE));
                        return;
                    }
                    AccountRes accountResJ = ao7.a.a.j(PalmAuthActivity.this);
                    Bundle bundle2 = new Bundle();
                    if (accountResJ != null) {
                        try {
                            bundle2.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                            bundle2.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                            bundle2.putString("linked_pkg", PalmAuthActivity.this.getPackageName());
                            bundle2.putString("linked_bd", jr7.e());
                        } catch (Exception e) {
                            Log.d("com.palm.id.log", Log.getStackTraceString(e));
                        }
                    }
                    bundle2.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, jSONObject.getString(TrackingKey.CODE)).put("open_id", jSONObject.optString("open_id")).toString());
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("appid", PalmAuthActivity.this.f.getAuthParam().getAppid());
                    bundle3.putString("version", "2.0.1.03");
                    bundle3.putString("ti_s_result", "success");
                    new wj("sdk_auth_result", 7710).c(bundle3, null).b();
                    PalmAuthActivity.this.f.setResult(bundle2);
                    PalmAuthActivity.this.finish();
                    return;
                }
                if (iOptInt > 0) {
                    PalmAuthActivity.this.c0(iOptInt, jSONObject.optString("error_description"));
                } else {
                    iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    if (iOptInt == 40055) {
                        PalmAuthActivity palmAuthActivity = PalmAuthActivity.this;
                        if (palmAuthActivity.g) {
                            PalmAuthActivity.this.c0(iOptInt, jSONObject.optString("message"));
                        } else {
                            palmAuthActivity.g = true;
                            PalmAuthActivity palmAuthActivity2 = PalmAuthActivity.this;
                            palmAuthActivity2.e.b(palmAuthActivity2);
                        }
                    } else {
                        PalmAuthActivity.this.c0(iOptInt, jSONObject.optString("message"));
                    }
                }
                Bundle bundle4 = new Bundle();
                bundle4.putString("appid", PalmAuthActivity.this.f.getAuthParam().getAppid());
                bundle4.putString("version", "2.0.1.03");
                bundle4.putString("ti_s_result", "failure");
                bundle4.putInt("errcode", iOptInt);
                new wj("sdk_auth_scope_result", 7710).c(bundle4, null).b();
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                PalmAuthActivity.this.c0(40104, e2.getMessage());
            }
        }
    }

    public static void B0(PalmAuthActivity palmAuthActivity, String str) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) palmAuthActivity.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    Map<String, Object> map = palmAuthActivity.f.getAuthParam().toMap();
                    map.put(TrackingKey.CODE, str);
                    map.put("grant_type", "authorization_code");
                    try {
                        palmAuthActivity.e.c(palmAuthActivity, map, new cl7(palmAuthActivity, palmAuthActivity, AuthTokenRes.class, str));
                        return;
                    } catch (Exception e) {
                        palmAuthActivity.c0(40104, e.getMessage());
                        Bundle bundle = new Bundle();
                        ok7.a(palmAuthActivity.f, bundle, "appid", "version", "2.0.1.03");
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
        palmAuthActivity.c0(40103, "network unavailable");
    }

    public final void D0(boolean z) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    PalmAuthParam authParam = this.f.getAuthParam();
                    HashMap map = new HashMap();
                    StringBuilder sbA = xo7.a("Bearer ");
                    ao7 ao7Var = ao7.a.a;
                    ao7Var.n(this);
                    Config configF = ao7Var.f();
                    sbA.append(configF != null ? configF.token : "");
                    map.put(RtspHeaders.AUTHORIZATION, sbA.toString());
                    Resources resources = getResources();
                    map.put(DataTypes.OBJ_LANGUAGE, resources != null ? resources.getString(R.string.xn_language) : "");
                    map.put("Client-ID", authParam.getAppid());
                    map.put("AppSign", authParam.getAppSign());
                    map.put("AppPackage", authParam.getPkgName());
                    Map<String, Object> map2 = authParam.toMap();
                    map2.put("grant_type", "authorization_code");
                    map2.put("response_type", TrackingKey.CODE);
                    if (z) {
                        u0(getString(R.string.xn_loading_login));
                    }
                    this.e.d(map, map2, new a(authParam));
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        c0(40103, "network unavailable");
    }

    @Override
    public void I() {
        D0(false);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void P() {
        Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
        intent.putExtra("isFinish", true);
        intent.putExtra("source", this.f.getAuthParam().getPkgName());
        intent.putExtra("auth_request", this.f.getAuthRequestId());
        startActivity(intent);
        finish();
    }

    @Override
    public void c0(int i, String str) {
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.setException(i, str);
        }
        finish();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.onCancel();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String string = bundle != null ? bundle.getString("auth_request") : null;
        if (string == null) {
            string = getIntent().getStringExtra("auth_request");
        }
        PalmAuthRequest palmAuthRequestB = aw7.c(this).b(string);
        this.f = palmAuthRequestB;
        if (palmAuthRequestB == null) {
            finish();
            return;
        }
        dk7 dk7Var = new dk7();
        this.e = dk7Var;
        dk7Var.a = this;
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            setContentView(R.layout.xn_activity_palm_auth);
            D0(true);
            return;
        }
        Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
        intent.putExtra("isFinish", true);
        intent.putExtra("source", this.f.getAuthParam().getPkgName());
        intent.putExtra("auth_request", this.f.getAuthRequestId());
        startActivity(intent);
        finish();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        dk7 dk7Var = this.e;
        if (dk7Var != null) {
            dk7Var.a = null;
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            bundle.putString("auth_request", palmAuthRequest.getAuthRequestId());
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        A0();
    }

    @Override
    public void v0(boolean z) {
        if (getResources().getBoolean(R.bool.sdk_theme_is_dynamic)) {
            olb.I0(this, R.style.XNTranslucent, R.style.XNTranslucent_xos, R.style.XNTranslucent_itel);
        }
    }
}
