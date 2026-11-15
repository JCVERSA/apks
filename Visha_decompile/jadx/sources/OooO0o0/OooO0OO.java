package OooO0o0;

import OooO0OO.OooO0O0;
import com.transsion.palmsdk.account.XNManager;
import defpackage.bw7;
import defpackage.oj7;
import defpackage.qj7;
import defpackage.sj7;
import defpackage.vj7;

public class OooO0OO implements Runnable {
    public final sj7 OooO00o;

    public OooO0OO(sj7 sj7Var) {
        this.OooO00o = sj7Var;
    }

    @Override
    public void run() {
        try {
            bw7.a = this.OooO00o.b.getServerMode();
            XNManager xNManagerG = XNManager.g();
            sj7 sj7Var = this.OooO00o;
            xNManagerG.c(sj7Var.a, sj7Var.b.getAppid(), this.OooO00o.b.getServerMode());
            OooO0O0 oooO0O0A = OooO0O0.a(this.OooO00o.a);
            oooO0O0A.b = this.OooO00o.b;
            oooO0O0A.c(null, true);
            sj7.a(this.OooO00o);
            sj7.c(this.OooO00o);
            this.OooO00o.getClass();
            try {
                vj7.a.g("PalmInitManager cloud config initialization scheduled");
            } catch (Exception e) {
                vj7.a.i("PalmInitManager initCloudConfigDelayed error: " + e.getMessage());
            }
            vj7.a.g("PalmInitManager main process initialization completed");
        } catch (Exception e2) {
            oj7.a(e2, qj7.a("PalmInitManager initMainProcess error: "), vj7.a);
        }
    }
}
