package p002OooO0Oo;

import com.transsion.palmsdk.exception.PalmServerException;
import defpackage.rj7;
import java.util.Map;

public class OooO implements Runnable {
    public final Map OooO00o;
    public final Map OooO0O0;

    public final rj7 f3OooO0OO;

    public final OooO0o f4OooO0Oo;

    public OooO(OooO0o oooO0o, Map map, Map map2, rj7 rj7Var) {
        this.f4OooO0Oo = oooO0o;
        this.OooO00o = map;
        this.OooO0O0 = map2;
        this.f3OooO0OO = rj7Var;
    }

    @Override
    public void run() throws Throwable {
        try {
            this.f3OooO0OO.onSuccess(OooO0o.b(this.f4OooO0Oo, this.f4OooO0Oo.a() + "/oauth/authorize", this.OooO00o, this.OooO0O0));
        } catch (Exception e) {
            if (!(e instanceof PalmServerException)) {
                this.f3OooO0OO.a(40103, e.getMessage());
            } else {
                PalmServerException palmServerException = (PalmServerException) e;
                this.f3OooO0OO.a(palmServerException.errorCode, palmServerException.errorMessage);
            }
        }
    }
}
