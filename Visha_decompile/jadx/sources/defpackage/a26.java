package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import org.mozilla.javascript.ES6Iterator;

public final class a26 {
    public final String a;
    public final u15 b;

    public a26(String str, u15 u15Var) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        y45.j(u15Var, SessionDescription.ATTR_RANGE);
        this.a = str;
        this.b = u15Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a26)) {
            return false;
        }
        a26 a26Var = (a26) obj;
        return y45.e(this.a, a26Var.a) && y45.e(this.b, a26Var.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "MatchGroup(value=" + this.a + ", range=" + this.b + ')';
    }
}
