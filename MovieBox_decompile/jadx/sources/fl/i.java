package fl;

import android.util.LruCache;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class i {

    private final LruCache f60231a = new LruCache(1000);

    private final kl.f f60232b = kl.c.c(10, new a(this));

    class a implements kl.c.a {
        a(i iVar) {
        }

        @Override
        public Object create() {
            try {
                return new b(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private static final class b implements kl.c.b {

        private final MessageDigest f60233a;

        private final k f60234b = new k.b(null);

        b(MessageDigest messageDigest) {
            this.f60233a = messageDigest;
        }

        @Override
        public k getVerifier() {
            return this.f60234b;
        }
    }

    public String a(el.e eVar) {
        String strA;
        synchronized (this.f60231a) {
            strA = (String) this.f60231a.get(eVar);
        }
        if (strA == null) {
            b bVar = (b) this.f60232b.acquire();
            try {
                eVar.a(bVar.f60233a);
                strA = d.a(bVar.f60233a.digest());
                this.f60232b.release(bVar);
            } catch (Throwable th2) {
                this.f60232b.release(bVar);
                throw th2;
            }
        }
        synchronized (this.f60231a) {
            this.f60231a.put(eVar, strA);
        }
        return strA;
    }
}
