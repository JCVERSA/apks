package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.common.PlaybackException;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.hubsdk.api.app.TranActivityOptions;
import com.transsion.palmsdk.account.XNManager;
import com.transsion.palmsdk.data.PalmAuthRequest;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class aw7 {
    public static volatile aw7 c;
    public final Context a;
    public final Map b = new ConcurrentHashMap();

    public aw7(Context context) {
        this.a = context.getApplicationContext();
    }

    public static aw7 c(Context context) {
        if (c == null) {
            synchronized (aw7.class) {
                try {
                    if (c == null) {
                        c = new aw7(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public void a(PalmAuthRequest palmAuthRequest) {
        palmAuthRequest.setAuthManager(this);
        this.b.put(palmAuthRequest.getAuthRequestId(), palmAuthRequest);
        ObjectLogUtils objectLogUtils = vj7.a;
        StringBuilder sbA = qj7.a("begin request id = ");
        sbA.append(palmAuthRequest.getAuthRequestId());
        objectLogUtils.g(sbA.toString());
    }

    public PalmAuthRequest b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (PalmAuthRequest) this.b.get(str);
    }

    public void d(PalmAuthRequest palmAuthRequest) {
        a(palmAuthRequest);
        try {
            boolean zJ = XNManager.g().j(this.a);
            vj7.a.g("isLogged = " + zJ + " isHostMode = " + palmAuthRequest.isHostMode() + " isSilentMode = " + palmAuthRequest.isSilentMode());
            if (zJ) {
                if (palmAuthRequest.isSilentMode()) {
                    XNManager.g().o(this.a, palmAuthRequest.getAuthRequestId());
                    return;
                }
                Intent intent = palmAuthRequest.showPrevLogin() ? new Intent("intent.action.PALM_ID_PREV") : new Intent("intent.action.PALM_ID_AUTH");
                intent.setPackage(this.a.getPackageName());
                intent.putExtra("auth_request", palmAuthRequest.getAuthRequestId());
                if ("tech.palm.id".equals(this.a.getPackageName())) {
                    intent.addFlags(268468224);
                } else {
                    intent.addFlags(268435456);
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean(TranActivityOptions.KEY_OVERRIDE_TASK_TRANSITION, true);
                this.a.startActivity(intent, bundle);
                return;
            }
            if (!palmAuthRequest.isSilentMode() && !palmAuthRequest.isHostMode()) {
                Intent intent2 = new Intent();
                intent2.setClassName(this.a.getPackageName(), "com.transsion.xuanniao.account.login.view.LoginActivity");
                intent2.putExtra("isFinish", true);
                intent2.putExtra("source", palmAuthRequest.getAuthParam().getPkgName());
                intent2.putExtra("auth_request", palmAuthRequest.getAuthRequestId());
                if ("tech.palm.id".equals(this.a.getPackageName())) {
                    intent2.addFlags(268468224);
                } else {
                    intent2.addFlags(268435456);
                }
                this.a.startActivity(intent2);
                return;
            }
            palmAuthRequest.setException(40105, "palm id not login");
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            palmAuthRequest.setException(40102, "palm id app error");
        }
    }

    public void e(PalmAuthRequest palmAuthRequest) {
        a(palmAuthRequest);
        try {
            boolean zJ = XNManager.g().j(this.a);
            vj7.a.g("isLogged = " + zJ);
            if (!zJ) {
                Bundle bundle = new Bundle();
                bundle.putInt("status", PlaybackException.ERROR_CODE_AUTHENTICATION_EXPIRED);
                palmAuthRequest.setResult(bundle);
                return;
            }
            Bundle bundle2 = new Bundle();
            try {
                String strE = XNManager.g().e(this.a);
                if (!TextUtils.isEmpty(strE)) {
                    JSONObject jSONObject = new JSONObject(strE);
                    bundle2.putString("user_info", new JSONObject().put("nickName", jSONObject.optString("nickname")).put("userName", jSONObject.optString("username")).put("avatarUrl", jSONObject.optString("avatarUrl")).toString());
                    bundle2.putString("logged_id", String.valueOf(jSONObject.getString("xuanniaoId").hashCode()));
                }
            } catch (Exception e) {
                vj7.a.i(Log.getStackTraceString(e));
            }
            palmAuthRequest.setResult(bundle2);
        } catch (Exception e2) {
            vj7.a.i(Log.getStackTraceString(e2));
            palmAuthRequest.setException(40102, "palm id app error");
        }
    }

    public void f(String str) {
        this.b.remove(str);
        vj7.a.g("end request id = " + str);
    }
}
