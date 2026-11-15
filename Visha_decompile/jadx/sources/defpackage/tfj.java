package defpackage;

import android.media.metrics.LogSessionId;
import java.util.Objects;

public final class tfj {
    public final String a;
    public final rfj b;
    public final Object c;

    static {
        new tfj("");
    }

    public tfj(String str) {
        this.a = str;
        this.b = kfh.a >= 31 ? new rfj() : null;
        this.c = new Object();
    }

    public final synchronized LogSessionId a() {
        rfj rfjVar;
        rfjVar = this.b;
        if (rfjVar == null) {
            throw null;
        }
        return rfjVar.a;
    }

    public final synchronized void b(LogSessionId logSessionId) {
        rfj rfjVar = this.b;
        if (rfjVar == null) {
            throw null;
        }
        n7g.f(rfjVar.a.equals(LogSessionId.LOG_SESSION_ID_NONE));
        rfjVar.a = logSessionId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tfj)) {
            return false;
        }
        tfj tfjVar = (tfj) obj;
        return Objects.equals(this.a, tfjVar.a) && Objects.equals(this.b, tfjVar.b) && Objects.equals(this.c, tfjVar.c);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c);
    }
}
