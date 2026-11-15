package defpackage;

import OooO0OO.OooO00o;
import OooO0o0.OooO0OO;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.hisavana.common.constant.ComConstants;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.gslb.GslbSdk;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.account.XNManager;
import com.transsion.palmsdk.auth.OooO0o;

public class sj7 {
    public final Context a;
    public final PalmAuthParam b;
    public OooO00o c;
    public boolean d = false;

    public sj7(Context context, PalmAuthParam palmAuthParam) {
        this.a = context.getApplicationContext();
        this.b = palmAuthParam;
    }

    public static void a(sj7 sj7Var) {
        sj7Var.getClass();
        try {
            if (XNManager.g().j(sj7Var.a) && sj7Var.b.isBindTransID()) {
                String strLoadString = mj7.a(sj7Var.a).a.loadString("linked_pkg");
                Intent intentA = vj7.a(sj7Var.a, true);
                vj7.a.g("PalmInitManager palm intent=" + intentA + ", linkedPkg=" + strLoadString);
                if (intentA == null || !TextUtils.equals(intentA.getPackage(), strLoadString)) {
                    return;
                }
                OooO0o oooO0o = new OooO0o(sj7Var.a, intentA, sj7Var.b, null);
                oooO0o.g = true;
                oooO0o.a();
            }
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager handleSystemAccountBinding error: "), vj7.a);
        }
    }

    public static void c(sj7 sj7Var) {
        sj7Var.getClass();
        try {
            boolean zJ = XNManager.g().j(sj7Var.a);
            Bundle bundle = new Bundle();
            bundle.putString("appid", sj7Var.b.getAppid());
            bundle.putString("version", "2.0.1.03");
            bundle.putBoolean("isLogged", zJ);
            new wj(ComConstants.SDK_INIT, 7710).c(bundle, null).b();
            vj7.a.g("PalmInitManager init analytics sent");
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager sendInitAnalytics error: "), vj7.a);
        }
    }

    public final void b() {
        try {
            String appProcess = this.b.getAppProcess();
            if (TextUtils.isEmpty(appProcess)) {
                this.d = true;
            } else {
                this.d = TextUtils.equals(appProcess, vj7.g(this.a));
            }
            vj7.a.g("PalmInitManager process mode determined - isMainProcess=" + this.d);
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager determineProcessMode error: "), vj7.a);
            this.d = true;
        }
    }

    public OooO00o d() {
        return this.c;
    }

    public void e() {
        try {
            f();
            b();
            if (this.d) {
                xj7.a().execute(new OooO0OO(this));
                i();
            } else {
                g();
            }
            vj7.a.g("PalmInitManager initSDK completed - isMainProcess=" + this.d + ", version=2.0.1.03");
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager initSDK error: "), vj7.a);
        }
    }

    public final void f() {
        try {
            AthenaAnalytics.O(this.a, "", 7710, false);
            GslbSdk.init(this.a, new String[]{"account.palm.tech", "auth-account.palm.tech", "api-cloud.palm.tech"}, (GslbSdk.InitListener) null);
            vj7.a.g("PalmInitManager third party libs initialized");
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager initThirdPartyLibs error: "), vj7.a);
        }
    }

    public final void g() {
        try {
            bw7.a = this.b.getServerMode();
            vj7.a.g("PalmInitManager sub process initialization completed");
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager initSubProcess error: "), vj7.a);
        }
    }

    public boolean h() {
        return this.d;
    }

    public final void i() {
        try {
            this.c = new OooO00o(this.b);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("intent.action.PALM_ID_CHANGE");
            if (!this.b.ignorePalmApp()) {
                if (Build.VERSION.SDK_INT >= 33) {
                    this.a.registerReceiver(this.c, intentFilter, 2);
                } else {
                    this.a.registerReceiver(this.c, intentFilter);
                }
            }
            intentFilter.addAction("intent.action.SILENT_LOGOUT");
            LocalBroadcastManager.getInstance(this.a).registerReceiver(this.c, intentFilter);
            vj7.a.g("PalmInitManager broadcast receivers registered");
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmInitManager registerBroadcastReceivers error: "), vj7.a);
        }
    }
}
