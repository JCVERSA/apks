package a0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0000a();

    public final ArrayList<d0.d> f0a;

    public final h0.h f1b;

    public boolean f2c;

    public class C0000a implements Parcelable.Creator<a> {
        @Override
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override
        public final a[] newArray(int i2) {
            return new a[i2];
        }
    }

    public a(d0.b bVar, h0.h hVar, int[] iArr) throws Exception {
        if (iArr.length == 0 || bVar == null || bVar.size() < 1 || hVar == null) {
            throw new Exception("Fill failed");
        }
        this.f2c = false;
        this.f1b = new h0.h(hVar);
        this.f0a = new ArrayList<>(iArr.length);
        for (int i2 : iArr) {
            this.f0a.add(bVar.b(i2));
        }
    }

    public final h0.h a(int i2) {
        d0.d dVar = this.f0a.get(i2);
        h0.h hVar = this.f1b;
        if (hVar == null) {
            hVar = ((d0.f) dVar).f552k;
        }
        return new h0.h(dVar.f539a, hVar, dVar.f540b);
    }

    public final String b(int i2) {
        return this.f0a.get(i2).f539a;
    }

    public final h0.h[] c() {
        ArrayList<d0.d> arrayList = this.f0a;
        int size = arrayList.size();
        h0.h[] hVarArr = new h0.h[size];
        int i2 = 0;
        h0.h hVar = this.f1b;
        if (hVar != null) {
            while (i2 < size) {
                hVarArr[i2] = hVar;
                i2++;
            }
        } else {
            while (i2 < size) {
                hVarArr[i2] = ((d0.f) arrayList.get(i2)).f552k;
                i2++;
            }
        }
        return hVarArr;
    }

    public final boolean d(String str) {
        h0.h hVar;
        if (str != null && (hVar = this.f1b) != null && hVar.j() && c.A(str).equals(hVar.f1108c)) {
            String strY = c.y(str);
            Iterator<d0.d> it = this.f0a.iterator();
            while (it.hasNext()) {
                if (strY.equals(it.next().f539a)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean e(int i2) {
        return this.f0a.get(i2).f();
    }

    public final boolean f() {
        h0.h hVar = this.f1b;
        if (hVar != null) {
            return hVar.i() || hVar.m();
        }
        Iterator<d0.d> it = this.f0a.iterator();
        while (it.hasNext()) {
            h0.h hVar2 = ((d0.f) it.next()).f552k;
            if (hVar2.i() || hVar2.m()) {
                return true;
            }
        }
        return false;
    }

    public final h0.h g() {
        h0.h hVar = this.f1b;
        return hVar != null ? hVar : ((d0.f) this.f0a.get(0)).f552k;
    }

    public final int h() {
        return this.f0a.size();
    }

    public final String[] i() {
        ArrayList<d0.d> arrayList = this.f0a;
        String[] strArr = new String[arrayList.size()];
        Iterator<d0.d> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next().f539a;
            i2++;
        }
        return strArr;
    }

    public final ArrayList j() {
        ArrayList<d0.d> arrayList = this.f0a;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<d0.d> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().f539a);
        }
        return arrayList2;
    }

    public final ArrayList k(h0.h hVar) {
        h0.h hVar2 = this.f1b;
        if (hVar2 != null) {
            return hVar2.equals(hVar) ? j() : new ArrayList(0);
        }
        ArrayList<d0.d> arrayList = this.f0a;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (d0.d dVar : arrayList) {
            if (hVar.equals(((d0.f) dVar).f552k)) {
                arrayList2.add(dVar.f539a);
            }
        }
        return arrayList2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        h0.h hVar = this.f1b;
        parcel.writeParcelable(hVar, i2);
        parcel.writeByte(this.f2c ? (byte) 1 : (byte) 0);
        ArrayList<d0.d> arrayList = this.f0a;
        parcel.writeInt(arrayList.size());
        if (hVar != null) {
            for (d0.d dVar : arrayList) {
                parcel.writeString(dVar.f539a);
                parcel.writeString(dVar.f540b);
                parcel.writeByte(dVar.d());
                if (dVar.f544f == 28) {
                    parcel.writeLong(0L);
                } else {
                    parcel.writeLong(dVar.f542d);
                }
            }
            return;
        }
        for (d0.d dVar2 : arrayList) {
            parcel.writeParcelable(((d0.f) dVar2).f552k, i2);
            parcel.writeString(dVar2.f539a);
            parcel.writeByte(dVar2.d());
            if (dVar2.f544f == 28) {
                parcel.writeLong(0L);
            } else {
                parcel.writeLong(dVar2.f542d);
            }
        }
    }

    public a(int[] iArr, d0.i iVar) throws Exception {
        if (iArr.length != 0 && iVar != null && iVar.size() >= 1) {
            this.f2c = false;
            if (iArr.length == 1) {
                d0.f fVarJ = iVar.j(iArr[0]);
                this.f1b = fVarJ.f552k;
                ArrayList<d0.d> arrayList = new ArrayList<>(1);
                this.f0a = arrayList;
                arrayList.add(fVarJ);
                return;
            }
            this.f1b = null;
            this.f0a = new ArrayList<>(iArr.length);
            for (int i2 : iArr) {
                this.f0a.add(iVar.j(i2));
            }
            return;
        }
        throw new Exception("Fill failed");
    }

    public a(ArrayList<String> arrayList) throws Exception {
        if (arrayList.size() >= 1) {
            this.f2c = false;
            if (arrayList.size() == 1 && !arrayList.get(0).startsWith("/uri/")) {
                String str = arrayList.get(0);
                this.f1b = new h0.h(c.A(str));
                ArrayList<d0.d> arrayList2 = new ArrayList<>(1);
                this.f0a = arrayList2;
                arrayList2.add(new d0.d(c.y(str), (byte) 0));
                return;
            }
            this.f1b = null;
            this.f0a = new ArrayList<>(arrayList.size());
            for (String str2 : arrayList) {
                this.f0a.add(new d0.f(new h0.h(c.A(str2)), c.y(str2), null, (byte) 0, 0L, 0L));
            }
            return;
        }
        throw new Exception("Fill failed");
    }

    public a(ArrayList arrayList, int i2) {
        this.f2c = false;
        this.f1b = null;
        this.f0a = new ArrayList<>(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            h0.h hVar = (h0.h) it.next();
            h0.h hVarF = hVar.f();
            if (hVarF != null) {
                this.f0a.add(new d0.f(hVarF, c.y(hVar.f1108c), null, (byte) 0, 0L, 0L));
            }
        }
    }

    public a(Parcel parcel) {
        h0.h hVar = (h0.h) parcel.readParcelable(h0.h.class.getClassLoader());
        this.f1b = hVar;
        int i2 = 0;
        this.f2c = parcel.readByte() != 0;
        int i3 = parcel.readInt();
        if (hVar != null) {
            this.f0a = new ArrayList<>(i3);
            while (i2 < i3) {
                this.f0a.add(new d0.d(parcel.readString(), parcel.readString(), parcel.readByte(), (byte) 0, 0L, parcel.readLong()));
                i2++;
            }
            return;
        }
        this.f0a = new ArrayList<>(i3);
        while (i2 < i3) {
            this.f0a.add(new d0.f((h0.h) parcel.readParcelable(h0.h.class.getClassLoader()), parcel.readString(), null, parcel.readByte(), 0L, parcel.readLong()));
            i2++;
        }
    }
}
