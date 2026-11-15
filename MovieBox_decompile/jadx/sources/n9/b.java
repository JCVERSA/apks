package n9;

import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

final class b {

    public final long f66967a;

    public final List f66968b;

    public static final class a {

        public final String f66969a;

        public final String f66970b;

        public final long f66971c;

        public final long f66972d;

        public a(String str, String str2, long j10, long j11) {
            this.f66969a = str;
            this.f66970b = str2;
            this.f66971c = j10;
            this.f66972d = j11;
        }
    }

    public b(long j10, List list) {
        this.f66967a = j10;
        this.f66968b = list;
    }

    public MotionPhotoMetadata a(long j10) {
        long j11;
        if (this.f66968b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f66968b.size() - 1; size >= 0; size--) {
            a aVar = (a) this.f66968b.get(size);
            boolean zEquals = MimeTypes.VIDEO_MP4.equals(aVar.f66969a) | z10;
            if (size == 0) {
                j12 -= aVar.f66972d;
                j11 = 0;
            } else {
                j11 = j12 - aVar.f66971c;
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
        return new MotionPhotoMetadata(j13, j14, this.f66967a, j15, j16);
    }
}
