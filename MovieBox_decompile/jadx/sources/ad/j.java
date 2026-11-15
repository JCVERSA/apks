package ad;

import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;

public class j {

    private final long f287a;

    private final long f288b;

    public static class b {

        private long f289a = 60;

        private long f290b = ConfigFetchHandler.f31616j;

        public j c() {
            return new j(this);
        }

        public b d(long j10) {
            if (j10 < 0) {
                throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j10)));
            }
            this.f289a = j10;
            return this;
        }

        public b e(long j10) {
            if (j10 >= 0) {
                this.f290b = j10;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j10 + " is an invalid argument");
        }
    }

    public long a() {
        return this.f287a;
    }

    public long b() {
        return this.f288b;
    }

    private j(b bVar) {
        this.f287a = bVar.f289a;
        this.f288b = bVar.f290b;
    }
}
