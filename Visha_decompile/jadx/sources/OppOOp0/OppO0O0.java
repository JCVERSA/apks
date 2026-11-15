package OppOOp0;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.ApplyKeyReq;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import com.transsion.xuanniao.account.model.data.EncryptRes;
import com.transsion.xuanniao.account.model.data.ErrorExtend;
import com.transsion.xuanniao.account.model.data.LoginRes;
import defpackage.ao7;
import defpackage.cr7;
import defpackage.dp7;
import defpackage.lk7;
import defpackage.mk7;
import defpackage.mp7;
import defpackage.tl7;
import defpackage.zn7;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

public abstract class OppO0O0 implements Callback {
    public static ArrayList i = new ArrayList();
    public static AtomicBoolean j = new AtomicBoolean(false);
    public String b;
    public final Class c;
    public final Context d;
    public SoftReference e;
    public mk7 f;
    public int g = 0;
    public int h = 0;

    public class OppO00p implements Runnable {
        public final BaseData OppO00p;

        public OppO00p(BaseData baseData) {
            this.OppO00p = baseData;
        }

        @Override
        public void run() {
            Log.d("com.palm.id.log", "postFailed");
            OppO0O0 oppO0O0 = OppO0O0.this;
            oppO0O0.d(this.OppO00p, oppO0O0.b);
        }
    }

    public class RunnableC0002OppO0O0 implements Runnable {
        public final Object OppO00p;

        public RunnableC0002OppO0O0(Object obj) {
            this.OppO00p = obj;
        }

        @Override
        public void run() {
            OppO0O0 oppO0O0 = OppO0O0.this;
            oppO0O0.b(0, this.OppO00p, oppO0O0.b);
        }
    }

    public class OppO0OO implements Runnable {
        public OppO0OO() {
        }

        @Override
        public void run() {
            OppO0O0.this.g();
        }
    }

    static {
        i.add("/sdk/login/login-by-password-with-captcha-crypt");
        i.add("/sdk/account/get-profile-crypt");
        i.add("/sdk/account/update-profile-crypt");
        i.add("/sdk/account/bind-phone-email-crypt");
        i.add("/app/address/list-crypt");
        i.add("/app/address/new-crypt");
        i.add("/app/address/update-crypt");
        i.add("/sdk/login/login-by-third-crypt");
        i.add("/sdk/password/new-crypt");
        i.add("/sdk/password/reset-crypt");
        i.add("/sdk/password/change-crypt");
        i.add("/sdk/password/verify-crypt");
        i.add("/sdk/verification/verify-code-crypt");
        i.add("/client/token-crypt");
    }

    public OppO0O0(Context context, String str, Class cls) {
        this.b = str;
        this.c = cls;
        if (!(context instanceof Activity)) {
            this.d = context;
        } else {
            this.d = context.getApplicationContext();
            this.e = new SoftReference((Activity) context);
        }
    }

