package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.gslb.GslbSdk;
import com.transsion.xuanniao.account.auth.data.AuthTokenReq;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.Config;
import com.transsion.xuanniao.account.model.data.LoginRes;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class dk7 extends BasePresenter {
    public final OkHttpClient b;

    public class a extends OppO0O0 {
        public final Context k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, Class cls, Context context2) {
            super(context, cls);
            this.k = context2;
        }

        @Override
        public void b(int i, Object obj, String str) {
        }

        @Override
        public void g() {
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            try {
                Log.d("com.palm.id.log", Log.getStackTraceString(iOException));
                if (dk7.this.a()) {
                    ((fm7) dk7.this.a).c0(40104, iOException.getMessage());
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
        }

        @Override
        public void onResponse(Call call, Response response) {
            try {
                Log.d("com.palm.id.log", "refreshToken code = " + response.code());
                if (response.isSuccessful()) {
                    LoginRes.SdkToken sdkToken = (LoginRes.SdkToken) new Gson().fromJson(response.body().string(), LoginRes.SdkToken.class);
                    ao7.a.a.d(this.k, sdkToken.accessToken, sdkToken.refreshToken);
                    tl7 tl7VarC = tl7.c(this.k);
                    tl7VarC.d(System.currentTimeMillis());
                    tl7VarC.b();
                    if (dk7.this.a()) {
                        ((fm7) dk7.this.a).I();
                    }
                } else if (response.code() == 400) {
                    String strString = response.body().string();
                    Log.d("com.palm.id.log", " refreshToken -----> ERROR_PARAM" + strString);
                    BaseData baseData = (BaseData) new Gson().fromJson(strString, BaseData.class);
                    Log.d("com.palm.id.log", " refreshToken -----> data.code " + baseData.code);
                    if (baseData.code == 400006) {
                        vo7.a(this.k);
                        am7.a(this.k, wk7.a(), null);
                        if (dk7.this.a()) {
                            ((fm7) dk7.this.a).P();
                        }
                    } else if (dk7.this.a()) {
                        ((fm7) dk7.this.a).c0(40104, "palmid refreshToken error");
                    }
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                if (dk7.this.a()) {
                    ((fm7) dk7.this.a).c0(40104, "palmid refreshToken error");
                }
            }
        }
    }

    public dk7() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(40L, timeUnit).readTimeout(40L, timeUnit);
        this.b = builder.build();
    }

    public void b(Context context) {
        HashMap map = new HashMap();
        ao7 ao7Var = ao7.a.a;
        ao7Var.n(context);
        Config configF = ao7Var.f();
        map.put("refreshToken", configF != null ? configF.refreshToken : "");
        a aVar = new a(context, LoginRes.SdkToken.class, context);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            new zn7().c(context, dp7.a("/sdk/login/refresh-token"), map, aVar);
            return;
        }
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).A0();
        }
        if (context instanceof Activity) {
            cr7Var.b(context);
        }
    }

    public void c(Context context, Map map, OppO0O0 oppO0O0) {
        AuthTokenReq authTokenReq = new AuthTokenReq();
        authTokenReq.setClientId((String) map.get("client_id"));
        authTokenReq.setRedirectUri((String) map.get("redirect_uri"));
        authTokenReq.setScope((String) map.get("scope"));
        authTokenReq.setCode((String) map.get(TrackingKey.CODE));
        authTokenReq.setGrantType((String) map.get("grant_type"));
        mk7 mk7VarA = ao7.a.a.a();
        oppO0O0.f = mk7VarA;
        new zn7().c(context, dp7.a("/client/token-crypt"), CommReq.generateReq(context, mk7VarA, authTokenReq), oppO0O0);
    }

    public void d(Map map, Map map2, Callback callback) {
        String domain = GslbSdk.getDomain(dp7.a("/oauth/authorize"), true);
        if (map2.size() > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(domain);
            sb.append("?");
            StringBuilder sb2 = new StringBuilder();
            try {
                for (Map.Entry entry : map2.entrySet()) {
                    if (sb2.length() > 0) {
                        sb2.append("&");
                    }
                    sb2.append(String.format("%s=%s", URLEncoder.encode((String) entry.getKey(), "UTF-8"), URLEncoder.encode(entry.getValue().toString(), "UTF-8")));
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
            sb.append(sb2.toString());
            domain = sb.toString();
        }
        Log.d("com.palm.id.log", "url = " + domain);
        Request.Builder builder = new Request.Builder().url(domain).get();
        if (map.size() > 0) {
            for (Map.Entry entry2 : map.entrySet()) {
                if (!TextUtils.isEmpty((CharSequence) entry2.getKey()) && !TextUtils.isEmpty((CharSequence) entry2.getValue())) {
                    builder.addHeader((String) entry2.getKey(), (String) entry2.getValue());
                }
            }
        }
        this.b.newCall(builder.build()).enqueue(callback);
    }
}
