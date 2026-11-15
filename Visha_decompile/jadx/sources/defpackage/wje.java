package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import java.util.Collections;

public final class wje implements lje {
    public final String a;
    public final int b;
    public final String c = MimeTypes.VIDEO_MP2T;
    public final u4h d;
    public final p3h e;
    public rae f;
    public String g;
    public erj h;
    public int i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public long s;
    public int t;
    public long u;
    public int v;
    public String w;

    public wje(String str, int i, String str2) {
        this.a = str;
        this.b = i;
        u4h u4hVar = new u4h(1024);
        this.d = u4hVar;
        byte[] bArrN = u4hVar.n();
        this.e = new p3h(bArrN, bArrN.length);
        this.m = C.TIME_UNSET;
    }

    public static long e(p3h p3hVar) {
        return p3hVar.d((p3hVar.d(2) + 1) * 8);
    }

    @Override
    public final void a(u4h u4hVar) throws zzaz {
        int i;
        int i2;
        int iD;
        boolean zP;
        n7g.b(this.f);
        while (u4hVar.u() > 0) {
            int i3 = this.i;
            if (i3 != 0) {
                if (i3 == 1) {
                    int iG = u4hVar.G();
                    if ((iG & 224) == 224) {
                        this.l = iG;
                        this.i = 2;
                    } else if (iG != 86) {
                        this.i = 0;
                    }
                } else if (i3 != 2) {
                    int iMin = Math.min(u4hVar.u(), this.k - this.j);
                    p3h p3hVar = this.e;
                    u4hVar.h(p3hVar.a, this.j, iMin);
                    int i4 = this.j + iMin;
                    this.j = i4;
                    if (i4 == this.k) {
                        p3hVar.l(0);
                        if (p3hVar.p()) {
                            if (this.n) {
                            }
                            this.i = 0;
                        } else {
                            this.n = true;
                            int iD2 = p3hVar.d(1);
                            if (iD2 == 1) {
                                iD = p3hVar.d(1);
                                i2 = 1;
                            } else {
                                i2 = iD2;
                                iD = 0;
                            }
                            this.o = iD;
                            if (iD != 0) {
                                throw zzaz.zza(null, null);
                            }
                            if (i2 == 1) {
                                e(p3hVar);
                                i2 = 1;
                            }
                            if (!p3hVar.p()) {
                                throw zzaz.zza(null, null);
                            }
                            this.p = p3hVar.d(6);
                            int iD3 = p3hVar.d(4);
                            int iD4 = p3hVar.d(3);
                            if (iD3 != 0 || iD4 != 0) {
                                throw zzaz.zza(null, null);
                            }
                            if (i2 == 0) {
                                int iC = p3hVar.c();
                                int iD5 = d(p3hVar);
                                p3hVar.l(iC);
                                byte[] bArr = new byte[(iD5 + 7) / 8];
                                p3hVar.h(bArr, 0, iD5);
                                gpj gpjVar = new gpj();
                                gpjVar.o(this.g);
                                gpjVar.e(this.c);
                                gpjVar.E("audio/mp4a-latm");
                                gpjVar.c(this.w);
                                gpjVar.b(this.v);
                                gpjVar.F(this.t);
                                gpjVar.p(Collections.singletonList(bArr));
                                gpjVar.s(this.a);
                                gpjVar.C(this.b);
                                erj erjVarK = gpjVar.K();
                                if (!erjVarK.equals(this.h)) {
                                    this.h = erjVarK;
                                    this.u = 1024000000 / ((long) erjVarK.F);
                                    this.f.f(erjVarK);
                                }
                            } else {
                                p3hVar.n(((int) e(p3hVar)) - d(p3hVar));
                            }
                            int iD6 = p3hVar.d(3);
                            this.q = iD6;
                            if (iD6 == 0) {
                                p3hVar.n(8);
                            } else if (iD6 == 1) {
                                p3hVar.n(9);
                            } else if (iD6 == 3 || iD6 == 4 || iD6 == 5) {
                                p3hVar.n(6);
                            } else {
                                if (iD6 != 6 && iD6 != 7) {
                                    throw new IllegalStateException();
                                }
                                p3hVar.n(1);
                            }
                            boolean zP2 = p3hVar.p();
                            this.r = zP2;
                            this.s = 0L;
                            if (zP2) {
                                if (i2 != 1) {
                                    do {
                                        zP = p3hVar.p();
                                        this.s = (this.s << 8) + ((long) p3hVar.d(8));
                                    } while (zP);
                                } else {
                                    this.s = e(p3hVar);
                                }
                            }
                            if (p3hVar.p()) {
                                p3hVar.n(8);
                            }
                        }
                        if (this.o != 0) {
                            throw zzaz.zza(null, null);
                        }
                        if (this.p != 0) {
                            throw zzaz.zza(null, null);
                        }
                        if (this.q != 0) {
                            throw zzaz.zza(null, null);
                        }
                        int i5 = 0;
                        while (true) {
                            int iD7 = p3hVar.d(8);
                            i = i5 + iD7;
                            if (iD7 != 255) {
                                break;
                            } else {
                                i5 = i;
                            }
                        }
                        int iC2 = p3hVar.c();
                        if ((iC2 & 7) == 0) {
                            this.d.l(iC2 >> 3);
                        } else {
                            u4h u4hVar2 = this.d;
                            p3hVar.h(u4hVar2.n(), 0, i * 8);
                            u4hVar2.l(0);
                        }
                        this.f.d(this.d, i);
                        n7g.f(this.m != C.TIME_UNSET);
                        this.f.g(this.m, 1, i, 0, null);
                        this.m += this.u;
                        if (this.r) {
                            p3hVar.n((int) this.s);
                        }
                        this.i = 0;
                    } else {
                        continue;
                    }
                } else {
                    int iG2 = ((this.l & (-225)) << 8) | u4hVar.G();
                    this.k = iG2;
                    u4h u4hVar3 = this.d;
                    if (iG2 > u4hVar3.n().length) {
                        u4hVar3.i(iG2);
                        p3h p3hVar2 = this.e;
                        byte[] bArrN = u4hVar3.n();
                        p3hVar2.k(bArrN, bArrN.length);
                    }
                    this.j = 0;
                    this.i = 3;
                }
            } else if (u4hVar.G() == 86) {
                this.i = 1;
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.m = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.f = f9eVar.j(cleVar.a(), 1);
        this.g = cleVar.b();
    }

    public final int d(p3h p3hVar) throws zzaz {
        int iA = p3hVar.a();
        n7e n7eVarB = p7e.b(p3hVar, true);
        this.w = n7eVarB.c;
        this.t = n7eVarB.a;
        this.v = n7eVarB.b;
        return iA - p3hVar.a();
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.i = 0;
        this.m = C.TIME_UNSET;
        this.n = false;
    }
}
