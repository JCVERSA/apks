package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.auth.data.AuthTokenRes;
import com.transsion.xuanniao.account.auth.view.PalmPrevActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.model.data.AccountRes;
import org.json.JSONObject;

public class dq7 extends OppO0O0 {
    public final PalmAuthParam k;
    public final String l;
    public final PalmPrevActivity m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dq7(PalmPrevActivity palmPrevActivity, Context context, Class cls, PalmAuthParam palmAuthParam, String str) {
        super(context, cls);
        this.m = palmPrevActivity;
        this.k = palmAuthParam;
        this.l = str;
    }

    @Override
    public void b(int i, Object obj, String str) {
        AuthTokenRes authTokenRes = (AuthTokenRes) obj;
        try {
            AccountRes accountResJ = ao7.a.a.j(this.m);
            Bundle bundle = new Bundle();
            if (accountResJ != null) {
                try {
                    bundle.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                    bundle.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                    bundle.putString("linked_pkg", this.m.getPackageName());
                    bundle.putString("linked_bd", jr7.e());
                } catch (Exception e) {
                    Log.d("com.palm.id.log", Log.getStackTraceString(e));
                }
            }
            bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put("access_token", authTokenRes.accessToken).put("refresh_token", authTokenRes.refreshToken).put("expires_in", authTokenRes.expiresIn).put("open_id", authTokenRes.openId).toString());
            Bundle bundle2 = new Bundle();
            bundle2.putString("appid", this.k.getAppid());
            bundle2.putString("version", "2.0.1.03");
            bundle2.putString("ti_s_result", "success");
            new wj("sdk_auth_result", 7710).c(bundle2, null).b();
            PalmAuthRequest palmAuthRequest = this.m.f;
            if (palmAuthRequest != null) {
                palmAuthRequest.setResult(bundle);
                this.m.f = null;
            }
            this.m.finish();
        } catch (Exception e2) {
            this.m.c0(40104, e2.getMessage());
            Bundle bundle3 = new Bundle();
            bundle3.putString("appid", this.k.getAppid());
            bundle3.putString("version", "2.0.1.03");
            bundle3.putString("ti_s_result", "failure");
            bundle3.putInt("errcode", 40104);
            xm7.a("sdk_auth_result", 7710, bundle3, null);
        }
    }

    @Override
    public void d(BaseData baseData, String str) {
        this.m.c0(baseData.code, baseData.message);
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.k.getAppid());
        bundle.putString("version", "2.0.1.03");
        bundle.putString("ti_s_result", "failure");
        bundle.putInt("errcode", baseData.code);
        new wj("sdk_auth_result", 7710).c(bundle, null).b();
    }

    @Override
    public void g() {
        PalmPrevActivity.B0(this.m, this.l, this.k);
    }
}
