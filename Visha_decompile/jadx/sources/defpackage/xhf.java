package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.z3;
import com.google.android.gms.internal.ads.zzftu;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

public final class xhf extends z3 implements ixi {
    public static final AtomicInteger p = new AtomicInteger(0);
    public String e;
    public final bhf f;
    public boolean g;
    public final whf h;
    public final lhf i;
    public ByteBuffer j;
    public boolean k;
    public final Object l;
    public final String m;
    public final int n;
    public boolean o;

    public xhf(chf chfVar, bhf bhfVar) {
        super(chfVar);
        this.f = bhfVar;
        this.h = new whf();
        this.i = new lhf();
        this.l = new Object();
        this.m = (String) zzftu.zzd(chfVar != null ? chfVar.zzr() : null).zzb("");
        this.n = chfVar != null ? chfVar.zzf() : 0;
        p.incrementAndGet();
    }

    public static int s() {
        return p.get();
    }

    public static final String w(String str) {
        return "cache:".concat(String.valueOf(zzf.zzg(str)));
    }

    @Override
    public final void b() {
        this.g = true;
    }

    @Override
    public final void f(v9i v9iVar, cfi cfiVar, boolean z, int i) {
    }

    @Override
    public final void j(v9i v9iVar, cfi cfiVar, boolean z) {
        if (v9iVar instanceof jni) {
            this.h.b((jni) v9iVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:? -> B:23:0x00d0). Please report as a decompilation issue!!! */
    @Override
    public final boolean n(String str) throws Throwable {
        String str2;
        this.e = str;
        String str3 = "error";
        String strW = w(str);
        int i = 0;
        try {
            hii hiiVar = new hii();
            hiiVar.e(this.c);
            bhf bhfVar = this.f;
            hiiVar.b(bhfVar.d);
            hiiVar.c(bhfVar.e);
            hiiVar.a(true);
            hiiVar.d(this);
            v9i v9iVarZza = hiiVar.zza();
            if (bhfVar.i) {
                v9iVarZza = new jhf(this.b, v9iVarZza, this.m, this.n, null, null);
            }
            v9iVarZza.j(new cfi(Uri.parse(str), 0L, -1L, null));
            chf chfVar = (chf) this.d.get();
            if (chfVar != null) {
                chfVar.zzt(strW, this);
            }
            fy0 fy0VarZzC = zzv.zzC();
            long jCurrentTimeMillis = fy0VarZzC.currentTimeMillis();
            long jLongValue = ((Long) zzbd.zzc().b(cye.O)).longValue();
            long jLongValue2 = ((Long) zzbd.zzc().b(cye.N)).longValue();
            this.j = ByteBuffer.allocate(bhfVar.c);
            int i2 = 8192;
            byte[] bArr = new byte[8192];
            long j = jCurrentTimeMillis;
            while (true) {
                int iB = v9iVarZza.b(bArr, i, Math.min(this.j.remaining(), i2));
                if (iB == -1) {
                    this.o = true;
                    e(str, strW, (int) this.i.a(this.j));
                    break;
                }
                synchronized (this.l) {
                    try {
                        if (!this.g) {
                            try {
                                this.j.put(bArr, 0, iB);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        try {
                            if (this.j.remaining() <= 0) {
                                x();
                                break;
                            }
                            str2 = 1;
                            try {
                                if (this.g) {
                                    throw new IOException("Precache abort at " + this.j.limit() + " bytes");
                                }
                                long jCurrentTimeMillis2 = fy0VarZzC.currentTimeMillis();
                                if (jCurrentTimeMillis2 - j >= jLongValue) {
                                    x();
                                    j = jCurrentTimeMillis2;
                                }
                                if (jCurrentTimeMillis2 - jCurrentTimeMillis > 1000 * jLongValue2) {
                                    throw new IOException("Timeout exceeded. Limit: " + jLongValue2 + " sec");
                                }
                                str3 = str3;
                                i = 0;
                                i2 = 8192;
                            } catch (Exception e) {
                                e = e;
                                String str4 = e.getClass().getCanonicalName() + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage();
                                int i3 = zze.zza;
                                zzo.zzj("Failed to preload url " + str + " Exception: " + str4);
                                c(str, strW, str2, str4);
                                return false;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str2 = str3;
                            String str5 = e.getClass().getCanonicalName() + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage();
                            int i4 = zze.zza;
                            zzo.zzj("Failed to preload url " + str + " Exception: " + str5);
                            c(str, strW, str2, str5);
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            str3 = str3;
        }
    }

    @Override
    public final void p(v9i v9iVar, cfi cfiVar, boolean z) {
    }

    @Override
    public final void q(v9i v9iVar, cfi cfiVar, boolean z) {
    }

    @Override
    public final void release() {
        p.decrementAndGet();
    }

    public final String t() {
        return this.e;
    }

    public final ByteBuffer u() {
        synchronized (this.l) {
            try {
                ByteBuffer byteBuffer = this.j;
                if (byteBuffer != null && !this.k) {
                    byteBuffer.flip();
                    this.k = true;
                }
                this.g = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.j;
    }

    public final boolean v() {
        return this.o;
    }

    public final void x() {
        int iA = (int) this.h.a();
        int iA2 = (int) this.i.a(this.j);
        int iPosition = this.j.position();
        int iRound = Math.round(iA2 * (iPosition / iA));
        int iO = ugf.O();
        int iQ = ugf.Q();
        String str = this.e;
        g(str, w(str), iPosition, iA, iRound, iA2, iRound > 0, iO, iQ);
    }
}
