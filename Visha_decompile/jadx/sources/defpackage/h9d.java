package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.security.MessageDigest;

public class h9d implements zad {
    public volatile byte[] b;
    public final String c;

    public h9d(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.c = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override
    public void a(MessageDigest messageDigest) {
        if (this.b == null) {
            this.b = this.c.getBytes(zad.a);
        }
        messageDigest.update(this.b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof h9d) {
            return ew5.a(this.c).equals(ew5.a(((h9d) obj).c));
        }
        return false;
    }

    public int hashCode() {
        return this.c.hashCode() * 31;
    }
}
