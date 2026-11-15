package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.auth.data.AuthTokenRes;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.AccountRes;
import org.json.JSONObject;

public class bo7 extends OppO0O0 {
    public final Context k;
    public final PalmAuthRequest l;
    public final String m;
    public final String n;
    public final il7 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo7(il7 il7Var, Context context, Class cls, Context context2, PalmAuthRequest palmAuthRequest, String str, String str2) {
        super(context, cls);
        this.o = il7Var;
        this.k = context2;
        this.l = palmAuthRequest;
        this.m = str;
        this.n = str2;
    }

    @Override
    public void b(int i, Object obj, String str) {
        AuthTokenRes authTokenRes = (AuthTokenRes) obj;
        try {
            AccountRes accountResJ = ao7.a.a.j(this.k);
            Bundle bundle = new Bundle();
            if (accountResJ != null) {
                try {
                    bundle.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                    bundle.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                } catch (Exception e) {
                    Log.d("com.palm.id.log", Log.getStackTraceString(e));
                }
            }
            bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put("access_token", authTokenRes.accessToken).put("refresh_token", authTokenRes.refreshToken).put("expires_in", authTokenRes.expiresIn).put("open_id", authTokenRes.openId).toString());
            Bundle bundle2 = new Bundle();
            bundle2.putString("appid", this.l.getAuthParam().getAppid());
            bundle2.putString("version", "2.0.1.03");
            bundle2.putString("ti_s_result", "success");
            new wj("sdk_auth_result", 7710).c(bundle2, null).b();
            this.l.setResult(bundle);
        } catch (Exception e2) {
            this.l.setException(40104, e2.getMessage());
            Bundle bundle3 = new Bundle();
            ok7.a(this.l, bundle3, "appid", "version", "2.0.1.03");
            bundle3.putString("ti_s_result", "failure");
            bundle3.putInt("errcode", 40104);
            xm7.a("sdk_auth_result", 7710, bundle3, null);
        }
    }

    @Override
    public void d(BaseData baseData, String str) {
        this.l.setException(baseData.code, baseData.message);
        Bundle bundle = new Bundle();
        ok7.a(this.l, bundle, "appid", "version", "2.0.1.03");
        bundle.putString("ti_s_result", "failure");
        bundle.putInt("errcode", baseData.code);
        new wj("sdk_auth_result", 7710).c(bundle, null).b();
    }

    @Override
    public void g() {
        il7.b(this.o, this.k, this.m, this.n);
    }
}
