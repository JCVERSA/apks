package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

public class x7d implements zad {
    public final String b;
    public URL c;
    public volatile byte[] d;

    public x7d(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override
    public void a(MessageDigest messageDigest) {
        if (this.d == null) {
            this.d = this.b.getBytes(zad.a);
        }
        messageDigest.update(this.d);
    }

    public URL b() {
        if (this.c == null) {
            this.c = new URL(this.b);
        }
        return this.c;
    }

    public String toString() {
        return this.b;
    }
}
