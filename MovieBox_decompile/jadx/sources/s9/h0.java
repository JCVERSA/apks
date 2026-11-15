package s9;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class h0 implements i9.l {

    public static final i9.r f71701t = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return h0.v();
        }
    };

    private final int f71702a;

    private final int f71703b;

    private final List f71704c;

    private final com.google.android.exoplayer2.util.d0 f71705d;

    private final SparseIntArray f71706e;

    private final i0.c f71707f;

    private final SparseArray f71708g;

    private final SparseBooleanArray f71709h;

    private final SparseBooleanArray f71710i;

    private final f0 f71711j;

    private e0 f71712k;

    private i9.n f71713l;

    private int f71714m;

    private boolean f71715n;

    private boolean f71716o;

    private boolean f71717p;

    private i0 f71718q;

    private int f71719r;

    private int f71720s;

    public h0() {
        this(0);
    }

    static int j(h0 h0Var) {
        int i10 = h0Var.f71714m;
        h0Var.f71714m = i10 + 1;
        return i10;
    }

    private boolean t(i9.m mVar) {
        byte[] bArrD = this.f71705d.d();
        if (9400 - this.f71705d.e() < 188) {
            int iA = this.f71705d.a();
            if (iA > 0) {
                System.arraycopy(bArrD, this.f71705d.e(), bArrD, 0, iA);
            }
            this.f71705d.N(bArrD, iA);
        }
        while (this.f71705d.a() < 188) {
            int iF = this.f71705d.f();
            int i10 = mVar.read(bArrD, iF, 9400 - iF);
            if (i10 == -1) {
                return false;
            }
            this.f71705d.O(iF + i10);
        }
        return true;
    }

    private int u() throws ParserException {
        int iE = this.f71705d.e();
        int iF = this.f71705d.f();
        int iA = j0.a(this.f71705d.d(), iE, iF);
        this.f71705d.P(iA);
        int i10 = iA + 188;
        if (i10 > iF) {
            int i11 = this.f71719r + (iA - iE);
            this.f71719r = i11;
            if (this.f71702a == 2 && i11 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f71719r = 0;
        }
        return i10;
    }

    public static i9.l[] v() {
        return new i9.l[]{new h0()};
    }

    private void w(long j10) {
        if (this.f71716o) {
            return;
        }
        this.f71716o = true;
        if (this.f71711j.b() == C.TIME_UNSET) {
            this.f71713l.g(new i9.b0.b(this.f71711j.b()));
            return;
        }
        e0 e0Var = new e0(this.f71711j.c(), this.f71711j.b(), j10, this.f71720s, this.f71703b);
        this.f71712k = e0Var;
        this.f71713l.g(e0Var.b());
    }

    private void x() {
        this.f71709h.clear();
        this.f71708g.clear();
        SparseArray sparseArrayCreateInitialPayloadReaders = this.f71707f.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f71708g.put(sparseArrayCreateInitialPayloadReaders.keyAt(i10), (i0) sparseArrayCreateInitialPayloadReaders.valueAt(i10));
        }
        this.f71708g.put(0, new c0(new a()));
        this.f71718q = null;
    }

    private boolean y(int i10) {
        return this.f71702a == 2 || this.f71715n || !this.f71710i.get(i10, false);
    }

    @Override
    public void b(i9.n nVar) {
        this.f71713l = nVar;
    }

    @Override
    public boolean c(i9.m mVar) {
        byte[] bArrD = this.f71705d.d();
        mVar.peekFully(bArrD, 0, 940);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    mVar.skipFully(i10);
                    return true;
                }
                if (bArrD[(i11 * 188) + i10] != 71) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    @Override
    public int d(i9.m mVar, i9.a0 a0Var) throws ParserException {
        long length = mVar.getLength();
        if (this.f71715n) {
            if (length != -1 && this.f71702a != 2 && !this.f71711j.d()) {
                return this.f71711j.e(mVar, a0Var, this.f71720s);
            }
            w(length);
            if (this.f71717p) {
                this.f71717p = false;
                seek(0L, 0L);
                if (mVar.getPosition() != 0) {
                    a0Var.f61884a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f71712k;
            if (e0Var != null && e0Var.d()) {
                return this.f71712k.c(mVar, a0Var);
            }
        }
        if (!t(mVar)) {
            return -1;
        }
        int iU = u();
        int iF = this.f71705d.f();
        if (iU > iF) {
            return 0;
        }
        int iN = this.f71705d.n();
        if ((8388608 & iN) != 0) {
            this.f71705d.P(iU);
            return 0;
        }
        int i10 = (4194304 & iN) != 0 ? 1 : 0;
        int i11 = (2096896 & iN) >> 8;
        boolean z10 = (iN & 32) != 0;
        i0 i0Var = (iN & 16) != 0 ? (i0) this.f71708g.get(i11) : null;
        if (i0Var == null) {
            this.f71705d.P(iU);
            return 0;
        }
        if (this.f71702a != 2) {
            int i12 = iN & 15;
            int i13 = this.f71706e.get(i11, i12 - 1);
            this.f71706e.put(i11, i12);
            if (i13 == i12) {
                this.f71705d.P(iU);
                return 0;
            }
            if (i12 != ((i13 + 1) & 15)) {
                i0Var.seek();
            }
        }
        if (z10) {
            int iD = this.f71705d.D();
            i10 |= (this.f71705d.D() & 64) != 0 ? 2 : 0;
            this.f71705d.Q(iD - 1);
        }
        boolean z11 = this.f71715n;
        if (y(i11)) {
            this.f71705d.O(iU);
            i0Var.b(this.f71705d, i10);
            this.f71705d.O(iF);
        }
        if (this.f71702a != 2 && !z11 && this.f71715n && length != -1) {
            this.f71717p = true;
        }
        this.f71705d.P(iU);
        return 0;
    }

    @Override
    public void seek(long j10, long j11) {
        e0 e0Var;
        com.google.android.exoplayer2.util.a.g(this.f71702a != 2);
        int size = this.f71704c.size();
        for (int i10 = 0; i10 < size; i10++) {
            l0 l0Var = (l0) this.f71704c.get(i10);
            boolean z10 = l0Var.e() == C.TIME_UNSET;
            if (!z10) {
                long jC = l0Var.c();
                z10 = (jC == C.TIME_UNSET || jC == 0 || jC == j11) ? false : true;
            }
            if (z10) {
                l0Var.g(j11);
            }
        }
        if (j11 != 0 && (e0Var = this.f71712k) != null) {
            e0Var.h(j11);
        }
        this.f71705d.L(0);
        this.f71706e.clear();
        for (int i11 = 0; i11 < this.f71708g.size(); i11++) {
            ((i0) this.f71708g.valueAt(i11)).seek();
        }
        this.f71719r = 0;
    }

    public h0(int i10) {
        this(1, i10, 112800);
    }

    public h0(int i10, int i11, int i12) {
        this(i10, new l0(0L), new j(i11), i12);
    }

    public h0(int i10, l0 l0Var, i0.c cVar) {
        this(i10, l0Var, cVar, 112800);
    }

    public h0(int i10, l0 l0Var, i0.c cVar, int i11) {
        this.f71707f = (i0.c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f71703b = i11;
        this.f71702a = i10;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f71704c = arrayList;
            arrayList.add(l0Var);
        } else {
            this.f71704c = Collections.singletonList(l0Var);
        }
        this.f71705d = new com.google.android.exoplayer2.util.d0(new byte[9400], 0);
        this.f71709h = new SparseBooleanArray();
        this.f71710i = new SparseBooleanArray();
        this.f71708g = new SparseArray();
        this.f71706e = new SparseIntArray();
        this.f71711j = new f0(i11);
        this.f71713l = i9.n.f61968i1;
        this.f71720s = -1;
        x();
    }

    @Override
    public void release() {
    }

    private class a implements b0 {

        private final com.google.android.exoplayer2.util.c0 f71721a = new com.google.android.exoplayer2.util.c0(new byte[4]);

        public a() {
        }

        @Override
        public void b(com.google.android.exoplayer2.util.d0 d0Var) {
            if (d0Var.D() == 0 && (d0Var.D() & 128) != 0) {
                d0Var.Q(6);
                int iA = d0Var.a() / 4;
                for (int i10 = 0; i10 < iA; i10++) {
                    d0Var.i(this.f71721a, 4);
                    int iH = this.f71721a.h(16);
                    this.f71721a.r(3);
                    if (iH == 0) {
                        this.f71721a.r(13);
                    } else {
                        int iH2 = this.f71721a.h(13);
                        if (h0.this.f71708g.get(iH2) == null) {
                            h0.this.f71708g.put(iH2, new c0(h0.this.new b(iH2)));
                            h0.j(h0.this);
                        }
                    }
                }
                if (h0.this.f71702a != 2) {
                    h0.this.f71708g.remove(0);
                }
            }
        }

        @Override
        public void a(l0 l0Var, i9.n nVar, i0.d dVar) {
        }
    }

    private class b implements b0 {

        private final com.google.android.exoplayer2.util.c0 f71723a = new com.google.android.exoplayer2.util.c0(new byte[5]);

        private final SparseArray f71724b = new SparseArray();

        private final SparseIntArray f71725c = new SparseIntArray();

        private final int f71726d;

        public b(int i10) {
            this.f71726d = i10;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        private i0.b c(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
            int iE = d0Var.e();
            int i11 = i10 + iE;
            int i12 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (d0Var.e() < i11) {
                int iD = d0Var.D();
                int iE2 = d0Var.e() + d0Var.D();
                if (iE2 > i11) {
                    break;
                }
                if (iD == 5) {
                    long jF = d0Var.F();
                    if (jF == 1094921523) {
                        i12 = 129;
                    } else if (jF == 1161904947) {
                        i12 = 135;
                    } else if (jF == 1094921524) {
                        i12 = 172;
                    } else if (jF == 1212503619) {
                        i12 = 36;
                    }
                } else if (iD == 106) {
                    i12 = 129;
                } else if (iD == 122) {
                    i12 = 135;
                } else if (iD == 127) {
                    if (d0Var.D() == 21) {
                        i12 = 172;
                    }
                } else if (iD == 123) {
                    i12 = 138;
                } else if (iD == 10) {
                    strTrim = d0Var.A(3).trim();
                } else if (iD == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (d0Var.e() < iE2) {
                        String strTrim2 = d0Var.A(3).trim();
                        int iD2 = d0Var.D();
                        byte[] bArr = new byte[4];
                        d0Var.j(bArr, 0, 4);
                        arrayList2.add(new i0.a(strTrim2, iD2, bArr));
                    }
                    arrayList = arrayList2;
                    i12 = 89;
                } else if (iD == 111) {
                    i12 = InputDeviceCompat.SOURCE_KEYBOARD;
                }
                d0Var.Q(iE2 - d0Var.e());
            }
            d0Var.P(i11);
            return new i0.b(i12, strTrim, arrayList, Arrays.copyOfRange(d0Var.d(), iE, i11));
        }

        @Override
        public void b(com.google.android.exoplayer2.util.d0 d0Var) {
            l0 l0Var;
            if (d0Var.D() != 2) {
                return;
            }
            if (h0.this.f71702a == 1 || h0.this.f71702a == 2 || h0.this.f71714m == 1) {
                l0Var = (l0) h0.this.f71704c.get(0);
            } else {
                l0Var = new l0(((l0) h0.this.f71704c.get(0)).c());
                h0.this.f71704c.add(l0Var);
            }
            if ((d0Var.D() & 128) == 0) {
                return;
            }
            d0Var.Q(1);
            int iJ = d0Var.J();
            int i10 = 3;
            d0Var.Q(3);
            d0Var.i(this.f71723a, 2);
            this.f71723a.r(3);
            int i11 = 13;
            h0.this.f71720s = this.f71723a.h(13);
            d0Var.i(this.f71723a, 2);
            int i12 = 4;
            this.f71723a.r(4);
            d0Var.Q(this.f71723a.h(12));
            if (h0.this.f71702a == 2 && h0.this.f71718q == null) {
                i0.b bVar = new i0.b(21, null, null, p0.f26859f);
                h0 h0Var = h0.this;
                h0Var.f71718q = h0Var.f71707f.a(21, bVar);
                if (h0.this.f71718q != null) {
                    h0.this.f71718q.a(l0Var, h0.this.f71713l, new i0.d(iJ, 21, 8192));
                }
            }
            this.f71724b.clear();
            this.f71725c.clear();
            int iA = d0Var.a();
            while (iA > 0) {
                d0Var.i(this.f71723a, 5);
                int iH = this.f71723a.h(8);
                this.f71723a.r(i10);
                int iH2 = this.f71723a.h(i11);
                this.f71723a.r(i12);
                int iH3 = this.f71723a.h(12);
                i0.b bVarC = c(d0Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarC.f71753a;
                }
                iA -= iH3 + 5;
                int i13 = h0.this.f71702a == 2 ? iH : iH2;
                if (!h0.this.f71709h.get(i13)) {
                    i0 i0VarA = (h0.this.f71702a == 2 && iH == 21) ? h0.this.f71718q : h0.this.f71707f.a(iH, bVarC);
                    if (h0.this.f71702a != 2 || iH2 < this.f71725c.get(i13, 8192)) {
                        this.f71725c.put(i13, iH2);
                        this.f71724b.put(i13, i0VarA);
                    }
                }
                i10 = 3;
                i12 = 4;
                i11 = 13;
            }
            int size = this.f71725c.size();
            for (int i14 = 0; i14 < size; i14++) {
                int iKeyAt = this.f71725c.keyAt(i14);
                int iValueAt = this.f71725c.valueAt(i14);
                h0.this.f71709h.put(iKeyAt, true);
                h0.this.f71710i.put(iValueAt, true);
                i0 i0Var = (i0) this.f71724b.valueAt(i14);
                if (i0Var != null) {
                    if (i0Var != h0.this.f71718q) {
                        i0Var.a(l0Var, h0.this.f71713l, new i0.d(iJ, iKeyAt, 8192));
                    }
                    h0.this.f71708g.put(iValueAt, i0Var);
                }
            }
            if (h0.this.f71702a == 2) {
                if (h0.this.f71715n) {
                    return;
                }
                h0.this.f71713l.endTracks();
                h0.this.f71714m = 0;
                h0.this.f71715n = true;
                return;
            }
            h0.this.f71708g.remove(this.f71726d);
            h0 h0Var2 = h0.this;
            h0Var2.f71714m = h0Var2.f71702a == 1 ? 0 : h0.this.f71714m - 1;
            if (h0.this.f71714m == 0) {
                h0.this.f71713l.endTracks();
                h0.this.f71715n = true;
            }
        }

        @Override
        public void a(l0 l0Var, i9.n nVar, i0.d dVar) {
        }
    }
}
