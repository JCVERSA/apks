package defpackage;

import OppOOO0.OppOp0;
import OppOOp0.OppO0O0;
import android.content.Context;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;

public class bs7 extends OppO0O0 {
    public final OppOp0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bs7(OppOp0 oppOp0, Context context, Class cls) {
        super(context, cls);
        this.k = oppOp0;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CloudConfigRes cloudConfigRes = (CloudConfigRes) obj;
        if (!this.k.a() || cloudConfigRes == null || cloudConfigRes.cloudClientConfigs == null) {
            return;
        }
        cloudConfigRes.timeStamp = System.currentTimeMillis();
        Gson gson = new Gson();
        tl7 tl7VarC = tl7.c(this.k.e());
        String json = gson.toJson(cloudConfigRes);
        tl7VarC.a();
        tl7VarC.b.putString("key_cloud_config", json);
        tl7VarC.b();
        if (CloudConfigRes.privacyNeedAgree(this.k.e())) {
            ((qq7) this.k.a).e0();
        }
        xj.U(this.k.e()).l1(tl7VarC.g());
    }

    @Override
    public void g() {
    }
}
