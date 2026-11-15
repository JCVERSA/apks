package el;

import android.net.Uri;
import android.text.TextUtils;
import java.security.MessageDigest;

public class d implements e {

    private volatile byte[] f59729b;

    private final String f59730c;

    public d(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("url must be can not null or empty");
        }
        this.f59730c = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
    }

    @Override
    public void a(MessageDigest messageDigest) {
        if (this.f59729b == null) {
            this.f59729b = this.f59730c.getBytes(e.f59731a);
        }
        messageDigest.update(this.f59729b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return kl.e.a(this.f59730c).equals(kl.e.a(((d) obj).f59730c));
        }
        return false;
    }

    public int hashCode() {
        return this.f59730c.hashCode() * 31;
    }
}
