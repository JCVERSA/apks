package x2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.Arrays;

public final class c implements x.a {

    public final byte[] f75066a;

    public final String f75067b;

    public final String f75068c;

    public c(byte[] bArr, String str, String str2) {
        this.f75066a = bArr;
        this.f75067b = str;
        this.f75068c = str2;
    }

    @Override
    public void a(v.b bVar) {
        String str = this.f75067b;
        if (str != null) {
            bVar.p0(str);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f75066a, ((c) obj).f75066a);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f75066a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f75067b, this.f75068c, Integer.valueOf(this.f75066a.length));
    }
}
