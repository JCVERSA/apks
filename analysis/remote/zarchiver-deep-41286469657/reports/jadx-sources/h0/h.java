package h0;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;
import n0.i;
import ru.zdevs.zarchiver.io.SAF;

public final class h implements Comparable<h>, Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();

    public String f1106a;

    public String f1107b;

    public String f1108c;

    public String f1109d;

    public String f1110e;

    public int f1111f;

    public class a implements Parcelable.Creator<h> {
        @Override
        public final h createFromParcel(Parcel parcel) {
            return new h(parcel);
        }

        @Override
        public final h[] newArray(int i2) {
            return new h[i2];
        }
    }

    public h() {
        throw null;
    }

    public h(h hVar) {
        this.f1106a = hVar.f1106a;
        this.f1107b = hVar.f1107b;
        this.f1108c = hVar.f1108c;
        this.f1109d = hVar.f1109d;
        this.f1110e = hVar.f1110e;
        this.f1111f = hVar.f1111f;
    }

    public final void a(String str) {
        if (v0.h.e(str)) {
            return;
        }
        if (g()) {
            this.f1110e = a0.c.i(this.f1110e, str);
        } else {
            this.f1108c = a0.c.i(this.f1108c, str);
        }
        this.f1111f = 0;
    }

    public final int b(h hVar) {
        return toString().compareTo(hVar.toString());
    }

    public final boolean c() {
        boolean z2;
        boolean z3;
        String[] strArrG;
        x0.d.a aVarJ;
        this.f1111f = 0;
        if (g()) {
            int iLastIndexOf = this.f1110e.lastIndexOf(47);
            if (iLastIndexOf > 0) {
                this.f1110e = this.f1110e.substring(0, iLastIndexOf);
            } else if (iLastIndexOf != 0 || this.f1110e.equals("/")) {
                this.f1110e = "";
            } else {
                this.f1110e = "/";
            }
            if (!this.f1110e.isEmpty()) {
                z2 = false;
            } else {
                if (this.f1108c.startsWith("/uri/")) {
                    return false;
                }
                if (this.f1108c.startsWith("/SAF")) {
                    this.f1106a = "saf";
                } else {
                    this.f1106a = "file";
                }
                z2 = true;
            }
        } else {
            z2 = true;
        }
        if (m() && this.f1108c.indexOf(47, 5) == -1) {
            if (this.f1108c.indexOf("%3A", 5) == -1 || (strArrG = SAF.g(this.f1108c)) == null || (aVarJ = x0.d.j(strArrG[0])) == null || a0.c.K(aVarJ.f2259f, 4)) {
                z3 = true;
            } else {
                this.f1108c = aVarJ.f2255b;
                if (strArrG[1] != null) {
                    this.f1108c += "/" + strArrG[1];
                }
                this.f1106a = "file";
                z3 = false;
            }
            if (z3) {
                this.f1108c = "/storage/emulated";
                this.f1106a = "file";
                z2 = false;
            }
        }
        if (z2) {
            int iLastIndexOf2 = this.f1108c.lastIndexOf(47);
            if (iLastIndexOf2 > 0) {
                this.f1108c = this.f1108c.substring(0, iLastIndexOf2);
            } else {
                if (iLastIndexOf2 != 0 || this.f1108c.equals("/")) {
                    return false;
                }
                this.f1108c = "/";
            }
        }
        this.f1109d = null;
        return true;
    }

    @Override
    public final int compareTo(h hVar) {
        return b(hVar);
    }

    public final boolean d(h hVar) {
        return hVar != null && this.f1106a.equals(hVar.f1106a) && a0.c.n(this.f1108c, hVar.f1108c) && v0.h.f(this.f1107b, hVar.f1107b) && v0.h.f(this.f1110e, hVar.f1110e);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final String e() {
        String[] strArrG;
        if (g()) {
            if (!v0.h.e(this.f1110e)) {
                return a0.c.y(this.f1110e);
            }
        } else if (m() && this.f1108c.indexOf(47, 5) == -1 && (strArrG = SAF.g(this.f1108c)) != null) {
            String str = strArrG[1];
            return str != null ? a0.c.y(str) : a0.c.y(strArrG[0]);
        }
        String strY = a0.c.y(this.f1108c);
        String str2 = i.f1262a;
        return (strY.isEmpty() || strY.charAt(0) != 8234) ? strY : strY.substring(1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return d((h) obj);
        }
        return false;
    }

    public final h f() {
        h hVar = new h(this);
        if (hVar.c()) {
            return hVar;
        }
        return null;
    }

    public final boolean g() {
        return "arch".equals(this.f1106a) || "rarch".equals(this.f1106a);
    }

    public final boolean h() {
        return "rarch".equals(this.f1106a);
    }

    public final int hashCode() {
        if (this.f1111f == 0) {
            int iHashCode = this.f1106a.hashCode();
            int iHashCode2 = this.f1110e.hashCode() + (this.f1108c.hashCode() * 31);
            String str = this.f1107b;
            this.f1111f = ((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + iHashCode;
        }
        return this.f1111f;
    }

    public final boolean i() {
        return this.f1108c.startsWith("/uri/");
    }

    public final boolean j() {
        return "file".equals(this.f1106a) || "root".equals(this.f1106a);
    }

    public final boolean k() {
        return "plugin".equals(this.f1106a) || "plglocal".equals(this.f1106a);
    }

    public final boolean l() {
        return "root".equals(this.f1106a);
    }

    public final boolean m() {
        return "saf".equals(this.f1106a);
    }

    public final boolean n() {
        return m() && this.f1108c.endsWith("%2F");
    }

    public final boolean o() {
        return "file".equals(this.f1106a) || "root".equals(this.f1106a) || "saf".equals(this.f1106a);
    }

    public final void p(String str) {
        this.f1108c = str;
        this.f1111f = 0;
    }

    public final void q(String str) {
        this.f1106a = str;
        this.f1111f = 0;
    }

    public final String r() {
        if (m()) {
            return this.f1108c;
        }
        return !j() ? "" : this.f1108c;
    }

    public final Uri s() {
        return Uri.fromParts(this.f1106a, this.f1108c, this.f1110e);
    }

    public final String t() {
        if (g()) {
            return a0.c.i(this.f1108c, this.f1110e);
        }
        return m() ? this.f1108c.replace("/SAF", "/storage").replace("%3A", "/").replace("%2F", "/") : this.f1108c;
    }

    public final File toFile() {
        if (j() && v0.h.e(this.f1110e)) {
            return new File(this.f1108c);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1106a);
        sb.append(":/");
        if (!v0.h.e(this.f1107b)) {
            sb.append(this.f1107b);
        }
        if (this.f1108c.isEmpty() || this.f1108c.charAt(0) != '/') {
            sb.append('/');
        }
        sb.append(this.f1108c);
        if (!v0.h.e(this.f1110e)) {
            sb.append('#');
            sb.append(this.f1110e);
        }
        if (!v0.h.e(this.f1109d)) {
            sb.append('$');
            sb.append(this.f1109d);
        }
        return sb.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1106a);
        parcel.writeString(this.f1107b);
        parcel.writeString(this.f1108c);
        parcel.writeString(this.f1109d);
        parcel.writeString(this.f1110e);
    }

    public h(Uri uri) {
        this.f1106a = uri.getScheme();
        this.f1107b = uri.getHost();
        this.f1108c = uri.getSchemeSpecificPart();
        this.f1109d = null;
        String fragment = uri.getFragment();
        this.f1110e = fragment;
        if (fragment == null) {
            this.f1110e = "";
        }
        this.f1111f = 0;
    }

    public h(String str, h hVar) {
        this.f1106a = hVar.f1106a;
        this.f1107b = hVar.f1107b;
        if (hVar.g()) {
            this.f1108c = hVar.f1108c;
            this.f1110e = a0.c.i(hVar.f1110e, str);
        } else if (hVar.n()) {
            this.f1108c = hVar.f1108c + str;
            this.f1110e = hVar.f1110e;
        } else {
            this.f1108c = a0.c.i(hVar.f1108c, str);
            this.f1110e = hVar.f1110e;
        }
        this.f1111f = 0;
    }

    public h(String str, h hVar, String str2) {
        this(str, hVar);
        this.f1109d = str2;
    }

    public h(String str) {
        if (str.startsWith("/SAF")) {
            this.f1106a = "saf";
        } else {
            this.f1106a = "file";
        }
        this.f1108c = str;
        this.f1110e = "";
        this.f1107b = null;
        this.f1109d = null;
        this.f1111f = 0;
    }

    public h(String str, String str2) {
        this.f1106a = str;
        this.f1108c = str2;
        this.f1110e = "";
        this.f1107b = null;
        this.f1109d = null;
        this.f1111f = 0;
    }

    public h(String str, String str2, String str3) {
        this.f1106a = str;
        this.f1108c = str2;
        this.f1110e = str3;
        this.f1107b = null;
        this.f1109d = null;
        this.f1111f = 0;
    }

    public h(String str, String str2, String str3, String str4) {
        this.f1106a = str;
        this.f1108c = str2;
        this.f1110e = str3;
        this.f1107b = str4;
        this.f1109d = null;
        this.f1111f = 0;
    }

    public h(Parcel parcel) {
        this.f1106a = parcel.readString();
        this.f1107b = parcel.readString();
        this.f1108c = parcel.readString();
        this.f1109d = parcel.readString();
        this.f1110e = parcel.readString();
        this.f1111f = 0;
    }
}
