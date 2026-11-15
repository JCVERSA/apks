package defpackage;

import com.google.android.gms.internal.play_billing.zzip;

public abstract class fhi extends hkh {
    public final kli b;
    public kli c;

    public fhi(kli kliVar) {
        this.b = kliVar;
        if (kliVar.h()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.c = kliVar.r();
    }

    public static void c(Object obj, Object obj2) {
        c1j.a().b(obj.getClass()).b(obj, obj2);
    }

    public final fhi clone() {
        fhi fhiVar = (fhi) this.b.l(5, null, null);
        fhiVar.c = zzk();
        return fhiVar;
    }

    public final fhi e(kli kliVar) {
        kli kliVar2 = this.b;
        if (!kliVar2.getClass().isInstance(kliVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        if (!kliVar2.equals(kliVar)) {
            if (!this.c.h()) {
                i();
            }
            c(this.c, kliVar);
        }
        return this;
    }

    public final kli f() {
        kli kliVarZzk = zzk();
        if (kliVarZzk.n()) {
            return kliVarZzk;
        }
        throw new zzip(kliVarZzk);
    }

    @Override
    public kli zzk() {
        if (!this.c.h()) {
            return this.c;
        }
        this.c.x();
        return this.c;
    }

    public final void h() {
        if (this.c.h()) {
            return;
        }
        i();
    }

    public void i() {
        kli kliVarR = this.b.r();
        c(kliVarR, this.c);
        this.c = kliVarR;
    }
}
