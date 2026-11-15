package x2;

import androidx.media3.common.r;
import androidx.media3.common.util.u;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class b implements x.a {

    public final int f75060a;

    public final String f75061b;

    public final String f75062c;

    public final String f75063d;

    public final boolean f75064e;

    public final int f75065f;

    public b(int i10, String str, String str2, String str3, boolean z10, int i11) {
        androidx.media3.common.util.a.a(i11 == -1 || i11 > 0);
        this.f75060a = i10;
        this.f75061b = str;
        this.f75062c = str2;
        this.f75063d = str3;
        this.f75064e = z10;
        this.f75065f = i11;
    }

    public static b b(Map map) {
        boolean z10;
        int i10;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i11;
        List list = (List) map.get("icy-br");
        boolean z11 = true;
        int i12 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i11 = Integer.parseInt(str4) * 1000;
                if (i11 > 0) {
                    z10 = true;
                } else {
                    try {
                        u.h("IcyHeaders", "Invalid bitrate: " + str4);
                        z10 = false;
                        i11 = -1;
                    } catch (NumberFormatException unused) {
                        u.h("IcyHeaders", "Invalid bitrate header: " + str4);
                        z10 = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i11 = -1;
            }
            i10 = i11;
        } else {
            z10 = false;
            i10 = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z10 = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z10 = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z10 = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z10 = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i13 = Integer.parseInt(str5);
                if (i13 > 0) {
                    i12 = i13;
                } else {
                    try {
                        u.h("IcyHeaders", "Invalid metadata interval: " + str5);
                        z11 = z10;
                    } catch (NumberFormatException unused3) {
                        i12 = i13;
                        u.h("IcyHeaders", "Invalid metadata interval: " + str5);
                    }
                }
                z10 = z11;
            } catch (NumberFormatException unused4) {
            }
        }
        if (z10) {
            return new b(i10, str, str2, str3, zEquals, i12);
        }
        return null;
    }

    @Override
    public void a(v.b bVar) {
        String str = this.f75062c;
        if (str != null) {
            bVar.m0(str);
        }
        String str2 = this.f75061b;
        if (str2 != null) {
            bVar.c0(str2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f75060a == bVar.f75060a && Objects.equals(this.f75061b, bVar.f75061b) && Objects.equals(this.f75062c, bVar.f75062c) && Objects.equals(this.f75063d, bVar.f75063d) && this.f75064e == bVar.f75064e && this.f75065f == bVar.f75065f;
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
        int i10 = (527 + this.f75060a) * 31;
        String str = this.f75061b;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f75062c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f75063d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f75064e ? 1 : 0)) * 31) + this.f75065f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f75062c + "\", genre=\"" + this.f75061b + "\", bitrate=" + this.f75060a + ", metadataInterval=" + this.f75065f;
    }
}
