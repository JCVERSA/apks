package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

public final class uxi extends xxi {
    public final Logger a;

    public uxi(String str) {
        this.a = Logger.getLogger(str);
    }

    @Override
    public final void a(String str) {
        this.a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
