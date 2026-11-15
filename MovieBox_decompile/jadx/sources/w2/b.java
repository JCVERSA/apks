package w2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.primitives.Ints;

public abstract class b implements x.a {

    public final String f74139a;

    public final String f74140b;

    public b(String str, String str2) {
        this.f74139a = com.google.common.base.a.g(str);
        this.f74140b = str2;
    }

    @Override
    public void a(v.b bVar) {
        String str = this.f74139a;
        str.hashCode();
        switch (str) {
            case "TOTALTRACKS":
                Integer numP = Ints.p(this.f74140b);
                if (numP != null) {
                    bVar.r0(numP);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numP2 = Ints.p(this.f74140b);
                if (numP2 != null) {
                    bVar.q0(numP2);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numP3 = Ints.p(this.f74140b);
                if (numP3 != null) {
                    bVar.s0(numP3);
                    break;
                }
                break;
            case "ALBUM":
                bVar.P(this.f74140b);
                break;
            case "GENRE":
                bVar.c0(this.f74140b);
                break;
            case "TITLE":
                bVar.p0(this.f74140b);
                break;
            case "DESCRIPTION":
                bVar.W(this.f74140b);
                break;
            case "DISCNUMBER":
                Integer numP4 = Ints.p(this.f74140b);
                if (numP4 != null) {
                    bVar.X(numP4);
                    break;
                }
                break;
            case "ALBUMARTIST":
                bVar.O(this.f74140b);
                break;
            case "ARTIST":
                bVar.Q(this.f74140b);
                break;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f74139a.equals(bVar.f74139a) && this.f74140b.equals(bVar.f74140b);
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
        return ((527 + this.f74139a.hashCode()) * 31) + this.f74140b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f74139a + UrlUtils.EQUAL_MARK + this.f74140b;
    }
}
