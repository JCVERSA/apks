package p002OooO0Oo;

import com.transsion.palmsdk.data.PalmTokenInfo;
import com.transsion.palmsdk.exception.PalmServerException;
import defpackage.rj7;
import java.util.Map;

public class OooOO0O implements Runnable {
    public final Map OooO00o;
    public final rj7 OooO0O0;

    public final OooO0o f9OooO0OO;

    public OooOO0O(OooO0o oooO0o, Map map, rj7 rj7Var) {
        this.f9OooO0OO = oooO0o;
        this.OooO00o = map;
        this.OooO0O0 = rj7Var;
    }

    @Override
    public void run() throws Throwable {
        try {
            this.OooO0O0.onSuccess(new PalmTokenInfo(OooO0o.b(this.f9OooO0OO, this.f9OooO0OO.a() + "/client/token", null, this.OooO00o)));
        } catch (Exception e) {
            if (!(e instanceof PalmServerException)) {
                this.OooO0O0.a(40103, e.getMessage());
            } else {
                PalmServerException palmServerException = (PalmServerException) e;
                this.OooO0O0.a(palmServerException.errorCode, palmServerException.errorMessage);
            }
        }
    }
}
