package com.transsion.xuanniao.account.auth.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
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
import com.transsion.xuanniao.account.comm.widget.RoundImageView;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.Config;
import defpackage.ao7;
import defpackage.ap7;
import defpackage.aw7;
import defpackage.cr7;
import defpackage.dk7;
import defpackage.dp7;
import defpackage.dq7;
import defpackage.fm7;
import defpackage.hk7;
import defpackage.jr7;
import defpackage.mk7;
import defpackage.olb;
import defpackage.po7;
import defpackage.tn7;
import defpackage.tp7;
import defpackage.wj;
import defpackage.xm7;
import defpackage.xo7;
import defpackage.zn7;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.json.JSONObject;

public class PalmPrevActivity extends BaseActivity implements fm7 {
    public static final int h = 0;
    public dk7 e;
    public PalmAuthRequest f;
    public boolean g = false;

    public class a implements OppOp00.a.InterfaceC0003a {
        public final AccountRes a;
        public final RoundImageView b;

        public a(AccountRes accountRes, RoundImageView roundImageView) {
            this.a = accountRes;
            this.b = roundImageView;
        }

        @Override
        public void F(String str) {
            if (str == null) {
                str = this.a.avatarUrl;
            }
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(PalmPrevActivity.this.getApplicationContext()).load(str);
            PalmPrevActivity palmPrevActivity = PalmPrevActivity.this;
            int i = PalmPrevActivity.h;
            requestBuilderLoad.apply((BaseRequestOptions<?>) palmPrevActivity.F0()).into(this.b);
        }
    }

    public class b implements Callback {
        public final PalmAuthParam b;

        public b(PalmAuthParam palmAuthParam) {
            this.b = palmAuthParam;
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.d("com.palm.id.log", Log.getStackTraceString(iOException));
            PalmPrevActivity.this.c0(40104, iOException.getMessage());
            Bundle bundle = new Bundle();
            bundle.putString("appid", this.b.getAppid());
            bundle.putString("version", "2.0.1.03");
            bundle.putString("ti_s_result", "failure");
            bundle.putInt("errcode", 40104);
            xm7.a("sdk_auth_scope_result", 7710, bundle, null);
        }

