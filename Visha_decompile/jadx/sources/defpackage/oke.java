package defpackage;

import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class oke implements c9e {
    public boolean e;
    public boolean f;
    public boolean g;
    public long h;
    public lke i;
    public f9e j;
    public boolean k;
    public final fch a = new fch(0);
    public final u4h c = new u4h(4096);
    public final SparseArray b = new SparseArray();
    public final mke d = new mke();

    /* JADX WARN: Code duplicated, block: B:10:0x0021  */
    @Override
    public final void b(long j, long j2) {
        fch fchVar = this.a;
        if (fchVar.f() != C.TIME_UNSET) {
            long jD = fchVar.d();
            if (jD != C.TIME_UNSET && jD != 0 && jD != j2) {
                fchVar.i(j2);
            }
        } else {
            fchVar.i(j2);
        }
        lke lkeVar = this.i;
        int i = 0;
        if (lkeVar != null) {
            lkeVar.d(j2);
        }
        while (true) {
            SparseArray sparseArray = this.b;
            if (i >= sparseArray.size()) {
                return;
            }
            ((nke) sparseArray.valueAt(i)).b();
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x013b  */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        lje njeVar;
        n7g.b(this.j);
        long jZzd = d9eVar.zzd();
        if (jZzd != -1) {
            mke mkeVar = this.d;
            if (!mkeVar.e()) {
                return mkeVar.a(d9eVar, y9eVar);
            }
        }
        if (!this.k) {
            this.k = true;
            mke mkeVar2 = this.d;
            if (mkeVar2.b() != C.TIME_UNSET) {
                lke lkeVar = new lke(mkeVar2.d(), mkeVar2.b(), jZzd);
                this.i = lkeVar;
                this.j.i(lkeVar.b());
            } else {
                this.j.i(new jae(mkeVar2.b(), 0L));
            }
        }
        lke lkeVar2 = this.i;
        if (lkeVar2 != null && lkeVar2.e()) {
            return lkeVar2.a(d9eVar, y9eVar);
        }
        d9eVar.zzj();
        long jZze = jZzd != -1 ? jZzd - d9eVar.zze() : -1L;
        if (jZze != -1 && jZze < 4) {
            return -1;
        }
        u4h u4hVar = this.c;
        if (!d9eVar.e(u4hVar.n(), 0, 4, true)) {
            return -1;
        }
        u4hVar.l(0);
        int iA = u4hVar.A();
        if (iA == 441) {
            return -1;
        }
        if (iA == 442) {
            d9eVar.i(u4hVar.n(), 0, 10);
            u4hVar.l(9);
            d9eVar.f((u4hVar.G() & 7) + 14);
            return 0;
        }
        if (iA == 443) {
            d9eVar.i(u4hVar.n(), 0, 2);
            u4hVar.l(0);
            d9eVar.f(u4hVar.K() + 6);
            return 0;
        }
        if ((iA >> 8) != 1) {
            d9eVar.f(1);
            return 0;
        }
        int i = iA & 255;
        SparseArray sparseArray = this.b;
        nke nkeVar = (nke) sparseArray.get(i);
        if (!this.e) {
            if (nkeVar == null) {
                lje ljeVar = null;
                if (i == 189) {
                    njeVar = new bje(null, 0, MimeTypes.VIDEO_PS);
                    this.f = true;
                    this.h = d9eVar.zzf();
                } else if ((iA & 224) == 192) {
                    njeVar = new xje(null, 0, MimeTypes.VIDEO_PS);
                    this.f = true;
                    this.h = d9eVar.zzf();
                } else if ((iA & 240) == 224) {
                    njeVar = new nje(null, MimeTypes.VIDEO_PS);
                    this.g = true;
                    this.h = d9eVar.zzf();
                } else if (ljeVar != null) {
                    ljeVar.c(this.j, new cle(Integer.MIN_VALUE, i, 256));
                    nkeVar = new nke(ljeVar, this.a);
                    sparseArray.put(i, nkeVar);
                }
                ljeVar = njeVar;
                if (ljeVar != null) {
                    ljeVar.c(this.j, new cle(Integer.MIN_VALUE, i, 256));
                    nkeVar = new nke(ljeVar, this.a);
                    sparseArray.put(i, nkeVar);
                }
            }
            long j = 1048576;
            if (this.f && this.g) {
                j = this.h + 8192;
            }
            if (d9eVar.zzf() > j) {
                this.e = true;
                this.j.zzG();
            }
        }
        d9eVar.i(u4hVar.n(), 0, 2);
        u4hVar.l(0);
        int iK = u4hVar.K() + 6;
        if (nkeVar == null) {
            d9eVar.f(iK);
        } else {
            u4hVar.i(iK);
            d9eVar.h(u4hVar.n(), 0, iK);
            u4hVar.l(6);
            nkeVar.a(u4hVar);
            u4hVar.k(u4hVar.v());
        }
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        byte[] bArr = new byte[14];
        m8e m8eVar = (m8e) d9eVar;
        m8eVar.e(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) != 442 || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        m8eVar.k(bArr[13] & 7, false);
        m8eVar.e(bArr, 0, 3, false);
        return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.j = f9eVar;
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
