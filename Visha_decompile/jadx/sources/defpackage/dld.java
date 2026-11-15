package defpackage;

import android.util.LruCache;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class dld {
    public final LruCache a = new LruCache(1000);
    public final ad8 b = bl3.c(10, new a(this));

    public class a implements bl3.a {
        public a(dld dldVar) {
        }

        @Override
        public Object create() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static final class b implements bl3.b {
        public final MessageDigest a;
        public final dod b = new dod.b(null);

        public b(MessageDigest messageDigest) {
            this.a = messageDigest;
        }

        @Override
        public dod getVerifier() {
            return this.b;
        }
    }

    public String a(zad zadVar) {
        String strA;
        synchronized (this.a) {
            strA = (String) this.a.get(zadVar);
        }
        if (strA == null) {
            b bVar = (b) this.b.acquire();
            try {
                zadVar.a(bVar.a);
                strA = i9d.a(bVar.a.digest());
                this.b.release(bVar);
            } catch (Throwable th) {
                this.b.release(bVar);
                throw th;
            }
        }
        synchronized (this.a) {
            this.a.put(zadVar, strA);
        }
        return strA;
    }
}
