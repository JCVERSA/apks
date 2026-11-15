package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzblt;
import java.util.ArrayList;

public final class cnh {
    public zzm a;
    public zzr b;
    public String c;
    public zzfw d;
    public boolean e;
    public ArrayList f;
    public ArrayList g;
    public zzbfi h;
    public zzx i;
    public AdManagerAdViewOptions j;
    public PublisherAdViewOptions k;
    public zzcl l;
    public zzblt n;
    public k4h r;
    public Bundle t;
    public zzcp u;
    public int m = 1;
    public final pmh o = new pmh();
    public boolean p = false;
    public boolean q = false;
    public boolean s = false;

    public final zzm B() {
        return this.a;
    }

    public final zzr D() {
        return this.b;
    }

    public final pmh L() {
        return this.o;
    }

    public final cnh M(enh enhVar) {
        this.o.a(enhVar.o.a);
        this.a = enhVar.d;
        this.b = enhVar.e;
        this.u = enhVar.t;
        this.c = enhVar.f;
        this.d = enhVar.a;
        this.f = enhVar.g;
        this.g = enhVar.h;
        this.h = enhVar.i;
        this.i = enhVar.j;
        N(enhVar.l);
        g(enhVar.m);
        this.p = enhVar.p;
        this.q = enhVar.q;
        this.r = enhVar.c;
        this.s = enhVar.r;
        this.t = enhVar.s;
        return this;
    }

    public final cnh N(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.j = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.e = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final cnh O(zzr zzrVar) {
        this.b = zzrVar;
        return this;
    }

    public final cnh P(String str) {
        this.c = str;
        return this;
    }

    public final cnh Q(zzx zzxVar) {
        this.i = zzxVar;
        return this;
    }

    public final cnh R(k4h k4hVar) {
        this.r = k4hVar;
        return this;
    }

    public final cnh S(zzblt zzbltVar) {
        this.n = zzbltVar;
        this.d = new zzfw(false, true, false);
        return this;
    }

    public final cnh T(boolean z) {
        this.p = z;
        return this;
    }

    public final cnh U(boolean z) {
        this.q = z;
        return this;
    }

    public final cnh V(boolean z) {
        this.s = true;
        return this;
    }

    public final cnh a(Bundle bundle) {
        this.t = bundle;
        return this;
    }

    public final cnh b(boolean z) {
        this.e = z;
        return this;
    }

    public final cnh c(int i) {
        this.m = i;
        return this;
    }

    public final cnh d(zzbfi zzbfiVar) {
        this.h = zzbfiVar;
        return this;
    }

    public final cnh e(ArrayList arrayList) {
        this.f = arrayList;
        return this;
    }

    public final cnh f(ArrayList arrayList) {
        this.g = arrayList;
        return this;
    }

    public final cnh g(PublisherAdViewOptions publisherAdViewOptions) {
        this.k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.e = publisherAdViewOptions.zzb();
            this.l = publisherAdViewOptions.zza();
        }
        return this;
    }

    public final cnh h(zzm zzmVar) {
        this.a = zzmVar;
        return this;
    }

    public final cnh i(zzfw zzfwVar) {
        this.d = zzfwVar;
        return this;
    }

    public final enh j() {
        wd8.m(this.c, "ad unit must not be null");
        wd8.m(this.b, "ad size must not be null");
        wd8.m(this.a, "ad request must not be null");
        return new enh(this, null);
    }

    public final String l() {
        return this.c;
    }

    public final boolean s() {
        return this.p;
    }

    public final boolean t() {
        return this.q;
    }

    public final cnh v(zzcp zzcpVar) {
        this.u = zzcpVar;
        return this;
    }
}
