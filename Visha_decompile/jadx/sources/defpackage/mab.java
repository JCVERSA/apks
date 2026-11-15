package defpackage;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class mab implements nk3 {
    public static final uk3 t = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return mab.v();
        }
    };
    public final int a;
    public final int b;
    public final List c;
    public final qw7 d;
    public final SparseIntArray e;
    public final nab.c f;
    public final SparseArray g;
    public final SparseBooleanArray h;
    public final SparseBooleanArray i;
    public final iab j;
    public hab k;
    public qk3 l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public nab q;
    public int r;
    public int s;

    public class a implements ba9 {
        public final pw7 a = new pw7(new byte[4]);

        public a() {
        }

        @Override
        public void a(qw7 qw7Var) {
            if (qw7Var.C() == 0 && (qw7Var.C() & 128) != 0) {
                qw7Var.P(6);
                int iA = qw7Var.a() / 4;
                for (int i = 0; i < iA; i++) {
                    qw7Var.i(this.a, 4);
                    int iH = this.a.h(16);
                    this.a.r(3);
                    if (iH == 0) {
                        this.a.r(13);
                    } else {
                        int iH2 = this.a.h(13);
                        if (mab.this.g.get(iH2) == null) {
                            mab.this.g.put(iH2, new ca9(mab.this.new b(iH2)));
                            mab.j(mab.this);
                        }
                    }
                }
                if (mab.this.a != 2) {
                    mab.this.g.remove(0);
                }
            }
        }

        @Override
        public void b(poa poaVar, qk3 qk3Var, nab.d dVar) {
        }
    }

    public class b implements ba9 {
        public final pw7 a = new pw7(new byte[5]);
        public final SparseArray b = new SparseArray();
        public final SparseIntArray c = new SparseIntArray();
        public final int d;

        public b(int i) {
            this.d = i;
        }

        @Override
        public void a(qw7 qw7Var) {
            poa poaVar;
            if (qw7Var.C() != 2) {
                return;
            }
            if (mab.this.a == 1 || mab.this.a == 2 || mab.this.m == 1) {
                poaVar = (poa) mab.this.c.get(0);
            } else {
                poaVar = new poa(((poa) mab.this.c.get(0)).c());
                mab.this.c.add(poaVar);
            }
            if ((qw7Var.C() & 128) == 0) {
                return;
            }
            qw7Var.P(1);
            int I = qw7Var.I();
            int i = 3;
            qw7Var.P(3);
            qw7Var.i(this.a, 2);
            this.a.r(3);
            int i2 = 13;
            mab.this.s = this.a.h(13);
            qw7Var.i(this.a, 2);
            int i3 = 4;
            this.a.r(4);
            qw7Var.P(this.a.h(12));
            if (mab.this.a == 2 && mab.this.q == null) {
                nab.b bVar = new nab.b(21, null, null, blb.f);
                mab mabVar = mab.this;
                mabVar.q = mabVar.f.a(21, bVar);
                if (mab.this.q != null) {
                    mab.this.q.b(poaVar, mab.this.l, new nab.d(I, 21, 8192));
                }
            }
            this.b.clear();
            this.c.clear();
            int iA = qw7Var.a();
            while (iA > 0) {
                qw7Var.i(this.a, 5);
                int iH = this.a.h(8);
                this.a.r(i);
                int iH2 = this.a.h(i2);
                this.a.r(i3);
                int iH3 = this.a.h(12);
                nab.b bVarC = c(qw7Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarC.a;
                }
                iA -= iH3 + 5;
                int i4 = mab.this.a == 2 ? iH : iH2;
                if (!mab.this.h.get(i4)) {
                    nab nabVarA = (mab.this.a == 2 && iH == 21) ? mab.this.q : mab.this.f.a(iH, bVarC);
                    if (mab.this.a != 2 || iH2 < this.c.get(i4, 8192)) {
                        this.c.put(i4, iH2);
                        this.b.put(i4, nabVarA);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.c.size();
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = this.c.keyAt(i5);
                int iValueAt = this.c.valueAt(i5);
                mab.this.h.put(iKeyAt, true);
                mab.this.i.put(iValueAt, true);
                nab nabVar = (nab) this.b.valueAt(i5);
                if (nabVar != null) {
                    if (nabVar != mab.this.q) {
                        nabVar.b(poaVar, mab.this.l, new nab.d(I, iKeyAt, 8192));
                    }
                    mab.this.g.put(iValueAt, nabVar);
                }
            }
            if (mab.this.a == 2) {
                if (mab.this.n) {
                    return;
                }
                mab.this.l.endTracks();
                mab.this.m = 0;
                mab.this.n = true;
                return;
            }
            mab.this.g.remove(this.d);
            mab mabVar2 = mab.this;
            mabVar2.m = mabVar2.a == 1 ? 0 : mab.this.m - 1;
            if (mab.this.m == 0) {
                mab.this.l.endTracks();
                mab.this.n = true;
            }
        }

        @Override
        public void b(poa poaVar, qk3 qk3Var, nab.d dVar) {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        public final nab.b c(qw7 qw7Var, int i) {
            int iE = qw7Var.e();
            int i2 = i + iE;
            int i3 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (qw7Var.e() < i2) {
                int iC = qw7Var.C();
                int iE2 = qw7Var.e() + qw7Var.C();
                if (iE2 > i2) {
                    break;
                }
                if (iC == 5) {
                    long jE = qw7Var.E();
                    if (jE == 1094921523) {
                        i3 = 129;
                    } else if (jE == 1161904947) {
                        i3 = 135;
                    } else if (jE == 1094921524) {
                        i3 = 172;
                    } else if (jE == 1212503619) {
                        i3 = 36;
                    }
                } else if (iC == 106) {
                    i3 = 129;
                } else if (iC == 122) {
                    i3 = 135;
                } else if (iC == 127) {
                    if (qw7Var.C() == 21) {
                        i3 = 172;
                    }
                } else if (iC == 123) {
                    i3 = 138;
                } else if (iC == 10) {
                    strTrim = qw7Var.z(3).trim();
                } else if (iC == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (qw7Var.e() < iE2) {
                        String strTrim2 = qw7Var.z(3).trim();
                        int iC2 = qw7Var.C();
                        byte[] bArr = new byte[4];
                        qw7Var.j(bArr, 0, 4);
                        arrayList2.add(new nab.a(strTrim2, iC2, bArr));
                    }
                    arrayList = arrayList2;
                    i3 = 89;
                } else if (iC == 111) {
                    i3 = 257;
                }
                qw7Var.P(iE2 - qw7Var.e());
            }
            qw7Var.O(i2);
            return new nab.b(i3, strTrim, arrayList, Arrays.copyOfRange(qw7Var.d(), iE, i2));
        }
    }

    public mab() {
        this(0);
    }

    public static int j(mab mabVar) {
        int i = mabVar.m;
        mabVar.m = i + 1;
        return i;
    }

    public static nk3[] v() {
        return new nk3[]{new mab()};
    }

    private void w(long j) {
        if (this.o) {
            return;
        }
        this.o = true;
        if (this.j.b() == C.TIME_UNSET) {
            this.l.d(new ja9.b(this.j.b()));
            return;
        }
        hab habVar = new hab(this.j.c(), this.j.b(), j, this.s, this.b);
        this.k = habVar;
        this.l.d(habVar.b());
    }

    @Override
    public void a(qk3 qk3Var) {
        this.l = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        long length = pk3Var.getLength();
        if (this.n) {
            if (length != -1 && this.a != 2 && !this.j.d()) {
                return this.j.e(pk3Var, id8Var, this.s);
            }
            w(length);
            if (this.p) {
                this.p = false;
                seek(0L, 0L);
                if (pk3Var.getPosition() != 0) {
                    id8Var.a = 0L;
                    return 1;
                }
            }
            hab habVar = this.k;
            if (habVar != null && habVar.d()) {
                return this.k.c(pk3Var, id8Var);
            }
        }
        if (!t(pk3Var)) {
            return -1;
        }
        int iU = u();
        int iF = this.d.f();
        if (iU > iF) {
            return 0;
        }
        int iN = this.d.n();
        if ((8388608 & iN) != 0) {
            this.d.O(iU);
            return 0;
        }
        int i = (4194304 & iN) != 0 ? 1 : 0;
        int i2 = (2096896 & iN) >> 8;
        boolean z = (iN & 32) != 0;
        nab nabVar = (iN & 16) != 0 ? (nab) this.g.get(i2) : null;
        if (nabVar == null) {
            this.d.O(iU);
            return 0;
        }
        if (this.a != 2) {
            int i3 = iN & 15;
            int i4 = this.e.get(i2, i3 - 1);
            this.e.put(i2, i3);
            if (i4 == i3) {
                this.d.O(iU);
                return 0;
            }
            if (i3 != ((i4 + 1) & 15)) {
                nabVar.seek();
            }
        }
        if (z) {
            int iC = this.d.C();
            i |= (this.d.C() & 64) != 0 ? 2 : 0;
            this.d.P(iC - 1);
        }
        boolean z2 = this.n;
        if (y(i2)) {
            this.d.N(iU);
            nabVar.a(this.d, i);
            this.d.N(iF);
        }
        if (this.a != 2 && !z2 && this.n && length != -1) {
            this.p = true;
        }
        this.d.O(iU);
        return 0;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        byte[] bArrD = this.d.d();
        pk3Var.peekFully(bArrD, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    pk3Var.skipFully(i);
                    return true;
                }
                if (bArrD[(i2 * 188) + i] != 71) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        hab habVar;
        zi.g(this.a != 2);
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            poa poaVar = (poa) this.c.get(i);
            boolean z = poaVar.e() == C.TIME_UNSET;
            if (!z) {
                long jC = poaVar.c();
                z = (jC == C.TIME_UNSET || jC == 0 || jC == j2) ? false : true;
            }
            if (z) {
                poaVar.g(j2);
            }
        }
        if (j2 != 0 && (habVar = this.k) != null) {
            habVar.h(j2);
        }
        this.d.K(0);
        this.e.clear();
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            ((nab) this.g.valueAt(i2)).seek();
        }
        this.r = 0;
    }

    public final boolean t(pk3 pk3Var) {
        byte[] bArrD = this.d.d();
        if (9400 - this.d.e() < 188) {
            int iA = this.d.a();
            if (iA > 0) {
                System.arraycopy(bArrD, this.d.e(), bArrD, 0, iA);
            }
            this.d.M(bArrD, iA);
        }
        while (this.d.a() < 188) {
            int iF = this.d.f();
            int i = pk3Var.read(bArrD, iF, 9400 - iF);
            if (i == -1) {
                return false;
            }
            this.d.N(iF + i);
        }
        return true;
    }

    public final int u() throws ParserException {
        int iE = this.d.e();
        int iF = this.d.f();
        int iA = oab.a(this.d.d(), iE, iF);
        this.d.O(iA);
        int i = iA + 188;
        if (i > iF) {
            int i2 = this.r + (iA - iE);
            this.r = i2;
            if (this.a == 2 && i2 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.r = 0;
        }
        return i;
    }

    public final void x() {
        this.h.clear();
        this.g.clear();
        SparseArray sparseArrayCreateInitialPayloadReaders = this.f.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i = 0; i < size; i++) {
            this.g.put(sparseArrayCreateInitialPayloadReaders.keyAt(i), (nab) sparseArrayCreateInitialPayloadReaders.valueAt(i));
        }
        this.g.put(0, new ca9(new a()));
        this.q = null;
    }

    public final boolean y(int i) {
        return this.a == 2 || this.n || !this.i.get(i, false);
    }

    public mab(int i) {
        this(1, i, TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public mab(int i, int i2, int i3) {
        this(i, new poa(0L), new r62(i2), i3);
    }

    public mab(int i, poa poaVar, nab.c cVar, int i2) {
        this.f = (nab.c) zi.e(cVar);
        this.b = i2;
        this.a = i;
        if (i != 1 && i != 2) {
            ArrayList arrayList = new ArrayList();
            this.c = arrayList;
            arrayList.add(poaVar);
        } else {
            this.c = Collections.singletonList(poaVar);
        }
        this.d = new qw7(new byte[9400], 0);
        this.h = new SparseBooleanArray();
        this.i = new SparseBooleanArray();
        this.g = new SparseArray();
        this.e = new SparseIntArray();
        this.j = new iab(i2);
        this.l = qk3.C1;
        this.s = -1;
        x();
    }
}
