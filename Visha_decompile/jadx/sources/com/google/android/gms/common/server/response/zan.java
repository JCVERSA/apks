package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.g2e;
import defpackage.wd8;
import defpackage.z09;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new g2e();
    final int zaa;
    private final HashMap zab;
    private final String zac;

    public zan(int i, ArrayList arrayList, String str) {
        this.zaa = i;
        HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = (zal) arrayList.get(i2);
            String str2 = zalVar.zab;
            HashMap map2 = new HashMap();
            int size2 = ((ArrayList) wd8.l(zalVar.zac)).size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = (zam) zalVar.zac.get(i3);
                map2.put(zamVar.zab, zamVar.zac);
            }
            map.put(str2, map2);
        }
        this.zab = map;
        this.zac = (String) wd8.l(str);
        zad();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zab.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map = (Map) this.zab.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zaa);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zal(str, (Map) this.zab.get(str)));
        }
        z09.H(parcel, 2, arrayList, false);
        z09.D(parcel, 3, this.zac, false);
        z09.b(parcel, iA);
    }

    public final String zaa() {
        return this.zac;
    }

    @Nullable
    public final Map zab(String str) {
        return (Map) this.zab.get(str);
    }

    public final void zac() {
        for (String str : this.zab.keySet()) {
            Map map = (Map) this.zab.get(str);
            HashMap map2 = new HashMap();
            for (String str2 : map.keySet()) {
                map2.put(str2, ((FastJsonResponse.Field) map.get(str2)).zab());
            }
            this.zab.put(str, map2);
        }
    }

    public final void zad() {
        Iterator it = this.zab.keySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) this.zab.get((String) it.next());
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse.Field) map.get((String) it2.next())).zai(this);
            }
        }
    }

    public final void zae(Class cls, Map map) {
        this.zab.put((String) wd8.l(cls.getCanonicalName()), map);
    }

    public final boolean zaf(Class cls) {
        return this.zab.containsKey(wd8.l(cls.getCanonicalName()));
    }

    public zan(Class cls) {
        this.zaa = 1;
        this.zab = new HashMap();
        this.zac = (String) wd8.l(cls.getCanonicalName());
    }
}
