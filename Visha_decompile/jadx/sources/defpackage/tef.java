package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public final class tef implements ave {
    public final zzg b;
    public final ref d;
    public final Object a = new Object();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public boolean g = false;
    public final sef c = new sef();

    public tef(String str, zzg zzgVar) {
        this.d = new ref(str, zzgVar);
        this.b = zzgVar;
    }

    public final int a() {
        int iA;
        synchronized (this.a) {
            iA = this.d.a();
        }
        return iA;
    }

    public final hef b(fy0 fy0Var, String str) {
        return new hef(fy0Var, this, this.c.a(), str);
    }

    public final String c() {
        return this.c.b();
    }

    public final void d(hef hefVar) {
        synchronized (this.a) {
            this.e.add(hefVar);
        }
    }

    public final void e() {
        synchronized (this.a) {
            this.d.c();
        }
    }

    public final void f() {
        synchronized (this.a) {
            this.d.d();
        }
    }

    public final void g() {
        synchronized (this.a) {
            this.d.e();
        }
    }

    public final void h() {
        synchronized (this.a) {
            this.d.f();
        }
    }

    public final void i(zzm zzmVar, long j) {
        synchronized (this.a) {
            this.d.g(zzmVar, j);
        }
    }

    public final void j() {
        synchronized (this.a) {
            this.d.h();
        }
    }

    public final void k(HashSet hashSet) {
        synchronized (this.a) {
            this.e.addAll(hashSet);
        }
    }

    public final boolean l() {
        return this.g;
    }

    public final Bundle m(Context context, moh mohVar) {
        HashSet hashSet = new HashSet();
        synchronized (this.a) {
            HashSet hashSet2 = this.e;
            hashSet.addAll(hashSet2);
            hashSet2.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.d.b(context, this.c.b()));
        Bundle bundle2 = new Bundle();
        Iterator it = this.f.iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((hef) it2.next()).a());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        mohVar.b(hashSet);
        return bundle;
    }

    @Override
    public final void zza(boolean z) {
        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
        if (!z) {
            zzg zzgVar = this.b;
            zzgVar.zzr(jCurrentTimeMillis);
            zzgVar.zzG(this.d.d);
            return;
        }
        zzg zzgVar2 = this.b;
        if (jCurrentTimeMillis - zzgVar2.zzd() > ((Long) zzbd.zzc().b(cye.h1)).longValue()) {
            this.d.d = -1;
        } else {
            this.d.d = zzgVar2.zzc();
        }
        this.g = true;
    }
}
