package com.transsion.xuanniao.account.api;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.ApplyKeyReq;
import com.transsion.xuanniao.account.model.data.Config;
import defpackage.am7;
import defpackage.ao7;
import defpackage.bw7;
import defpackage.cr7;
import defpackage.dp7;
import defpackage.go7;
import defpackage.il7;
import defpackage.jb0;
import defpackage.jr7;
import defpackage.mp7;
import defpackage.rr7;
import defpackage.wk7;
import defpackage.xj;
import defpackage.zn7;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

public class PalmInitialize implements Serializable {
    public static final int b = 0;

    public class a implements XNManager.a {
        public boolean a = false;

        public class C0274a extends OppO0O0 {
            public final Context k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0274a(a aVar, Context context, String str, Class cls, Context context2) {
                super(context, str, cls);
                this.k = context2;
            }

            @Override
            public void b(int i, Object obj, String str) {
                ao7.a.a.e(this.k, true);
            }

            @Override
            public void g() {
            }
        }

        @Override
        public boolean a(Context context, String str, PalmID.a aVar) {
            try {
                long jG = g(context);
                if (aVar == null && str == null && jG > 1800000) {
                    return false;
                }
                return il7.a().e(context, str, aVar);
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                return false;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v3, types: [ao7] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0022 -> B:50:0x0029). Please report as a decompilation issue!!! */
        @Override
        public void b(Context context, String str, int i) {
            String str2;
            ConnectivityManager connectivityManager;
            NetworkCapabilities networkCapabilities;
            if (i != 2) {
                try {
                    str2 = str;
                    if (rr7.a(context, "debug.palmsdk.test_mode", false).booleanValue()) {
                        jb0.a = 2;
                        bw7.a = 2;
                        str2 = str;
                    } else if (i == 3) {
                        jb0.a = 3;
                        bw7.a = 3;
                        str2 = str;
                    }
                } catch (Exception e) {
                    Log.d("com.palm.id.log", Log.getStackTraceString(e));
                    str2 = str;
                }
            } else {
                jb0.a = 2;
                bw7.a = 2;
                str2 = str;
            }
            try {
                jr7.i(context);
                go7.a.a.a = str2;
                str = ao7.a.a;
                if (str.l(context) || context == null || (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) == null) {
                    return;
                }
                try {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                        return;
                    }
                    if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3)) {
                        ApplyKeyReq applyKeyReq = new ApplyKeyReq();
                        applyKeyReq.publicKey1061 = str.g(context);
                        applyKeyReq.keyId = str.i(context);
                        C0274a c0274a = new C0274a(this, context, "", BaseData.class, context);
                        applyKeyReq.deviceId = mp7.a(context);
                        cr7 cr7Var = cr7.b.a;
                        if (cr7Var.a(context)) {
                            new zn7().c(context, dp7.a("/sdk/config/apply-key"), applyKeyReq, c0274a);
                            return;
                        }
                        if (context instanceof BaseActivity) {
                            ((BaseActivity) context).A0();
                        }
                        if (context instanceof Activity) {
                            cr7Var.b(context);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e3));
            }
        }

        @Override
        public void c(Context context, String str) {
            if (str != null) {
                ao7.a.a.c(context, (AccountRes) new Gson().fromJson(str, AccountRes.class));
            }
        }

        @Override
        public String d(Context context) {
            ao7 ao7Var = ao7.a.a;
            ao7Var.n(context);
            Config configF = ao7Var.f();
            return configF != null ? configF.token : "";
        }

        @Override
        public boolean e(Context context) {
            boolean z = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false);
            if (z && !this.a) {
                try {
                    AccountRes accountResJ = ao7.a.a.j(context);
                    if (accountResJ != null) {
                        xj.U(context).h(accountResJ.xuanniaoId);
                        this.a = true;
                    }
                } catch (Exception unused) {
                }
            }
            return z;
        }

        @Override
        public void f(Context context, String str) {
            try {
                il7.a().d(context, str);
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
        }

        @Override
        public long g(Context context) {
            long j;
            try {
                String strD = d(context);
                if (strD == null || strD.length() <= 0) {
                    j = 7200000;
                } else {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(strD.split("\\.")[1], 11), StandardCharsets.UTF_8));
                    j = ((long) (jSONObject.getInt("exp") - jSONObject.getInt("iat"))) * 1000;
                }
            } catch (Exception unused) {
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_refresh_time", 0L);
            long j3 = jCurrentTimeMillis - j2;
            if (j3 > 0 && j3 < j) {
                return j - j3;
            }
            Log.d("com.palm.id.log", "etime = " + j + ", ltime = " + j2 + ", ctime = " + jCurrentTimeMillis);
            return 0L;
        }

        @Override
        public String h(Context context, boolean z) {
            AccountRes accountResJ = ao7.a.a.j(context);
            if (z || accountResJ == null || accountResJ.xuanniaoId == null) {
                il7.a().c(context);
            }
            if (accountResJ != null) {
                return new Gson().toJson(accountResJ);
            }
            return null;
        }

        @Override
        public void i(Context context, String str, String str2) {
            ao7 ao7Var = ao7.a.a;
            ao7Var.d(context, str, str2);
            boolean z = str != null && str.length() > 0;
            SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).edit();
            editorEdit.putBoolean("is_logged_in", z);
            if (z) {
                editorEdit.putLong("key_refresh_time", System.currentTimeMillis());
            }
            editorEdit.apply();
            if (!z) {
                ao7Var.b(context);
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("notify", true);
            bundle.putBoolean("is_login", true);
            am7.a(context, wk7.a(), bundle);
        }
    }

    static {
        XNManager.g().m(new a());
    }
}
