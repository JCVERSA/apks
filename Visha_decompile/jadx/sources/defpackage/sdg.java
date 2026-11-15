package defpackage;

import androidx.collection.SimpleArrayMap;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbmc;
import java.util.ArrayList;

public final class sdg {
    public static final sdg h = new sdg(new mdg());
    public final zzbgu a;
    public final zzbgr b;
    public final zzbhh c;
    public final zzbhe d;
    public final zzbmc e;
    public final SimpleArrayMap f;
    public final SimpleArrayMap g;

    public final zzbgr a() {
        return this.b;
    }

    public final zzbgu b() {
        return this.a;
    }

    public final zzbgx c(String str) {
        return (zzbgx) this.g.get(str);
    }

    public final zzbha d(String str) {
        if (str == null) {
            return null;
        }
        return (zzbha) this.f.get(str);
    }

    public final zzbhe e() {
        return this.d;
    }

    public final zzbhh f() {
        return this.c;
    }

    public final zzbmc g() {
        return this.e;
    }

    public final ArrayList h() {
        SimpleArrayMap simpleArrayMap = this.f;
        ArrayList arrayList = new ArrayList(simpleArrayMap.getSize());
        for (int i = 0; i < simpleArrayMap.getSize(); i++) {
            arrayList.add((String) simpleArrayMap.keyAt(i));
        }
        return arrayList;
    }

    public final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.f.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public sdg(mdg mdgVar) {
        this.a = mdgVar.a;
        this.b = mdgVar.b;
        this.c = mdgVar.c;
        this.f = new SimpleArrayMap(mdgVar.f);
        this.g = new SimpleArrayMap(mdgVar.g);
        this.d = mdgVar.d;
        this.e = mdgVar.e;
    }
}
