package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class bce implements c9e {
    public f9e b;
    public int c;
    public int d;
    public int e;
    public jde g;
    public d9e h;
    public ece i;
    public mfe j;
    public final u4h a = new u4h(6);
    public long f = -1;

    private final int a(d9e d9eVar) {
        u4h u4hVar = this.a;
        u4hVar.i(2);
        ((m8e) d9eVar).e(u4hVar.n(), 0, 2, false);
        return u4hVar.K();
    }

    private final void c() {
        f9e f9eVar = this.b;
        f9eVar.getClass();
        f9eVar.zzG();
        this.b.i(new jae(C.TIME_UNSET, 0L));
        this.c = 6;
    }

    @Override
    public final void b(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            mfe mfeVar = this.j;
            mfeVar.getClass();
            mfeVar.b(j, j2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010b  */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        int i;
        String strS;
        dce dceVarA;
        jde jdeVar;
        long j;
        int i2 = this.c;
        long j2 = -1;
        if (i2 == 0) {
            u4h u4hVar = this.a;
            u4hVar.i(2);
            d9eVar.h(u4hVar.n(), 0, 2);
            int iK = u4hVar.K();
            this.d = iK;
            if (iK == 65498) {
                if (this.f != -1) {
                    this.c = 4;
                    return 0;
                }
                c();
                return 0;
            }
            if ((iK >= 65488 && iK <= 65497) || iK == 65281) {
                return 0;
            }
            this.c = 1;
            return 0;
        }
        if (i2 == 1) {
            u4h u4hVar2 = this.a;
            u4hVar2.i(2);
            d9eVar.h(u4hVar2.n(), 0, 2);
            this.e = u4hVar2.K() - 2;
            this.c = 2;
            return 0;
        }
        if (i2 != 2) {
            if (i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.i == null || d9eVar != this.h) {
                    this.h = d9eVar;
                    this.i = new ece(d9eVar, this.f);
                }
                mfe mfeVar = this.j;
                mfeVar.getClass();
                int iD = mfeVar.d(this.i, y9eVar);
                if (iD == 1) {
                    y9eVar.a += this.f;
                }
                return iD;
            }
            long jZzf = d9eVar.zzf();
            long j3 = this.f;
            if (jZzf != j3) {
                y9eVar.a = j3;
                return 1;
            }
            if (d9eVar.e(this.a.n(), 0, 1, true)) {
                d9eVar.zzj();
                if (this.j == null) {
                    this.j = new mfe(vge.a, 8);
                }
                ece eceVar = new ece(d9eVar, this.f);
                this.i = eceVar;
                if (this.j.e(eceVar)) {
                    mfe mfeVar2 = this.j;
                    long j4 = this.f;
                    f9e f9eVar = this.b;
                    f9eVar.getClass();
                    mfeVar2.f(new gce(j4, f9eVar));
                    jde jdeVar2 = this.g;
                    jdeVar2.getClass();
                    f9e f9eVar2 = this.b;
                    f9eVar2.getClass();
                    rae raeVarJ = f9eVar2.j(1024, 4);
                    gpj gpjVar = new gpj();
                    gpjVar.e("image/jpeg");
                    gpjVar.w(new hre(C.TIME_UNSET, jdeVar2));
                    raeVarJ.f(gpjVar.K());
                    this.c = 5;
                } else {
                    c();
                }
            } else {
                c();
            }
            return 0;
        }
        if (this.d == 65505) {
            u4h u4hVar3 = new u4h(this.e);
            d9eVar.h(u4hVar3.n(), 0, this.e);
            if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(u4hVar3.S((char) 0)) && (strS = u4hVar3.S((char) 0)) != null) {
                long jZzd = d9eVar.zzd();
                if (jZzd == -1 || (dceVarA = hce.a(strS)) == null) {
                    jdeVar = null;
                } else {
                    List list = dceVarA.b;
                    if (list.size() < 2) {
                        jdeVar = null;
                    } else {
                        int size = list.size() - 1;
                        boolean z = false;
                        long j5 = -1;
                        long j6 = -1;
                        long j7 = -1;
                        long j8 = -1;
                        while (size >= 0) {
                            cce cceVar = (cce) list.get(size);
                            boolean zEquals = MimeTypes.VIDEO_MP4.equals(cceVar.a) | z;
                            if (size == 0) {
                                jZzd -= cceVar.c;
                                j = 0;
                            } else {
                                j = jZzd - cceVar.b;
                            }
                            long j9 = jZzd;
                            jZzd = j;
                            if (!zEquals || jZzd == j9) {
                                z = zEquals;
                            } else {
                                j8 = j9 - jZzd;
                                j7 = jZzd;
                                z = false;
                            }
                            if (size == 0) {
                                j6 = j9;
                            }
                            if (size == 0) {
                                j5 = jZzd;
                            }
                            size--;
                            j2 = -1;
                        }
                        long j10 = j2;
                        if (j7 == j10 || j8 == j10 || j5 == j10 || j6 == j10) {
                            jdeVar = null;
                        } else {
                            jdeVar = new jde(j5, j6, dceVarA.a, j7, j8);
                        }
                    }
                }
                this.g = jdeVar;
                if (jdeVar != null) {
                    this.f = jdeVar.d;
                }
            } else {
                i = 0;
            }
            this.c = i;
            return i;
        }
        d9eVar.f(this.e);
        i = 0;
        this.c = i;
        return i;
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        if (a(d9eVar) != 65496) {
            return false;
        }
        int iA = a(d9eVar);
        this.d = iA;
        if (iA == 65504) {
            u4h u4hVar = this.a;
            u4hVar.i(2);
            m8e m8eVar = (m8e) d9eVar;
            m8eVar.e(u4hVar.n(), 0, 2, false);
            m8eVar.k(u4hVar.K() - 2, false);
            iA = a(d9eVar);
            this.d = iA;
        }
        if (iA == 65505) {
            m8e m8eVar2 = (m8e) d9eVar;
            m8eVar2.k(2, false);
            u4h u4hVar2 = this.a;
            u4hVar2.i(6);
            m8eVar2.e(u4hVar2.n(), 0, 6, false);
            if (u4hVar2.O() == 1165519206 && u4hVar2.K() == 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.b = f9eVar;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
