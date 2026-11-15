package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import java.util.HashMap;

public class wp7 extends OppO0O0 {
    public final do7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wp7(do7 do7Var, Context context, Class cls) {
        super(context, cls);
        this.k = do7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        HashMap<String, Object> map;
        CloudConfigRes cloudConfigRes = (CloudConfigRes) obj;
        if (!this.k.a() || cloudConfigRes == null || cloudConfigRes.cloudClientConfigs == null) {
            return;
        }
        cloudConfigRes.timeStamp = System.currentTimeMillis();
        long jCurrentTimeMillis = cloudConfigRes.sysTime - System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis) <= cloudConfigRes.validPeriod) {
            jCurrentTimeMillis = 0;
        }
        String json = new Gson().toJson(cloudConfigRes);
        tl7 tl7VarC = tl7.c(this.k.k());
        for (CloudConfigRes.ConfigItem configItem : cloudConfigRes.cloudClientConfigs) {
            if (configItem != null && configItem.type == 15 && (map = configItem.configMap) != null) {
                String strValueOf = String.valueOf(map.get("privacyVersion"));
                String strValueOf2 = String.valueOf(configItem.configMap.get("userAgreementVersion"));
                tl7VarC.a();
                tl7VarC.b.putString("privacy_version", strValueOf);
                tl7VarC.a();
                tl7VarC.b.putString("user_agreement_version", strValueOf2);
            }
        }
        tl7VarC.a();
        tl7VarC.b.putString("key_cloud_config", json);
        tl7VarC.a();
        tl7VarC.b.putLong("key_time_diff", jCurrentTimeMillis);
        tl7VarC.b();
        xj.U(this.k.k()).l1(json);
    }

    @Override
    public void g() {
    }
}
