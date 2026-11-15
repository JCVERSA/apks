package r3;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class k0 implements k2.r {

    public static final k2.x f70542v = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return k0.x();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };

    private final int f70543a;

    private final int f70544b;

    private final int f70545c;

    private final List f70546d;

    private final androidx.media3.common.util.j0 f70547e;

    private final SparseIntArray f70548f;

    private final l0.c f70549g;

    private final h3.s.a f70550h;

    private final SparseArray f70551i;

    private final SparseBooleanArray f70552j;

    private final SparseBooleanArray f70553k;

    private final i0 f70554l;

    private h0 f70555m;

    private k2.t f70556n;

    private int f70557o;

    private boolean f70558p;

    private boolean f70559q;

    private boolean f70560r;

    private l0 f70561s;

    private int f70562t;

    private int f70563u;

    @Deprecated
    public k0() {
        this(1, 1, h3.s.a.f61264a, new p0(0L), new j(0), 112800);
    }

    private boolean A(int i10) {
        return this.f70543a == 2 || this.f70558p || !this.f70553k.get(i10, false);
    }

    static int l(k0 k0Var) {
        int i10 = k0Var.f70557o;
        k0Var.f70557o = i10 + 1;
        return i10;
    }

    private boolean v(k2.s sVar) {
        byte[] bArrE = this.f70547e.e();
        if (9400 - this.f70547e.f() < 188) {
            int iA = this.f70547e.a();
            if (iA > 0) {
                System.arraycopy(bArrE, this.f70547e.f(), bArrE, 0, iA);
            }
            this.f70547e.U(bArrE, iA);
        }
        while (this.f70547e.a() < 188) {
            int iG = this.f70547e.g();
            int i10 = sVar.read(bArrE, iG, 9400 - iG);
            if (i10 == -1) {
                return false;
            }
            this.f70547e.V(iG + i10);
        }
        return true;
    }

    private int w() throws ParserException {
        int iF = this.f70547e.f();
        int iG = this.f70547e.g();
        int iA = m0.a(this.f70547e.e(), iF, iG);
        this.f70547e.W(iA);
        int i10 = iA + 188;
        if (i10 > iG) {
            int i11 = this.f70562t + (iA - iF);
            this.f70562t = i11;
            if (this.f70543a == 2 && i11 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f70562t = 0;
        }
        return i10;
    }

    public static k2.r[] x() {
        return new k2.r[]{new k0(1, h3.s.a.f61264a)};
    }

    private void y(long j10) {
        if (this.f70559q) {
            return;
        }
        this.f70559q = true;
        if (this.f70554l.b() == C.TIME_UNSET) {
            this.f70556n.d(new k2.m0.b(this.f70554l.b()));
            return;
        }
        h0 h0Var = new h0(this.f70554l.c(), this.f70554l.b(), j10, this.f70563u, this.f70545c);
        this.f70555m = h0Var;
        this.f70556n.d(h0Var.b());
    }

    private void z() {
        this.f70552j.clear();
        this.f70551i.clear();
        SparseArray sparseArrayCreateInitialPayloadReaders = this.f70549g.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f70551i.put(sparseArrayCreateInitialPayloadReaders.keyAt(i10), (l0) sparseArrayCreateInitialPayloadReaders.valueAt(i10));
        }
        this.f70551i.put(0, new e0(new a()));
        this.f70561s = null;
    }

    @Override
    public boolean b(k2.s sVar) {
        byte[] bArrE = this.f70547e.e();
        sVar.peekFully(bArrE, 0, 940);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    sVar.skipFully(i10);
                    return true;
                }
                if (bArrE[(i11 * 188) + i10] != 71) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, k2.l0 l0Var) throws ParserException {
        long length = sVar.getLength();
        boolean z10 = this.f70543a == 2;
        if (this.f70558p) {
            if (length != -1 && !z10 && !this.f70554l.d()) {
                return this.f70554l.e(sVar, l0Var, this.f70563u);
            }
            y(length);
            if (this.f70560r) {
                this.f70560r = false;
                seek(0L, 0L);
                if (sVar.getPosition() != 0) {
                    l0Var.f63627a = 0L;
                    return 1;
                }
            }
            h0 h0Var = this.f70555m;
            if (h0Var != null && h0Var.d()) {
                return this.f70555m.c(sVar, l0Var);
            }
        }
        if (!v(sVar)) {
            for (int i10 = 0; i10 < this.f70551i.size(); i10++) {
                l0 l0Var2 = (l0) this.f70551i.valueAt(i10);
                if (l0Var2 instanceof y) {
                    y yVar = (y) l0Var2;
                    if (yVar.c(z10)) {
                        yVar.a(new androidx.media3.common.util.j0(), 1);
                    }
                }
            }
            return -1;
        }
        int iW = w();
        int iG = this.f70547e.g();
        if (iW > iG) {
            return 0;
        }
        int iQ = this.f70547e.q();
        if ((8388608 & iQ) != 0) {
            this.f70547e.W(iW);
            return 0;
        }
        int i11 = (4194304 & iQ) != 0 ? 1 : 0;
        int i12 = (2096896 & iQ) >> 8;
        boolean z11 = (iQ & 32) != 0;
        l0 l0Var3 = (iQ & 16) != 0 ? (l0) this.f70551i.get(i12) : null;
        if (l0Var3 == null) {
            this.f70547e.W(iW);
            return 0;
        }
        if (this.f70543a != 2) {
            int i13 = iQ & 15;
            int i14 = this.f70548f.get(i12, i13 - 1);
            this.f70548f.put(i12, i13);
            if (i14 == i13) {
                this.f70547e.W(iW);
                return 0;
            }
            if (i13 != ((i14 + 1) & 15)) {
                l0Var3.seek();
            }
        }
        if (z11) {
            int iH = this.f70547e.H();
            i11 |= (this.f70547e.H() & 64) != 0 ? 2 : 0;
            this.f70547e.X(iH - 1);
        }
        boolean z12 = this.f70558p;
        if (A(i12)) {
            this.f70547e.V(iW);
            l0Var3.a(this.f70547e, i11);
            this.f70547e.V(iG);
        }
        if (this.f70543a != 2 && !z12 && this.f70558p && length != -1) {
            this.f70560r = true;
        }
        this.f70547e.W(iW);
        return 0;
    }

    @Override
    public void e(k2.t tVar) {
        if ((this.f70544b & 1) == 0) {
            tVar = new h3.t(tVar, this.f70550h);
        }
        this.f70556n = tVar;
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        h0 h0Var;
        androidx.media3.common.util.a.g(this.f70543a != 2);
        int size = this.f70546d.size();
        for (int i10 = 0; i10 < size; i10++) {
            p0 p0Var = (p0) this.f70546d.get(i10);
            boolean z10 = p0Var.f() == C.TIME_UNSET;
            if (!z10) {
                long jD = p0Var.d();
                z10 = (jD == C.TIME_UNSET || jD == 0 || jD == j11) ? false : true;
            }
            if (z10) {
                p0Var.i(j11);
            }
        }
        if (j11 != 0 && (h0Var = this.f70555m) != null) {
            h0Var.h(j11);
        }
        this.f70547e.S(0);
        this.f70548f.clear();
        for (int i11 = 0; i11 < this.f70551i.size(); i11++) {
            ((l0) this.f70551i.valueAt(i11)).seek();
        }
        this.f70562t = 0;
    }

    public k0(int i10, h3.s.a aVar) {
        this(1, i10, aVar, new p0(0L), new j(0), 112800);
    }

    public k0(int i10, int i11, h3.s.a aVar, p0 p0Var, l0.c cVar, int i12) {
        this.f70549g = (l0.c) androidx.media3.common.util.a.e(cVar);
        this.f70545c = i12;
        this.f70543a = i10;
        this.f70544b = i11;
        this.f70550h = aVar;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f70546d = arrayList;
            arrayList.add(p0Var);
        } else {
            this.f70546d = Collections.singletonList(p0Var);
        }
        this.f70547e = new androidx.media3.common.util.j0(new byte[9400], 0);
        this.f70552j = new SparseBooleanArray();
        this.f70553k = new SparseBooleanArray();
        this.f70551i = new SparseArray();
        this.f70548f = new SparseIntArray();
        this.f70554l = new i0(i12);
        this.f70556n = k2.t.f63690j1;
        this.f70563u = -1;
        z();
    }

    @Override
    public void release() {
    }

    private class a implements d0 {

        private final androidx.media3.common.util.i0 f70564a = new androidx.media3.common.util.i0(new byte[4]);

        public a() {
        }

        @Override
        public void a(androidx.media3.common.util.j0 j0Var) {
            if (j0Var.H() == 0 && (j0Var.H() & 128) != 0) {
                j0Var.X(6);
                int iA = j0Var.a() / 4;
                for (int i10 = 0; i10 < iA; i10++) {
                    j0Var.k(this.f70564a, 4);
                    int iH = this.f70564a.h(16);
                    this.f70564a.r(3);
                    if (iH == 0) {
                        this.f70564a.r(13);
                    } else {
                        int iH2 = this.f70564a.h(13);
                        if (k0.this.f70551i.get(iH2) == null) {
                            k0.this.f70551i.put(iH2, new e0(k0.this.new b(iH2)));
                            k0.l(k0.this);
                        }
                    }
                }
                if (k0.this.f70543a != 2) {
                    k0.this.f70551i.remove(0);
                }
            }
        }

        @Override
        public void b(p0 p0Var, k2.t tVar, l0.d dVar) {
        }
    }

    private class b implements d0 {

        private final androidx.media3.common.util.i0 f70566a = new androidx.media3.common.util.i0(new byte[5]);

        private final SparseArray f70567b = new SparseArray();

        private final SparseIntArray f70568c = new SparseIntArray();

        private final int f70569d;

        public b(int i10) {
            this.f70569d = i10;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x004a  */
        /* JADX WARN: Code duplicated, block: B:24:0x005c  */
        /* JADX WARN: Code duplicated, block: B:27:0x0063  */
        private l0.b c(androidx.media3.common.util.j0 j0Var, int i10) {
            int i11;
            int iF = j0Var.f();
            int i12 = iF + i10;
            int i13 = -1;
            String str = null;
            ArrayList arrayList = null;
            int iH = 0;
            while (j0Var.f() < i12) {
                int iH2 = j0Var.H();
                int iF2 = j0Var.f() + j0Var.H();
                if (iF2 > i12) {
                    break;
                }
                if (iH2 == 5) {
                    long J = j0Var.J();
                    if (J == 1094921523) {
                        i13 = 129;
                    } else if (J == 1161904947) {
                        i13 = 135;
                    } else if (J == 1094921524) {
                        i13 = 172;
                    } else if (J == 1212503619) {
                        i13 = 36;
                    }
                } else if (iH2 == 106) {
                    i13 = 129;
                } else if (iH2 == 122) {
                    i13 = 135;
                } else if (iH2 == 127) {
                    int iH3 = j0Var.H();
                    if (iH3 == 21) {
                        i13 = 172;
                    } else if (iH3 == 14) {
                        i13 = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                    } else if (iH3 == 33) {
                        i13 = 139;
                    }
                } else {
                    if (iH2 == 123) {
                        i11 = 138;
                    } else if (iH2 == 10) {
                        String strTrim = j0Var.E(3).trim();
                        iH = j0Var.H();
                        str = strTrim;
                    } else if (iH2 == 89) {
                        ArrayList arrayList2 = new ArrayList();
                        while (j0Var.f() < iF2) {
                            String strTrim2 = j0Var.E(3).trim();
                            int iH4 = j0Var.H();
                            byte[] bArr = new byte[4];
                            j0Var.l(bArr, 0, 4);
                            arrayList2.add(new l0.a(strTrim2, iH4, bArr));
                        }
                        arrayList = arrayList2;
                        i13 = 89;
                    } else if (iH2 == 111) {
                        i11 = InputDeviceCompat.SOURCE_KEYBOARD;
                    }
                    i13 = i11;
                }
                j0Var.X(iF2 - j0Var.f());
            }
            j0Var.W(i12);
            return new l0.b(i13, str, iH, arrayList, Arrays.copyOfRange(j0Var.e(), iF, i12));
        }

        @Override
        public void a(androidx.media3.common.util.j0 j0Var) {
            p0 p0Var;
            if (j0Var.H() != 2) {
                return;
            }
            if (k0.this.f70543a == 1 || k0.this.f70543a == 2 || k0.this.f70557o == 1) {
                p0Var = (p0) k0.this.f70546d.get(0);
            } else {
                p0Var = new p0(((p0) k0.this.f70546d.get(0)).d());
                k0.this.f70546d.add(p0Var);
            }
            if ((j0Var.H() & 128) == 0) {
                return;
            }
            j0Var.X(1);
            int iP = j0Var.P();
            int i10 = 3;
            j0Var.X(3);
            j0Var.k(this.f70566a, 2);
            this.f70566a.r(3);
            int i11 = 13;
            k0.this.f70563u = this.f70566a.h(13);
            j0Var.k(this.f70566a, 2);
            int i12 = 4;
            this.f70566a.r(4);
            j0Var.X(this.f70566a.h(12));
            if (k0.this.f70543a == 2 && k0.this.f70561s == null) {
                l0.b bVar = new l0.b(21, null, 0, null, a1.f10043f);
                k0 k0Var = k0.this;
                k0Var.f70561s = k0Var.f70549g.a(21, bVar);
                if (k0.this.f70561s != null) {
                    k0.this.f70561s.b(p0Var, k0.this.f70556n, new l0.d(iP, 21, 8192));
                }
            }
            this.f70567b.clear();
            this.f70568c.clear();
            int iA = j0Var.a();
            while (iA > 0) {
                j0Var.k(this.f70566a, 5);
                int iH = this.f70566a.h(8);
                this.f70566a.r(i10);
                int iH2 = this.f70566a.h(i11);
                this.f70566a.r(i12);
                int iH3 = this.f70566a.h(12);
                l0.b bVarC = c(j0Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarC.f70581a;
                }
                iA -= iH3 + 5;
                int i13 = k0.this.f70543a == 2 ? iH : iH2;
                if (!k0.this.f70552j.get(i13)) {
                    l0 l0VarA = (k0.this.f70543a == 2 && iH == 21) ? k0.this.f70561s : k0.this.f70549g.a(iH, bVarC);
                    if (k0.this.f70543a != 2 || iH2 < this.f70568c.get(i13, 8192)) {
                        this.f70568c.put(i13, iH2);
                        this.f70567b.put(i13, l0VarA);
                    }
                }
                i10 = 3;
                i12 = 4;
                i11 = 13;
            }
            int size = this.f70568c.size();
            for (int i14 = 0; i14 < size; i14++) {
                int iKeyAt = this.f70568c.keyAt(i14);
                int iValueAt = this.f70568c.valueAt(i14);
                k0.this.f70552j.put(iKeyAt, true);
                k0.this.f70553k.put(iValueAt, true);
                l0 l0Var = (l0) this.f70567b.valueAt(i14);
                if (l0Var != null) {
                    if (l0Var != k0.this.f70561s) {
                        l0Var.b(p0Var, k0.this.f70556n, new l0.d(iP, iKeyAt, 8192));
                    }
                    k0.this.f70551i.put(iValueAt, l0Var);
                }
            }
            if (k0.this.f70543a == 2) {
                if (k0.this.f70558p) {
                    return;
                }
                k0.this.f70556n.endTracks();
                k0.this.f70557o = 0;
                k0.this.f70558p = true;
                return;
            }
            k0.this.f70551i.remove(this.f70569d);
            k0 k0Var2 = k0.this;
            k0Var2.f70557o = k0Var2.f70543a == 1 ? 0 : k0.this.f70557o - 1;
            if (k0.this.f70557o == 0) {
                k0.this.f70556n.endTracks();
                k0.this.f70558p = true;
            }
        }

        @Override
        public void b(p0 p0Var, k2.t tVar, l0.d dVar) {
        }
    }
}
