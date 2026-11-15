package defpackage;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;

public final class yke implements c9e {
    public final int a;
    public final List b;
    public final u4h c = new u4h(new byte[9400], 0);
    public final SparseIntArray d;
    public final ble e;
    public final vge f;
    public final SparseArray g;
    public final SparseBooleanArray h;
    public final SparseBooleanArray i;
    public final vke j;
    public uke k;
    public f9e l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;

    public yke(int i, int i2, vge vgeVar, fch fchVar, ble bleVar, int i3) {
        this.e = bleVar;
        this.a = i2;
        this.f = vgeVar;
        this.b = Collections.singletonList(fchVar);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.h = sparseBooleanArray;
        this.i = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.g = sparseArray;
        this.d = new SparseIntArray();
        this.j = new vke(TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
        this.l = f9e.C6;
        this.r = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArrayZza = bleVar.zza();
        int size = sparseArrayZza.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.g.put(sparseArrayZza.keyAt(i4), (dle) sparseArrayZza.valueAt(i4));
        }
        this.g.put(0, new qke(new wke(this)));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    @Override
    public final void b(long j, long j2) {
        uke ukeVar;
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            fch fchVar = (fch) list.get(i);
            if (fchVar.f() != C.TIME_UNSET) {
                long jD = fchVar.d();
                if (jD != C.TIME_UNSET && jD != 0 && jD != j2) {
                    fchVar.i(j2);
                }
            } else {
                fchVar.i(j2);
            }
        }
        if (j2 != 0 && (ukeVar = this.k) != null) {
            ukeVar.d(j2);
        }
        this.c.i(0);
        this.d.clear();
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.g;
            if (i2 >= sparseArray.size()) {
                this.q = 0;
                return;
            } else {
                ((dle) sparseArray.valueAt(i2)).zzc();
                i2++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:97:0x019f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.util.SparseArray] */
    /* JADX WARN: Type inference failed for: r1v9, types: [ike] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.util.SparseBooleanArray] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [dle] */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        ?? r3;
        ?? r9;
        dle dleVar;
        long j;
        boolean z;
        long jZzd = d9eVar.zzd();
        if (this.n) {
            if (jZzd != -1) {
                vke vkeVar = this.j;
                if (!vkeVar.d()) {
                    return vkeVar.a(d9eVar, y9eVar, this.r);
                }
            }
            if (this.o) {
                j = 0;
            } else {
                this.o = true;
                vke vkeVar2 = this.j;
                if (vkeVar2.b() != C.TIME_UNSET) {
                    j = 0;
                    uke ukeVar = new uke(vkeVar2.c(), vkeVar2.b(), jZzd, this.r, TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
                    this.k = ukeVar;
                    this.l.i(ukeVar.b());
                } else {
                    j = 0;
                    this.l.i(new jae(vkeVar2.b(), 0L));
                }
            }
            if (this.p) {
                z = false;
                this.p = false;
                b(j, j);
                if (d9eVar.zzf() != j) {
                    y9eVar.a = j;
                    return 1;
                }
            } else {
                z = false;
            }
            uke ukeVar2 = this.k;
            r3 = z;
            if (ukeVar2 != null && ukeVar2.e()) {
                r3 = z;
                return ukeVar2.a(d9eVar, y9eVar);
            }
        } else {
            r3 = 0;
        }
        r3 = z;
        u4h u4hVar = this.c;
        byte[] bArrN = u4hVar.n();
        if (9400 - u4hVar.w() < 188) {
            int iU = u4hVar.u();
            if (iU > 0) {
                System.arraycopy(bArrN, u4hVar.w(), bArrN, r3, iU);
            }
            u4hVar.j(bArrN, iU);
        }
        while (u4hVar.u() < 188) {
            int iX = u4hVar.x();
            int iB = d9eVar.b(bArrN, iX, 9400 - iX);
            if (iB == -1) {
                ?? r10 = r3;
                while (true) {
                    ?? r1 = this.g;
                    if (r10 >= r1.size()) {
                        return -1;
                    }
                    dle dleVar2 = (dle) r1.valueAt(r10);
                    if (dleVar2 instanceof ike) {
                        ?? r2 = (ike) dleVar2;
                        if (r2.c(r3)) {
                            r2.a(new u4h(), 1);
                        }
                    }
                    r10++;
                }
            } else {
                u4hVar.k(iX + iB);
            }
        }
        int iW = u4hVar.w();
        int iX2 = u4hVar.x();
        int iA = ele.a(u4hVar.n(), iW, iX2);
        u4hVar.l(iA);
        int i = iA + 188;
        if (i > iX2) {
            this.q += iA - iW;
        } else {
            this.q = r3;
        }
        int iX3 = u4hVar.x();
        if (i > iX3) {
            return r3;
        }
        int iA2 = u4hVar.A();
        if ((8388608 & iA2) != 0) {
            u4hVar.l(i);
            return r3;
        }
        ?? r11 = (4194304 & iA2) != 0 ? 1 : r3;
        int i2 = iA2 & 32;
        int i3 = (iA2 >> 8) & 8191;
        if ((iA2 & 16) != 0) {
            dleVar = (dle) this.g.get(i3);
        } else {
            r9 = 0;
        }
        if (r9 == 0) {
            r9 = dleVar;
            u4hVar.l(i);
            return r3;
        }
        int i4 = iA2 & 15;
        SparseIntArray sparseIntArray = this.d;
        int i5 = sparseIntArray.get(i3, i4 - 1);
        sparseIntArray.put(i3, i4);
        if (i5 == i4) {
            r9 = dleVar;
            u4hVar.l(i);
            return r3;
        }
        if (i4 != ((i5 + 1) & 15)) {
            r9 = dleVar;
            r9.zzc();
        }
        if (i2 != 0) {
            int iG = u4hVar.G();
            r11 = (r11 == true ? 1 : 0) | ((u4hVar.G() & 64) != 0 ? 2 : r3);
            u4hVar.m(iG - 1);
        }
        boolean z2 = this.n;
        if (z2 || !this.i.get(i3, r3)) {
            u4hVar.k(i);
            r9.a(u4hVar, r11);
            u4hVar.k(iX3);
            if (!z2) {
                if (this.n && jZzd != -1) {
                    this.p = true;
                }
            }
        } else if (this.n) {
            this.p = true;
        }
        u4hVar.l(i);
        return r3;
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        byte[] bArrN = this.c.n();
        m8e m8eVar = (m8e) d9eVar;
        m8eVar.e(bArrN, 0, 940, false);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    m8eVar.l(i, false);
                    return true;
                }
                if (bArrN[(i2 * 188) + i] != 71) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    @Override
    public final void f(f9e f9eVar) {
        if (this.a == 0) {
            f9eVar = new che(f9eVar, this.f);
        }
        this.l = f9eVar;
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
