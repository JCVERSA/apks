package defpackage;

import android.net.Uri;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;

public final class boj implements vrj, qmj {
    public final Uri b;
    public final nwi c;
    public final znj d;
    public final f9e e;
    public final oeg f;
    public volatile boolean h;
    public long j;
    public rae l;
    public boolean m;
    public final koj n;
    public final y9e g = new y9e();
    public boolean i = true;
    public final long a = smj.a();
    public cfi k = g(0);

    public boj(koj kojVar, Uri uri, v9i v9iVar, znj znjVar, f9e f9eVar, oeg oegVar) {
        this.n = kojVar;
        this.b = uri;
        this.c = new nwi(v9iVar);
        this.d = znjVar;
        this.e = f9eVar;
        this.f = oegVar;
    }

    public static void f(boj bojVar, long j, long j2) {
        bojVar.g.a = j;
        bojVar.j = j2;
        bojVar.i = true;
        bojVar.m = false;
    }

    @Override
    public final void a(u4h u4hVar) {
        long jMax = !this.m ? this.j : Math.max(koj.M(this.n, true), this.j);
        int iU = u4hVar.u();
        rae raeVar = this.l;
        raeVar.getClass();
        raeVar.d(u4hVar, iU);
        raeVar.g(jMax, 1, iU, 0, null);
        this.m = true;
    }

    public final cfi g(long j) {
        zci zciVar = new zci();
        zciVar.d(this.b);
        zciVar.c(j);
        zciVar.a(6);
        zciVar.b(koj.O);
        return zciVar.e();
    }

    @Override
    public final void zzg() {
        this.h = true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01ce */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh() throws Throwable {
        int i;
        boolean z;
        int i2;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i3;
        k8j k8jVar;
        int i4;
        int i5;
        int i6;
        while (!this.h) {
            try {
                long j = this.g.a;
                cfi cfiVarG = g(j);
                this.k = cfiVarG;
                nwi nwiVar = this.c;
                long j2 = nwiVar.j(cfiVarG);
                if (this.h) {
                    znj znjVar = this.d;
                    if (znjVar.zzb() != -1) {
                        this.g.a = znjVar.zzb();
                    }
                    ybi.a(this.c);
                    return;
                }
                if (j2 != -1) {
                    j2 += j;
                    koj.t(this.n);
                }
                long j3 = j2;
                koj kojVar = this.n;
                Map mapZze = nwiVar.zze();
                List list = (List) mapZze.get("icy-br");
                if (list != null) {
                    String str4 = (String) list.get(0);
                    try {
                        i6 = Integer.parseInt(str4) * 1000;
                        if (i6 > 0) {
                            i2 = i6;
                            z = true;
                        } else {
                            try {
                                zrg.f("IcyHeaders", "Invalid bitrate: " + str4);
                                z = false;
                                i2 = -1;
                            } catch (NumberFormatException unused) {
                                zrg.f("IcyHeaders", "Invalid bitrate header: ".concat(String.valueOf(str4)));
                                z = false;
                                i2 = i6;
                            }
                        }
                    } catch (NumberFormatException unused2) {
                        i6 = -1;
                    }
                } else {
                    z = false;
                    i2 = -1;
                }
                List list2 = (List) mapZze.get("icy-genre");
                if (list2 != null) {
                    str = (String) list2.get(0);
                    z = true;
                } else {
                    str = null;
                }
                List list3 = (List) mapZze.get("icy-name");
                if (list3 != null) {
                    str2 = (String) list3.get(0);
                    z = true;
                } else {
                    str2 = null;
                }
                List list4 = (List) mapZze.get("icy-url");
                if (list4 != null) {
                    str3 = (String) list4.get(0);
                    z = true;
                } else {
                    str3 = null;
                }
                List list5 = (List) mapZze.get("icy-pub");
                if (list5 != null) {
                    zEquals = ((String) list5.get(0)).equals("1");
                    z = true;
                } else {
                    zEquals = false;
                }
                List list6 = (List) mapZze.get("icy-metaint");
                if (list6 != null) {
                    String str5 = (String) list6.get(0);
                    try {
                        i5 = Integer.parseInt(str5);
                        if (i5 > 0) {
                            i3 = i5;
                            z = true;
                        } else {
                            try {
                                zrg.f("IcyHeaders", "Invalid metadata interval: " + str5);
                                i3 = -1;
                            } catch (NumberFormatException unused3) {
                                zrg.f("IcyHeaders", "Invalid metadata interval: ".concat(String.valueOf(str5)));
                                i3 = i5;
                            }
                        }
                    } catch (NumberFormatException unused4) {
                        i5 = -1;
                    }
                } else {
                    i3 = -1;
                }
                kojVar.q = z ? new sce(i2, str, str2, str3, zEquals, i3) : null;
                nwi nwiVar2 = this.c;
                koj kojVar2 = this.n;
                if (kojVar2.q == null || kojVar2.q.f == -1) {
                    k8jVar = nwiVar2;
                } else {
                    rmj rmjVar = new rmj(nwiVar2, kojVar2.q.f, this);
                    rae raeVarP = kojVar2.P();
                    this.l = raeVarP;
                    raeVarP.f(koj.P);
                    k8jVar = rmjVar;
                }
                znj znjVar2 = this.d;
                try {
                    znjVar2.c(k8jVar, this.b, nwiVar2.zze(), j, j3, this.e);
                    if (kojVar2.q != null) {
                        znjVar2.zzc();
                    }
                    if (this.i) {
                        znjVar2.b(j, this.j);
                        i = 0;
                        try {
                            this.i = false;
                        } catch (Throwable th) {
                            th = th;
                            int i7 = i;
                            if (i7 != 1) {
                                znj znjVar3 = this.d;
                                if (znjVar3.zzb() != -1) {
                                    this.g.a = znjVar3.zzb();
                                }
                            }
                            ybi.a(this.c);
                            throw th;
                        }
                    } else {
                        i = 0;
                    }
                    long j4 = j;
                    int iA = i;
                    while (iA == 0) {
                        if (this.h) {
                            iA = i;
                            break;
                        }
                        try {
                            oeg oegVar = this.f;
                            oegVar.a();
                            iA = znjVar2.a(this.g);
                            long jZzb = znjVar2.zzb();
                            if (jZzb > kojVar2.h + j4) {
                                oegVar.c();
                                kojVar2.o.post(kojVar2.n);
                                j4 = jZzb;
                            }
                        } catch (InterruptedException unused5) {
                            throw new InterruptedIOException();
                        }
                    }
                    if (iA == 1) {
                        i4 = i;
                    } else {
                        if (znjVar2.zzb() != -1) {
                            this.g.a = znjVar2.zzb();
                        }
                        i4 = iA;
                    }
                    ybi.a(nwiVar2);
                    if (i4 != 0) {
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    i = 0;
                }
            } catch (Throwable th3) {
                th = th3;
                i = 0;
            }
        }
    }
}
