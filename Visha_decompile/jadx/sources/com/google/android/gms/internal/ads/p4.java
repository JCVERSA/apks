package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.i3;
import com.google.android.gms.internal.ads.q0;
import com.google.android.gms.internal.ads.y2;
import defpackage.akh;
import defpackage.b1g;
import defpackage.d0g;
import defpackage.nzf;
import defpackage.p2g;
import defpackage.u5g;
import defpackage.vmh;

public final class p4 implements p2g, b1g, nzf, d0g, zza, u5g {
    public final o0 b;
    public boolean c = false;

    public p4(o0 o0Var, akh akhVar) {
        this.b = o0Var;
        o0Var.c(2);
        if (akhVar != null) {
            o0Var.c(1101);
        }
    }

    @Override
    public final void A(zze zzeVar) {
        switch (zzeVar.zza) {
            case 1:
                this.b.c(101);
                break;
            case 2:
                this.b.c(102);
                break;
            case 3:
                this.b.c(5);
                break;
            case 4:
                this.b.c(103);
                break;
            case 5:
                this.b.c(104);
                break;
            case 6:
                this.b.c(105);
                break;
            case 7:
                this.b.c(106);
                break;
            default:
                this.b.c(4);
                break;
        }
    }

    @Override
    public final void b(boolean z) {
        this.b.c(true != z ? 1108 : 1107);
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
    }

    @Override
    public final synchronized void onAdClicked() {
        if (this.c) {
            this.b.c(8);
        } else {
            this.b.c(7);
            this.c = true;
        }
    }

    @Override
    public final void t(final g2 g2Var) {
        n0 n0Var = new n0() {
            @Override
            public final void a(i3 i3Var) {
                i3Var.w(g2Var);
            }
        };
        o0 o0Var = this.b;
        o0Var.b(n0Var);
        o0Var.c(1102);
    }

    @Override
    public final void u(final g2 g2Var) {
        n0 n0Var = new n0() {
            @Override
            public final void a(i3 i3Var) {
                i3Var.w(g2Var);
            }
        };
        o0 o0Var = this.b;
        o0Var.b(n0Var);
        o0Var.c(1103);
    }

    @Override
    public final void w(final vmh vmhVar) {
        this.b.b(new n0() {
            @Override
            public final void a(i3 i3Var) {
                q0 q0Var = (q0) i3Var.C().H();
                y2 y2Var = (y2) i3Var.C().d0().H();
                y2Var.v(vmhVar.b.b.b);
                q0Var.w(y2Var);
                i3Var.v(q0Var);
            }
        });
    }

    @Override
    public final void z(final g2 g2Var) {
        n0 n0Var = new n0() {
            @Override
            public final void a(i3 i3Var) {
                i3Var.w(g2Var);
            }
        };
        o0 o0Var = this.b;
        o0Var.b(n0Var);
        o0Var.c(1104);
    }

    @Override
    public final void zzh() {
        this.b.c(1109);
    }

    @Override
    public final void zzn(boolean z) {
        this.b.c(true != z ? 1106 : 1105);
    }

    @Override
    public final synchronized void zzs() {
        this.b.c(6);
    }

    @Override
    public final void zzt() {
        this.b.c(3);
    }
}
