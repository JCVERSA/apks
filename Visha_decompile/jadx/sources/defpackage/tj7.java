package defpackage;

import android.text.TextUtils;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;
import java.util.Map;

public class tj7 implements PalmID.a {
    public final String a;
    public final Map b;
    public final PalmID.a c;
    public final lj7 d;

    public tj7(lj7 lj7Var, String str, Map map, PalmID.a aVar) {
        this.d = lj7Var;
        this.a = str;
        this.b = map;
        this.c = aVar;
    }

    @Override
    public void a(int i, String str) {
        vj7.a.i("PalmNetworkManager token refresh failed: " + str);
        this.c.a(i, "Token refresh failed: " + str);
    }

    @Override
    public void onSuccess(Object obj) {
        String strH = XNManager.g().h(this.d.a);
        if (TextUtils.isEmpty(strH)) {
            this.c.a(40055, "Token refresh failed");
        } else {
            vj7.a.g("PalmNetworkManager token refreshed, retrying API call");
            this.d.a(this.a, strH, this.b, this.c);
        }
    }
}
