package s2;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

final class c {

    public final long f71468a;

    public final List f71469b;

    public static final class a {

        public final String f71470a;

        public final String f71471b;

        public final long f71472c;

        public final long f71473d;

        public a(String str, String str2, long j10, long j11) {
            this.f71470a = str;
            this.f71471b = str2;
            this.f71472c = j10;
            this.f71473d = j11;
        }
    }

    public c(long j10, List list) {
        this.f71468a = j10;
        this.f71469b = list;
    }

    public z2.a a(long j10) {
        long j11;
        if (this.f71469b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f71469b.size() - 1; size >= 0; size--) {
            a aVar = (a) this.f71469b.get(size);
            boolean zEquals = MimeTypes.VIDEO_MP4.equals(aVar.f71470a) | z10;
            if (size == 0) {
                j12 -= aVar.f71473d;
                j11 = 0;
            } else {
                j11 = j12 - aVar.f71472c;
            }
            long j17 = j12;
            j12 = j11;
            if (!zEquals || j12 == j17) {
                z10 = zEquals;
            } else {
                j16 = j17 - j12;
                j15 = j12;
                z10 = false;
            }
            if (size == 0) {
                j13 = j12;
                j14 = j17;
            }
        }
        if (j15 == -1 || j16 == -1 || j13 == -1 || j14 == -1) {
            return null;
        }
        return new z2.a(j13, j14, this.f71468a, j15, j16);
    }
}
