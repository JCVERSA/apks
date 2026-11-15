package defpackage;

import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyj;
import com.google.android.gms.internal.ads.zzgyk;
import java.util.List;

public final class wri implements aui {
    public final vri a;
    public int b;
    public int c;
    public int d = 0;

    public wri(vri vriVar) {
        zsi.c(vriVar, "input");
        this.a = vriVar;
        vriVar.c = this;
    }

    public static wri A(vri vriVar) {
        wri wriVar = vriVar.c;
        return wriVar != null ? wriVar : new wri(vriVar);
    }

    public static final void y(int i) throws zzgyk {
        if ((i & 3) != 0) {
            throw new zzgyk("Failed to parse the message.");
        }
    }

    public static final void z(int i) throws zzgyk {
        if ((i & 7) != 0) {
            throw new zzgyk("Failed to parse the message.");
        }
    }

    @Override
    public final void a(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    osiVar.zzi(vriVar.k());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.k());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Integer.valueOf(vriVar3.k()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.k()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void b(List list) throws zzgyk {
        int iP;
        if (list instanceof bsi) {
            ubc.a(list);
            int i = this.b & 7;
            if (i == 1) {
                this.a.g();
                throw null;
            }
            if (i != 2) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            vri vriVar = this.a;
            z(vriVar.q());
            vriVar.i();
            vriVar.g();
            throw null;
        }
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                vri vriVar2 = this.a;
                list.add(Double.valueOf(vriVar2.g()));
                if (vriVar2.a()) {
                    return;
                } else {
                    iP = vriVar2.p();
                }
            } while (iP == this.b);
            this.d = iP;
            return;
        }
        if (i2 != 2) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        vri vriVar3 = this.a;
        int iQ = vriVar3.q();
        z(iQ);
        int i3 = iQ + vriVar3.i();
        do {
            list.add(Double.valueOf(vriVar3.g()));
        } while (vriVar3.i() < i3);
    }

    @Override
    public final void c(List list) throws zzgyj {
        int iP;
        if ((this.b & 7) != 2) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        do {
            list.add(zzp());
            vri vriVar = this.a;
            if (vriVar.a()) {
                return;
            } else {
                iP = vriVar.p();
            }
        } while (iP == this.b);
        this.d = iP;
    }

    @Override
    public final void d(List list, cui cuiVar, esi esiVar) throws zzgyk {
        int iP;
        int i = this.b;
        if ((i & 7) != 2) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        do {
            Object objZze = cuiVar.zze();
            v(objZze, cuiVar, esiVar);
            cuiVar.a(objZze);
            list.add(objZze);
            vri vriVar = this.a;
            if (vriVar.a() || this.d != 0) {
                return;
            } else {
                iP = vriVar.p();
            }
        } while (iP == i);
        this.d = iP;
    }

    @Override
    public final void e(List list, cui cuiVar, esi esiVar) throws zzgyj {
        int iP;
        int i = this.b;
        if ((i & 7) != 3) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        do {
            Object objZze = cuiVar.zze();
            u(objZze, cuiVar, esiVar);
            cuiVar.a(objZze);
            list.add(objZze);
            vri vriVar = this.a;
            if (vriVar.a() || this.d != 0) {
                return;
            } else {
                iP = vriVar.p();
            }
        } while (iP == i);
        this.d = iP;
    }

    @Override
    public final void f(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i == 2) {
                vri vriVar = this.a;
                int iQ = vriVar.q();
                y(iQ);
                int i2 = vriVar.i() + iQ;
                do {
                    osiVar.zzi(vriVar.l());
                } while (vriVar.i() < i2);
                return;
            }
            if (i != 5) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.l());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 == 2) {
                vri vriVar3 = this.a;
                int iQ2 = vriVar3.q();
                y(iQ2);
                int i4 = vriVar3.i() + iQ2;
                do {
                    list.add(Integer.valueOf(vriVar3.l()));
                } while (vriVar3.i() < i4);
                return;
            }
            if (i3 != 5) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.l()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void g(List list) throws zzgyk {
        int iP;
        if (list instanceof ori) {
            ubc.a(list);
            int i = this.b & 7;
            if (i == 0) {
                this.a.b();
                throw null;
            }
            if (i != 2) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            vri vriVar = this.a;
            vriVar.q();
            vriVar.i();
            vriVar.b();
            throw null;
        }
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                vri vriVar2 = this.a;
                list.add(Boolean.valueOf(vriVar2.b()));
                if (vriVar2.a()) {
                    return;
                } else {
                    iP = vriVar2.p();
                }
            } while (iP == this.b);
            this.d = iP;
            return;
        }
        if (i2 != 2) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        vri vriVar3 = this.a;
        int i3 = vriVar3.i() + vriVar3.q();
        do {
            list.add(Boolean.valueOf(vriVar3.b()));
        } while (vriVar3.i() < i3);
        w(i3);
    }

    @Override
    public final void h(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    etiVar.i(vriVar.v());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                etiVar.i(vriVar2.v());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Long.valueOf(vriVar3.v()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Long.valueOf(vriVar4.v()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void i(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    etiVar.i(vriVar.u());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                etiVar.i(vriVar2.u());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Long.valueOf(vriVar3.u()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Long.valueOf(vriVar4.u()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void j(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    osiVar.zzi(vriVar.o());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.o());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Integer.valueOf(vriVar3.o()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.o()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void k(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    osiVar.zzi(vriVar.q());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.q());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Integer.valueOf(vriVar3.q()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.q()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void l(Object obj, cui cuiVar, esi esiVar) throws zzgyj {
        x(3);
        u(obj, cuiVar, esiVar);
    }

    @Override
    public final void m(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    etiVar.i(vriVar.s());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                etiVar.i(vriVar2.s());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Long.valueOf(vriVar3.s()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Long.valueOf(vriVar4.s()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void n(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int i2 = vriVar.i() + vriVar.q();
                do {
                    osiVar.zzi(vriVar.m());
                } while (vriVar.i() < i2);
                w(i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.m());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int i4 = vriVar3.i() + vriVar3.q();
                do {
                    list.add(Integer.valueOf(vriVar3.m()));
                } while (vriVar3.i() < i4);
                w(i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.m()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void o(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            int i = this.b & 7;
            if (i != 1) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int iQ = vriVar.q();
                z(iQ);
                int i2 = iQ + vriVar.i();
                do {
                    etiVar.i(vriVar.t());
                } while (vriVar.i() < i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                etiVar.i(vriVar2.t());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int iQ2 = vriVar3.q();
                z(iQ2);
                int i4 = iQ2 + vriVar3.i();
                do {
                    list.add(Long.valueOf(vriVar3.t()));
                } while (vriVar3.i() < i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Long.valueOf(vriVar4.t()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void p(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            int i = this.b & 7;
            if (i == 2) {
                vri vriVar = this.a;
                int iQ = vriVar.q();
                y(iQ);
                int i2 = vriVar.i() + iQ;
                do {
                    osiVar.zzi(vriVar.n());
                } while (vriVar.i() < i2);
                return;
            }
            if (i != 5) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            do {
                vri vriVar2 = this.a;
                osiVar.zzi(vriVar2.n());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 == 2) {
                vri vriVar3 = this.a;
                int iQ2 = vriVar3.q();
                y(iQ2);
                int i4 = vriVar3.i() + iQ2;
                do {
                    list.add(Integer.valueOf(vriVar3.n()));
                } while (vriVar3.i() < i4);
                return;
            }
            if (i3 != 5) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            do {
                vri vriVar4 = this.a;
                list.add(Integer.valueOf(vriVar4.n()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void q(Object obj, cui cuiVar, esi esiVar) throws zzgyk {
        x(2);
        v(obj, cuiVar, esiVar);
    }

    @Override
    public final void r(List list) throws zzgyk {
        int iP;
        int iP2;
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            int i = this.b & 7;
            if (i != 1) {
                if (i != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar = this.a;
                int iQ = vriVar.q();
                z(iQ);
                int i2 = iQ + vriVar.i();
                do {
                    etiVar.i(vriVar.r());
                } while (vriVar.i() < i2);
                return;
            }
            do {
                vri vriVar2 = this.a;
                etiVar.i(vriVar2.r());
                if (vriVar2.a()) {
                    return;
                } else {
                    iP2 = vriVar2.p();
                }
            } while (iP2 == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                vri vriVar3 = this.a;
                int iQ2 = vriVar3.q();
                z(iQ2);
                int i4 = iQ2 + vriVar3.i();
                do {
                    list.add(Long.valueOf(vriVar3.r()));
                } while (vriVar3.i() < i4);
                return;
            }
            do {
                vri vriVar4 = this.a;
                list.add(Long.valueOf(vriVar4.r()));
                if (vriVar4.a()) {
                    return;
                } else {
                    iP = vriVar4.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    @Override
    public final void s(List list) throws zzgyk {
        int iP;
        if (list instanceof isi) {
            ubc.a(list);
            int i = this.b & 7;
            if (i != 2) {
                if (i != 5) {
                    throw new zzgyj("Protocol message tag had invalid wire type.");
                }
                this.a.h();
                throw null;
            }
            vri vriVar = this.a;
            y(vriVar.q());
            vriVar.i();
            vriVar.h();
            throw null;
        }
        int i2 = this.b & 7;
        if (i2 == 2) {
            vri vriVar2 = this.a;
            int iQ = vriVar2.q();
            y(iQ);
            int i3 = vriVar2.i() + iQ;
            do {
                list.add(Float.valueOf(vriVar2.h()));
            } while (vriVar2.i() < i3);
            return;
        }
        if (i2 != 5) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        do {
            vri vriVar3 = this.a;
            list.add(Float.valueOf(vriVar3.h()));
            if (vriVar3.a()) {
                return;
            } else {
                iP = vriVar3.p();
            }
        } while (iP == this.b);
        this.d = iP;
    }

    public final void t(List list, boolean z) throws zzgyj {
        int iP;
        int iP2;
        if ((this.b & 7) != 2) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
        if ((list instanceof bti) && !z) {
            bti btiVar = (bti) list;
            do {
                zzp();
                btiVar.zzb();
                vri vriVar = this.a;
                if (vriVar.a()) {
                    return;
                } else {
                    iP2 = vriVar.p();
                }
            } while (iP2 == this.b);
        } else {
            do {
                list.add(z ? zzs() : zzr());
                vri vriVar2 = this.a;
                if (vriVar2.a()) {
                    return;
                } else {
                    iP = vriVar2.p();
                }
            } while (iP == this.b);
            iP2 = iP;
        }
        this.d = iP2;
    }

    public final void u(Object obj, cui cuiVar, esi esiVar) {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            cuiVar.e(obj, this, esiVar);
            if (this.b != this.c) {
                throw new zzgyk("Failed to parse the message.");
            }
            this.c = i;
        } catch (Throwable th) {
            this.c = i;
            throw th;
        }
    }

    public final void v(Object obj, cui cuiVar, esi esiVar) throws zzgyk {
        vri vriVar = this.a;
        int iQ = vriVar.q();
        if (vriVar.a >= vriVar.b) {
            throw new zzgyk("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iJ = vriVar.j(iQ);
        vriVar.a++;
        cuiVar.e(obj, this, esiVar);
        vriVar.z(0);
        vriVar.a--;
        vriVar.A(iJ);
    }

    public final void w(int i) throws zzgyk {
        if (this.a.i() != i) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final void x(int i) throws zzgyj {
        if ((this.b & 7) != i) {
            throw new zzgyj("Protocol message tag had invalid wire type.");
        }
    }

    @Override
    public final boolean zzN() throws zzgyj {
        x(0);
        return this.a.b();
    }

    @Override
    public final double zza() throws zzgyj {
        x(1);
        return this.a.g();
    }

    @Override
    public final float zzb() throws zzgyj {
        x(5);
        return this.a.h();
    }

    @Override
    public final int zzc() {
        int iP = this.d;
        if (iP != 0) {
            this.b = iP;
            this.d = 0;
        } else {
            iP = this.a.p();
            this.b = iP;
        }
        if (iP == 0 || iP == this.c) {
            return Integer.MAX_VALUE;
        }
        return iP >>> 3;
    }

    @Override
    public final int zzd() {
        return this.b;
    }

    @Override
    public final int zze() throws zzgyj {
        x(0);
        return this.a.k();
    }

    @Override
    public final int zzf() throws zzgyj {
        x(5);
        return this.a.l();
    }

    @Override
    public final int zzg() throws zzgyj {
        x(0);
        return this.a.m();
    }

    @Override
    public final int zzh() throws zzgyj {
        x(5);
        return this.a.n();
    }

    @Override
    public final int zzi() throws zzgyj {
        x(0);
        return this.a.o();
    }

    @Override
    public final int zzj() throws zzgyj {
        x(0);
        return this.a.q();
    }

    @Override
    public final long zzk() throws zzgyj {
        x(1);
        return this.a.r();
    }

    @Override
    public final long zzl() throws zzgyj {
        x(0);
        return this.a.s();
    }

    @Override
    public final long zzm() throws zzgyj {
        x(1);
        return this.a.t();
    }

    @Override
    public final long zzn() throws zzgyj {
        x(0);
        return this.a.u();
    }

    @Override
    public final long zzo() throws zzgyj {
        x(0);
        return this.a.v();
    }

    @Override
    public final zzgwn zzp() throws zzgyj {
        x(2);
        return this.a.w();
    }

    @Override
    public final String zzr() throws zzgyj {
        x(2);
        return this.a.x();
    }

    @Override
    public final String zzs() throws zzgyj {
        x(2);
        return this.a.y();
    }
}