    public final void a() {
        Response responseB;
        ApplyKeyReq applyKeyReq = new ApplyKeyReq();
        ao7 ao7Var = ao7.a.a;
        String strG = ao7Var.g(this.d);
        applyKeyReq.publicKey1061 = strG;
        if (TextUtils.isEmpty(strG)) {
            Log.d("com.palm.id.log", "applyKey publicKey1061 = null");
            BaseData baseData = new BaseData();
            baseData.code = 400;
            baseData.message = this.d.getString(R.string.xn_net_unavailable);
            c(baseData);
            j.set(false);
            return;
        }
        applyKeyReq.keyId = ao7Var.i(this.d);
        applyKeyReq.deviceId = mp7.a(this.d);
        Context context = this.d;
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            responseB = new zn7().b(context, dp7.a("/sdk/config/apply-key"), applyKeyReq);
        } else {
            if (context instanceof Activity) {
                cr7Var.b(context);
            }
            responseB = null;
        }
        try {
            try {
                if (responseB.isSuccessful()) {
                    Log.d("com.palm.id.log", "applyKey -----> isSuccessful");
                    h();
                } else if (responseB.code() == 400) {
                    String strString = responseB.body().string();
                    Log.d("com.palm.id.log", " applyKey -----> ERROR_PARAM" + strString);
                    BaseData baseData2 = (BaseData) new Gson().fromJson(strString, BaseData.class);
                    Log.d("com.palm.id.log", " applyKey -----> data.code " + baseData2.code);
                    c(baseData2);
                }
            } catch (Exception e) {
                e.printStackTrace();
                BaseData baseData3 = new BaseData();
                baseData3.code = responseB.code();
                baseData3.message = this.d.getString(R.string.xn_net_unavailable);
                c(baseData3);
                Log.d("com.palm.id.log", " applyKey ----->" + e.getMessage());
            }
        } finally {
            j.set(false);
        }
    }

    public abstract void b(int i2, Object obj, String str);

    public void c(BaseData baseData) {
        if (f()) {
            lk7 lk7Var = lk7.a.a;
            lk7Var.a.post(new OppO00p(baseData));
        }
    }

    public void d(BaseData baseData, String str) {
        Activity activity;
        SoftReference softReference = this.e;
        if (softReference == null || (activity = (Activity) softReference.get()) == null || !(activity instanceof BaseActivity)) {
            return;
        }
        BaseActivity baseActivity = (BaseActivity) activity;
        baseActivity.A0();
        if (TextUtils.isEmpty(baseData.message)) {
            return;
        }
        baseActivity.y0(activity.getString(R.string.xn_net_unavailable));
    }

    public void e(Object obj) {
        if (f()) {
            lk7 lk7Var = lk7.a.a;
            lk7Var.a.post(new RunnableC0002OppO0O0(obj));
        }
    }

    public final boolean f() {
        if (this.d == null) {
            return false;
        }
        SoftReference softReference = this.e;
        if (softReference == null) {
            return true;
        }
        Activity activity = (Activity) softReference.get();
        if (activity == null) {
            return false;
        }
        return !activity.isFinishing();
    }

    public abstract void g();

    public final void h() {
        if (f()) {
            lk7 lk7Var = lk7.a.a;
            lk7Var.a.post(new OppO0OO());
        }
    }

    public final void i() {
        Response responseB;
        int i2 = this.g;
        if (i2 >= 3) {
            return;
        }
        this.g = i2 + 1;
        Log.d("com.palm.id.log", " refreshToken");
        HashMap map = new HashMap();
        ao7 ao7Var = ao7.a.a;
        map.put("refreshToken", ao7Var.k(this.d));
        Context context = this.d;
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(context)) {
            responseB = new zn7().b(context, dp7.a("/sdk/login/refresh-token"), map);
        } else {
            if (context instanceof Activity) {
                cr7Var.b(context);
            }
            responseB = null;
        }
        try {
            if (responseB.isSuccessful()) {
                String strString = responseB.body().string();
                Log.d("com.palm.id.log", " refreshToken -----> isSuccessful");
                LoginRes.SdkToken sdkToken = (LoginRes.SdkToken) new Gson().fromJson(strString, LoginRes.SdkToken.class);
                ao7Var.d(this.d, sdkToken.accessToken, sdkToken.refreshToken);
                tl7 tl7VarC = tl7.c(this.d);
                tl7VarC.d(System.currentTimeMillis());
                tl7VarC.b();
                h();
                return;
            }
            if (responseB.code() == 400) {
                String strString2 = responseB.body().string();
                Log.d("com.palm.id.log", " refreshToken -----> ERROR_PARAM" + strString2);
                BaseData baseData = (BaseData) new Gson().fromJson(strString2, BaseData.class);
                Log.d("com.palm.id.log", " refreshToken -----> data.code " + baseData.code);
                if (baseData.code != 400006) {
                    c(baseData);
                    return;
                }
                baseData.message = "";
                c(baseData);
                lk7.a.a.a.post(new OppOOp0.OppO0OO(this));
            }
        } catch (Exception e) {
            e.printStackTrace();
            BaseData baseData2 = new BaseData();
            baseData2.code = responseB.code();
            baseData2.message = this.d.getString(R.string.xn_net_unavailable);
            c(baseData2);
            Log.d("com.palm.id.log", " refreshToken ----->" + e.getMessage());
        }
    }

    @Override
    public void onFailure(Call call, IOException iOException) {
        Log.d("com.palm.id.log", call.request().url() + "onFailure IOException response ----->" + iOException);
        iOException.printStackTrace();
        BaseData baseData = new BaseData();
        if (iOException instanceof SocketTimeoutException) {
            baseData.code = 1;
            baseData.message = this.d.getString(R.string.xn_request_timeout);
            c(baseData);
        } else {
            baseData.code = 1;
            baseData.message = this.d.getString(R.string.xn_net_unavailable);
            c(baseData);
        }
    }

    @Override
    public void onResponse(Call call, Response response) {
        try {
            Log.d("com.palm.id.log", "onResponse code ----->" + response.code());
            boolean z = false;
            if (response.isSuccessful()) {
                String strString = response.body().string();
                if (strString != null && !"".equals(strString)) {
                    Log.d("com.palm.id.log", call.request().url() + " response -----> success");
                    Gson gson = new Gson();
                    String url = call.request().url().getUrl();
                    for (int i2 = 0; i2 < i.size(); i2++) {
                        if (url.contains((CharSequence) i.get(i2))) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        EncryptRes encryptRes = (EncryptRes) gson.fromJson(strString, EncryptRes.class);
                        if (!encryptRes.checkSign()) {
                            BaseData baseData = (BaseData) gson.fromJson(strString, BaseData.class);
                            baseData.message = this.d.getString(R.string.xn_net_unavailable);
                            c(baseData);
                            return;
                        }
                        strString = encryptRes.dataJson(this.f);
                        Log.d("com.palm.id.log", " response -----> checkSign success");
                        if (!encryptRes.isSafe(strString, this.f.a)) {
                            Log.d("com.palm.id.log", " response -----> not safe");
                            BaseData baseData2 = (BaseData) gson.fromJson(strString, BaseData.class);
                            baseData2.message = this.d.getString(R.string.xn_net_unavailable);
                            c(baseData2);
                            return;
                        }
                    } else {
                        Log.d("com.palm.id.log", " response -----> noSign true " + z);
                    }
                    e(gson.fromJson(strString, this.c));
                    return;
                }
                Log.d("com.palm.id.log", call.request().url() + " response -----> null");
                e(null);
                return;
            }
            if (response.code() != 400) {
                if (response.code() == 401) {
                    Log.d("com.palm.id.log", call.request().url() + " response ----->" + response.code() + response.body().string());
                    i();
                    return;
                }
                String strString2 = response.body().string();
                BaseData baseData3 = (BaseData) new Gson().fromJson(strString2, BaseData.class);
                baseData3.message = this.d.getString(R.string.xn_net_unavailable);
                Log.d("com.palm.id.log", call.request().url() + " response ----->" + strString2);
                c(baseData3);
                return;
            }
            String strString3 = response.body().string();
            Log.d("com.palm.id.log", call.request().url() + " response -----> error param" + response.code() + strString3);
            BaseData baseData4 = (BaseData) new Gson().fromJson(strString3, BaseData.class);
            int i3 = baseData4.code;
            if (i3 == 400301) {
                if (j.getAndSet(true)) {
                    return;
                }
                a();
                return;
            }
            if (i3 != 400302) {
                if (i3 != 400000) {
                    c(baseData4);
                    return;
                }
                if (tl7.c(this.d).h()) {
                    lk7.a.a.a.post(new OppOOp0.OppO0OO(this));
                }
                c(baseData4);
                return;
            }
            ErrorExtend errorExtend = baseData4.errorExtend;
            if (errorExtend != null) {
                this.h++;
                long jCurrentTimeMillis = errorExtend.currentTime - System.currentTimeMillis();
                if (Math.abs(jCurrentTimeMillis) <= CloudConfigRes.getValidPeriod(this.d)) {
                    jCurrentTimeMillis = 0;
                }
                tl7 tl7VarC = tl7.c(this.d);
                tl7VarC.a();
                tl7VarC.b.putLong("key_time_diff", jCurrentTimeMillis);
                tl7VarC.b();
                h();
                if (this.h > 1) {
                    baseData4.message = this.d.getString(R.string.xn_net_unavailable);
                    c(baseData4);
                    this.h = 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.d("com.palm.id.log", call.request().url() + "Exception response ----->" + e.getMessage());
            BaseData baseData5 = new BaseData();
            baseData5.code = response.code();
            baseData5.message = this.d.getString(R.string.xn_net_unavailable);
            c(baseData5);
        }
    }

    public OppO0O0(Context context, Class cls) {
        this.c = cls;
        if (context instanceof Activity) {
            this.d = context.getApplicationContext();
            this.e = new SoftReference((Activity) context);
        } else {
            this.d = context;
        }
    }
}