        /* JADX WARN: Code duplicated, block: B:50:0x01e4 A[Catch: Exception -> 0x0044, TryCatch #1 {Exception -> 0x0044, blocks: (B:3:0x000b, B:5:0x002f, B:8:0x0047, B:11:0x0061, B:14:0x0069, B:16:0x007b, B:18:0x0083, B:21:0x008b, B:23:0x0093, B:25:0x009f, B:33:0x0125, B:35:0x0150, B:36:0x0158, B:32:0x011e, B:37:0x015f, B:39:0x0165, B:41:0x018e, B:42:0x01b5, B:44:0x01bd, B:51:0x01ef, B:45:0x01c9, B:47:0x01d2, B:49:0x01d8, B:50:0x01e4, B:27:0x00b1, B:30:0x00fd), top: B:57:0x000b, inners: #0 }] */
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
                        PalmPrevActivity.this.c0(40104, "state data error");
                        return;
                    }
                    if (!jSONObject.has(TrackingKey.CODE)) {
                        if (jSONObject.has("scopes")) {
                            Bundle bundle = new Bundle();
                            bundle.putString("appid", this.b.getAppid());
                            bundle.putString("version", "2.0.1.03");
                            bundle.putString("ti_s_result", "success");
                            new wj("sdk_auth_scope_result", 7710).c(bundle, null).b();
                            if (PalmPrevActivity.this.f != null) {
                                Intent intent = new Intent(PalmPrevActivity.this, (Class<?>) PalmAuthActivity2.class);
                                intent.putExtra("scopes", jSONObject.toString());
                                intent.putExtra("auth_request", PalmPrevActivity.this.f.getAuthRequestId());
                                PalmPrevActivity.this.startActivity(intent);
                                PalmPrevActivity.this.f = null;
                            }
                            PalmPrevActivity.this.finish();
                            return;
                        }
                        return;
                    }
                    if (this.b.isReqToken()) {
                        PalmPrevActivity.B0(PalmPrevActivity.this, jSONObject.getString(TrackingKey.CODE), this.b);
                        return;
                    }
                    ao7 ao7Var = ao7.a.a;
                    PalmPrevActivity palmPrevActivity = PalmPrevActivity.this;
                    palmPrevActivity.getClass();
                    AccountRes accountResJ = ao7Var.j(palmPrevActivity);
                    Bundle bundle2 = new Bundle();
                    if (accountResJ != null) {
                        try {
                            bundle2.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                            bundle2.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                            bundle2.putString("linked_pkg", PalmPrevActivity.this.getPackageName());
                            bundle2.putString("linked_bd", jr7.e());
                        } catch (Exception e) {
                            Log.d("com.palm.id.log", Log.getStackTraceString(e));
                        }
                    }
                    bundle2.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, jSONObject.getString(TrackingKey.CODE)).put("open_id", jSONObject.optString("open_id")).toString());
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("appid", this.b.getAppid());
                    bundle3.putString("version", "2.0.1.03");
                    bundle3.putString("ti_s_result", "success");
                    new wj("sdk_auth_result", 7710).c(bundle3, null).b();
                    PalmAuthRequest palmAuthRequest = PalmPrevActivity.this.f;
                    if (palmAuthRequest != null) {
                        palmAuthRequest.setResult(bundle2);
                        PalmPrevActivity.this.f = null;
                    }
                    PalmPrevActivity.this.finish();
                    return;
                }
                if (iOptInt > 0) {
                    PalmPrevActivity.this.c0(iOptInt, jSONObject.optString("error_description"));
                } else {
                    iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    if (iOptInt == 40055) {
                        PalmPrevActivity palmPrevActivity2 = PalmPrevActivity.this;
                        if (palmPrevActivity2.g) {
                            PalmPrevActivity.this.c0(iOptInt, jSONObject.optString("message"));
                        } else {
                            palmPrevActivity2.g = true;
                            PalmPrevActivity palmPrevActivity3 = PalmPrevActivity.this;
                            palmPrevActivity3.e.b(palmPrevActivity3);
                        }
                    } else {
                        PalmPrevActivity.this.c0(iOptInt, jSONObject.optString("message"));
                    }
                }
                Bundle bundle4 = new Bundle();
                bundle4.putString("appid", this.b.getAppid());
                bundle4.putString("version", "2.0.1.03");
                bundle4.putString("ti_s_result", "failure");
                bundle4.putInt("errcode", iOptInt);
                new wj("sdk_auth_scope_result", 7710).c(bundle4, null).b();
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                PalmPrevActivity.this.c0(40104, e2.getMessage());
            }
        }
    }

    public static void B0(PalmPrevActivity palmPrevActivity, String str, PalmAuthParam palmAuthParam) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) palmPrevActivity.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    Map<String, Object> map = palmAuthParam.toMap();
                    map.put(TrackingKey.CODE, str);
                    map.put("grant_type", "authorization_code");
                    try {
                        palmPrevActivity.e.c(palmPrevActivity, map, new dq7(palmPrevActivity, palmPrevActivity, AuthTokenRes.class, palmAuthParam, str));
                        return;
                    } catch (Exception e) {
                        palmPrevActivity.c0(40104, e.getMessage());
                        Bundle bundle = new Bundle();
                        bundle.putString("appid", palmAuthParam.getAppid());
                        bundle.putString("version", "2.0.1.03");
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
        palmPrevActivity.c0(40103, "network unavailable");
    }

    public final void D0(AccountRes accountRes) {
        TextView textView = (TextView) findViewById(R.id.nickName);
        if (TextUtils.isEmpty(accountRes.nickname)) {
            textView.setText(accountRes.username);
        } else {
            textView.setText(accountRes.nickname);
        }
        RoundImageView roundImageView = (RoundImageView) findViewById(R.id.portrait);
        if (getFilesDir() == null) {
            Glide.with(getApplicationContext()).load(accountRes.avatarUrl).apply((BaseRequestOptions<?>) F0()).into(roundImageView);
            return;
        }
        hk7 hk7Var = hk7.a.a;
        Bitmap bitmapA = hk7Var.a(this, accountRes.avatarUrl);
        if (bitmapA == null) {
            hk7Var.d(this, accountRes.avatarUrl, new a(accountRes, roundImageView));
        } else {
            roundImageView.setImageBitmap(bitmapA);
        }
    }

    public final void E0(boolean z) {
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
                    this.e.d(map, map2, new b(authParam));
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        c0(40103, "network unavailable");
    }

    public final RequestOptions F0() {
        RequestOptions requestOptions = new RequestOptions();
        int i = R.drawable.xn_palm_portrait_default;
        return requestOptions.placeholder(i).fallback(i).error(i);
    }

    @Override
    public void I() {
        E0(false);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void P() {
        if (this.f != null) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("isFinish", true);
            intent.putExtra("source", this.f.getAuthParam().getPkgName());
            intent.putExtra("auth_request", this.f.getAuthRequestId());
            startActivity(intent);
            this.f = null;
        }
        finish();
    }

    @Override
    public void c0(int i, String str) {
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.setException(i, str);
            this.f = null;
        }
        finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("auth_request");
        if (bundle != null && TextUtils.isEmpty(stringExtra)) {
            stringExtra = bundle.getString("auth_request", null);
        }
        PalmAuthRequest palmAuthRequestB = aw7.c(this).b(stringExtra);
        this.f = palmAuthRequestB;
        if (palmAuthRequestB == null) {
            finish();
            return;
        }
        dk7 dk7Var = new dk7();
        this.e = dk7Var;
        dk7Var.a = this;
        if (!getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("isFinish", true);
            intent.putExtra("source", this.f.getAuthParam().getPkgName());
            intent.putExtra("auth_request", this.f.getAuthRequestId());
            startActivity(intent);
            this.f = null;
            finish();
            return;
        }
        setContentView(R.layout.xn_activity_palm_prev);
        ao7 ao7Var = ao7.a.a;
        AccountRes accountResJ = ao7Var.j(this);
        if (accountResJ != null) {
            D0(accountResJ);
            try {
                tp7 tp7Var = new tp7(this, this, null, AccountRes.class, this);
                mk7 mk7VarA = ao7Var.a();
                tp7Var.f = mk7VarA;
                HashMap map = new HashMap();
                map.put("sign", "sign");
                map.put("enableBase64Img", "1");
                Object objGenerateReq = CommReq.generateReq(this, mk7VarA, map);
                cr7 cr7Var = cr7.b.a;
                if (cr7Var.a(this)) {
                    new zn7().c(this, dp7.a("/sdk/account/get-profile-crypt"), objGenerateReq, tp7Var);
                } else {
                    A0();
                    cr7Var.b(this);
                }
            } catch (Exception e) {
                StringBuilder sbA = xo7.a("getAccountFromNet e = ");
                sbA.append(e.getMessage());
                Log.d("com.palm.id.log", sbA.toString());
            }
        } else {
            if (this.f != null) {
                Intent intent2 = new Intent(this, (Class<?>) PalmAuthActivity.class);
                intent2.putExtra("auth_request", this.f.getAuthRequestId());
                startActivity(intent2);
                this.f = null;
            }
            finish();
        }
        ((TextView) findViewById(R.id.tvTitle)).setText(jr7.d(getString(R.string.xn_app_name)));
        findViewById(R.id.btnLoginNow).setOnClickListener(new tn7(this));
        findViewById(R.id.tvSwitchAcc).setOnClickListener(new po7(this));
        findViewById(R.id.btnClose).setOnClickListener(new ap7(this));
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
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.onCancel();
            this.f = null;
        }
        finish();
    }

    @Override
    public void v0(boolean z) {
        if (getResources().getBoolean(R.bool.sdk_theme_is_dynamic)) {
            olb.I0(this, R.style.XNTranslucent, R.style.XNTranslucent_xos, R.style.XNTranslucent_itel);
        }
    }
}
