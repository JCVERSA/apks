package defpackage;

import android.net.Uri;
import com.lzy.okgo.model.Progress;

public final class ru2 {
    public final Uri a;
    public final String b;
    public final qu2 c;
    public final Long d;

    public ru2(Uri uri, String str, qu2 qu2Var, Long l) {
        y45.j(uri, "url");
        y45.j(str, Progress.MIMETYPE);
        this.a = uri;
        this.b = str;
        this.c = qu2Var;
        this.d = l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ru2)) {
            return false;
        }
        ru2 ru2Var = (ru2) obj;
        return y45.e(this.a, ru2Var.a) && y45.e(this.b, ru2Var.b) && y45.e(this.c, ru2Var.c) && y45.e(this.d, ru2Var.d);
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        qu2 qu2Var = this.c;
        int iHashCode2 = (iHashCode + (qu2Var == null ? 0 : qu2Var.hashCode())) * 31;
        Long l = this.d;
        return iHashCode2 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "DivVideoSource(url=" + this.a + ", mimeType=" + this.b + ", resolution=" + this.c + ", bitrate=" + this.d + ')';
    }
}
