package ru.zdevs.zarchiver;

import android.os.Parcel;
import android.os.Parcelable;
import h0.f;
import h0.h;
import h1.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import x0.g;

public final class c {

    public WeakReference<ru.zdevs.zarchiver.service.c> f1675a = new WeakReference<>(null);

    public static boolean c(h hVar) {
        h0.e.a aVarD;
        if (hVar.g()) {
            hVar = a0.c.q(hVar);
        }
        if ((hVar.l() && !t0.b.i(hVar.f1108c)) || (aVarD = h0.e.d(hVar)) == null) {
            return false;
        }
        long jO = f.u(hVar).o();
        long j2 = aVarD.f1085a;
        if (jO < j2 || j2 <= 0) {
            return false;
        }
        ZApp.i(R.string.ERROR_NOT_ENOUGH_DISK_SPACE);
        return true;
    }

    public static boolean f(h hVar, boolean z2) {
        if (hVar.g()) {
            if (hVar.h()) {
                return true;
            }
            if (!z2) {
                return false;
            }
            hVar = new h(hVar.f1108c);
        }
        return ((z2 && g.d(hVar, true) != 1) || (!z2 && g.b(hVar) == 2)) && t0.b.i(hVar.f1108c);
    }

    public final void a(h hVar, String str, String str2, h hVar2, int i2) {
        ru.zdevs.zarchiver.service.c cVar = this.f1675a.get();
        if (cVar != null && hVar.o()) {
            String strA0 = hVar2.g() ? a0.c.a0(hVar2.f1110e) : null;
            h hVarQ = a0.c.q(hVar2);
            String strE = hVarQ.e();
            if (c(hVarQ)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            if (!v0.h.e(str2)) {
                sb.append(str2);
            }
            if (!v0.h.e(strA0)) {
                sb.append("\\-spp");
                sb.append(strA0);
                sb.append('/');
            }
            a0.c.e(sb, strE, hVarQ, true);
            if (f(hVar2, true)) {
                i2 |= 1;
            }
            try {
                cVar.ArchiveAddFiles(strE, hVarQ, sb.toString(), str, hVar, i2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009f  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00de  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x009f, please report this as an issue */
    public final void b(a0.a aVar, h hVar, boolean z2, boolean z3) {
        int i2;
        String str;
        String strX;
        ru.zdevs.zarchiver.service.c cVar = this.f1675a.get();
        if (cVar == null) {
            return;
        }
        boolean zJ = t0.b.j();
        int i3 = 1;
        boolean z4 = (zJ && !z3 && f(hVar, true)) ? true : z3;
        int iH = aVar.h();
        ArrayList arrayList = new ArrayList(iH);
        ArrayList arrayList2 = new ArrayList(iH);
        ArrayList arrayList3 = new ArrayList(iH);
        ArrayList arrayList4 = new ArrayList(iH);
        boolean z5 = false;
        boolean z6 = z4;
        int i4 = 0;
        while (i4 < iH) {
            String strB = aVar.b(i4);
            h hVarA = aVar.a(i4);
            if (zJ && !z6 && f(hVarA, z5)) {
                z6 = true;
            }
            if (a0.c.O(strB, z5)) {
                i2 = i4;
                if (aVar.f0a.get(i4).f542d > 3221225472L) {
                    str = "\\-mmt=1";
                } else if (t0.b.a() > 0) {
                    str = "\\-mmt=" + t0.b.a();
                }
                if (e0.h.d().e(strB)) {
                    str = str + "\\-p" + e0.h.d().c(true);
                }
                arrayList.add(hVarA);
                arrayList2.add(strB);
                arrayList3.add(str);
                if (z2) {
                    strX = a0.c.X(strB);
                    if (strB.equals(strX)) {
                        strX = a0.c.Z(strB);
                    }
                    arrayList4.add(new h(strX, hVar));
                } else {
                    arrayList4.add(hVar);
                }
                i4 = i2 + 1;
                i3 = 1;
                z5 = false;
            } else {
                i2 = i4;
            }
            str = "";
            if (e0.h.d().e(strB)) {
                str = str + "\\-p" + e0.h.d().c(true);
            }
            arrayList.add(hVarA);
            arrayList2.add(strB);
            arrayList3.add(str);
            if (z2) {
                strX = a0.c.X(strB);
                if (strB.equals(strX)) {
                    strX = a0.c.Z(strB);
                }
                arrayList4.add(new h(strX, hVar));
            } else {
                arrayList4.add(hVar);
            }
            i4 = i2 + 1;
            i3 = 1;
            z5 = false;
        }
        try {
            if (iH == i3) {
                cVar.ArchiveExtract((String) arrayList2.get(0), (h) arrayList.get(0), (String) arrayList3.get(0), "", (h) arrayList4.get(0), z6 ? 1 : 0);
            } else {
                cVar.ArchiveExtractMulti(arrayList2, arrayList, arrayList3, null, arrayList4, z6 ? 1 : 0);
            }
        } catch (Exception unused) {
        }
    }

    public final boolean d(h hVar, int i2) {
        ru.zdevs.zarchiver.service.c cVar = this.f1675a.get();
        if (cVar == null) {
            return false;
        }
        try {
            return cVar.IsLock(hVar, i2);
        } catch (Exception unused) {
            return false;
        }
    }

    public final void e(h hVar, int i2) {
        ru.zdevs.zarchiver.service.c cVar = this.f1675a.get();
        if (cVar == null) {
            return;
        }
        try {
            if (!hVar.g()) {
                if (hVar.k()) {
                    cVar.PluginOpenFile(hVar, i2);
                    return;
                }
                return;
            }
            String strA0 = a0.c.a0(hVar.f1110e);
            StringBuilder sb = new StringBuilder();
            if (a0.c.O(hVar.f1108c, false) && t0.b.a() > 0) {
                sb.append("\\-mmt=");
                sb.append(t0.b.a());
            }
            if (e0.h.d().e(hVar.f1108c)) {
                sb.append("\\-p");
                sb.append(e0.h.d().c(true));
            }
            if (strA0.indexOf(47) != -1) {
                sb.append("\\-z");
                sb.append(a0.c.A(strA0));
            }
            if (f(hVar, false)) {
                i2 |= 1;
            }
            int i3 = i2;
            hVar.f1109d = a0.c.u(hVar.f1108c);
            cVar.ArchiveOpenFile(a0.c.y(strA0), hVar, sb.toString(), strA0, i3);
        } catch (Exception unused) {
        }
    }

    public static class a implements j {
        public static final Parcelable.Creator<a> CREATOR = new C0033a();

        public final h f1676a;

        public final String f1677b;

        public final String f1678c;

        public final boolean f1679d;

        public byte f1680e;

        public class C0033a implements Parcelable.Creator<a> {
            @Override
            public final a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override
            public final a[] newArray(int i2) {
                return new a[i2];
            }
        }

        public a(h hVar, String str, String str2, boolean z2, byte b2) {
            this.f1676a = hVar;
            this.f1677b = str;
            this.f1678c = str2;
            this.f1679d = z2;
            this.f1680e = b2;
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        @Override
        public final int type() {
            return 1;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.f1676a, i2);
            parcel.writeString(this.f1677b);
            parcel.writeString(this.f1678c);
            parcel.writeByte(this.f1679d ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f1680e);
        }

        public a(Parcel parcel) {
            this.f1676a = (h) parcel.readParcelable(h.class.getClassLoader());
            this.f1677b = parcel.readString();
            this.f1678c = parcel.readString();
            this.f1679d = parcel.readByte() == 1;
            this.f1680e = parcel.readByte();
        }
    }
}
