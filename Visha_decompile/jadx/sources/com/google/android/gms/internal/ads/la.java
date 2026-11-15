package com.google.android.gms.internal.ads;

import defpackage.aui;
import defpackage.bvi;
import defpackage.cui;
import defpackage.esi;
import defpackage.fsi;
import defpackage.mri;
import defpackage.pui;
import defpackage.qui;
import defpackage.rti;
import defpackage.ubc;

public final class la implements cui {
    public final rti a;
    public final pui b;
    public final boolean c = false;
    public final fsi d;

    public la(pui puiVar, fsi fsiVar, rti rtiVar) {
        this.b = puiVar;
        this.d = fsiVar;
        this.a = rtiVar;
    }

    public static la h(pui puiVar, fsi fsiVar, rti rtiVar) {
        return new la(puiVar, fsiVar, rtiVar);
    }

    @Override
    public final void a(Object obj) {
        this.b.i(obj);
        this.d.a(obj);
    }

    @Override
    public final void b(Object obj, Object obj2) {
        pa.A(this.b, obj, obj2);
        if (this.c) {
            pa.z(this.d, obj, obj2);
        }
    }

    @Override
    public final void c(Object obj, bvi bviVar) {
        ubc.a(obj);
        throw null;
    }

    @Override
    public final void d(Object obj, byte[] bArr, int i, int i2, mri mriVar) {
        ia iaVar = (ia) obj;
        if (iaVar.zzt == qui.c()) {
            iaVar.zzt = qui.f();
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final void e(Object obj, aui auiVar, esi esiVar) {
        this.b.a(obj);
        ubc.a(obj);
        throw null;
    }

    @Override
    public final boolean f(Object obj, Object obj2) {
        if (!((ia) obj).zzt.equals(((ia) obj2).zzt)) {
            return false;
        }
        if (!this.c) {
            return true;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final boolean g(Object obj) {
        ubc.a(obj);
        throw null;
    }

    @Override
    public final int zza(Object obj) {
        int iB = ((ia) obj).zzt.b();
        if (!this.c) {
            return iB;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final int zzb(Object obj) {
        int iHashCode = ((ia) obj).zzt.hashCode();
        if (!this.c) {
            return iHashCode;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final Object zze() {
        rti rtiVar = this.a;
        return rtiVar instanceof ia ? ((ia) rtiVar).K() : rtiVar.e().D();
    }
}
