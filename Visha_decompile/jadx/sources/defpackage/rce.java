package defpackage;

import com.google.android.gms.internal.ads.s7;

public abstract class rce implements iqe {
    public final String a;
    public final String b;

    public rce(String str, String str2) {
        this.a = d2i.b(str);
        this.b = str2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x0071  */
    @Override
    public final void a(une uneVar) {
        switch (this.a) {
            case "TITLE":
                uneVar.O(this.b);
                break;
            case "ARTIST":
                uneVar.B(this.b);
                break;
            case "ALBUM":
                uneVar.A(this.b);
                break;
            case "ALBUMARTIST":
                uneVar.z(this.b);
                break;
            case "TRACKNUMBER":
                Integer numG = s7.g(this.b, 10);
                if (numG != null) {
                    uneVar.R(numG);
                    break;
                }
                break;
            case "TOTALTRACKS":
                Integer numG2 = s7.g(this.b, 10);
                if (numG2 != null) {
                    uneVar.Q(numG2);
                    break;
                }
                break;
            case "DISCNUMBER":
                Integer numG3 = s7.g(this.b, 10);
                if (numG3 != null) {
                    uneVar.F(numG3);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numG4 = s7.g(this.b, 10);
                if (numG4 != null) {
                    uneVar.P(numG4);
                    break;
                }
                break;
            case "GENRE":
                uneVar.G(this.b);
                break;
            case "DESCRIPTION":
                uneVar.E(this.b);
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            rce rceVar = (rce) obj;
            if (this.a.equals(rceVar.a) && this.b.equals(rceVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.a.hashCode() + 527) * 31) + this.b.hashCode();
    }

    public final String toString() {
        return "VC: " + this.a + "=" + this.b;
    }
}
