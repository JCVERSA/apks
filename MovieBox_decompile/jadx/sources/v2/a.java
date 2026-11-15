package v2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Objects;

public final class a implements x.a {

    private static final r f73437g = new r.b().u0(MimeTypes.APPLICATION_ID3).N();

    private static final r f73438h = new r.b().u0(MimeTypes.APPLICATION_SCTE35).N();

    public final String f73439a;

    public final String f73440b;

    public final long f73441c;

    public final long f73442d;

    public final byte[] f73443e;

    private int f73444f;

    public a(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f73439a = str;
        this.f73440b = str2;
        this.f73441c = j10;
        this.f73442d = j11;
        this.f73443e = bArr;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f73441c == aVar.f73441c && this.f73442d == aVar.f73442d && Objects.equals(this.f73439a, aVar.f73439a) && Objects.equals(this.f73440b, aVar.f73440b) && Arrays.equals(this.f73443e, aVar.f73443e);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.f73443e;
        }
        return null;
    }

    @Override
    public r getWrappedMetadataFormat() {
        String str = this.f73439a;
        str.hashCode();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f73438h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f73437g;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.f73444f == 0) {
            String str = this.f73439a;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f73440b;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j10 = this.f73441c;
            int i10 = (((iHashCode + iHashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f73442d;
            this.f73444f = ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f73443e);
        }
        return this.f73444f;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f73439a + ", id=" + this.f73442d + ", durationMs=" + this.f73441c + ", value=" + this.f73440b;
    }
}
