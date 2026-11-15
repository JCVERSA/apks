package el;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

public class c implements e {

    private final String f59726b;

    private URL f59727c;

    private volatile byte[] f59728d;

    public c(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.f59726b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override
    public void a(MessageDigest messageDigest) {
        if (this.f59728d == null) {
            this.f59728d = this.f59726b.getBytes(e.f59731a);
        }
        messageDigest.update(this.f59728d);
    }

    public URL b() {
        if (this.f59727c == null) {
            this.f59727c = new URL(this.f59726b);
        }
        return this.f59727c;
    }

    public String toString() {
        return this.f59726b;
    }
}
