package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

final class q implements n, n.a {

    private final n[] f25589a;

    private final v9.d f25591c;

    private n.a f25594f;

    private v9.y f25595g;

    private b0 f25597i;

    private final ArrayList f25592d = new ArrayList();

    private final HashMap f25593e = new HashMap();

    private final IdentityHashMap f25590b = new IdentityHashMap();

    private n[] f25596h = new n[0];

    private static final class a implements na.s {

        private final na.s f25598a;

        private final v9.w f25599b;

        public a(na.s sVar, v9.w wVar) {
            this.f25598a = sVar;
            this.f25599b = wVar;
        }

        @Override
        public void a() {
            this.f25598a.a();
        }

        @Override
        public void b(boolean z10) {
            this.f25598a.b(z10);
        }

        @Override
        public boolean blacklist(int i10, long j10) {
            return this.f25598a.blacklist(i10, j10);
        }

        @Override
        public void c() {
            this.f25598a.c();
        }

        @Override
        public boolean d(int i10, long j10) {
            return this.f25598a.d(i10, j10);
        }

        @Override
        public void disable() {
            this.f25598a.disable();
        }

        @Override
        public boolean e(long j10, x9.f fVar, List list) {
            return this.f25598a.e(j10, fVar, list);
        }

        @Override
        public void enable() {
            this.f25598a.enable();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25598a.equals(aVar.f25598a) && this.f25599b.equals(aVar.f25599b);
        }

        @Override
        public int evaluateQueueSize(long j10, List list) {
            return this.f25598a.evaluateQueueSize(j10, list);
        }

        @Override
        public void f(long j10, long j11, long j12, List list, x9.o[] oVarArr) {
            this.f25598a.f(j10, j11, j12, list, oVarArr);
        }

        @Override
        public int g(p1 p1Var) {
            return this.f25598a.g(p1Var);
        }

        @Override
        public p1 getFormat(int i10) {
            return this.f25598a.getFormat(i10);
        }

        @Override
        public int getIndexInTrackGroup(int i10) {
            return this.f25598a.getIndexInTrackGroup(i10);
        }

        @Override
        public p1 getSelectedFormat() {
            return this.f25598a.getSelectedFormat();
        }

        @Override
        public int getSelectedIndex() {
            return this.f25598a.getSelectedIndex();
        }

        @Override
        public int getSelectedIndexInTrackGroup() {
            return this.f25598a.getSelectedIndexInTrackGroup();
        }

        @Override
        public Object getSelectionData() {
            return this.f25598a.getSelectionData();
        }

        @Override
        public int getSelectionReason() {
            return this.f25598a.getSelectionReason();
        }

        @Override
        public v9.w getTrackGroup() {
            return this.f25599b;
        }

        public int hashCode() {
            return ((527 + this.f25599b.hashCode()) * 31) + this.f25598a.hashCode();
        }

        @Override
        public int indexOf(int i10) {
            return this.f25598a.indexOf(i10);
        }

        @Override
        public int length() {
            return this.f25598a.length();
        }

        @Override
        public void onPlaybackSpeed(float f10) {
            this.f25598a.onPlaybackSpeed(f10);
        }
    }

    private static final class b implements n, n.a {

        private final n f25600a;

        private final long f25601b;

        private n.a f25602c;

        public b(n nVar, long j10) {
            this.f25600a = nVar;
            this.f25601b = j10;
        }

        @Override
        public long b(long j10, d3 d3Var) {
            return this.f25600a.b(j10 - this.f25601b, d3Var) + this.f25601b;
        }

        @Override
        public void g(n nVar) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f25602c)).g(this);
        }

        @Override
        public boolean continueLoading(long j10) {
            return this.f25600a.continueLoading(j10 - this.f25601b);
        }

        @Override
        public void discardBuffer(long j10, boolean z10) {
            this.f25600a.discardBuffer(j10 - this.f25601b, z10);
        }

        @Override
        public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
            v9.s[] sVarArr3 = new v9.s[sVarArr2.length];
            int i10 = 0;
            while (true) {
                v9.s sVarB = null;
                if (i10 >= sVarArr2.length) {
                    break;
                }
                c cVar = (c) sVarArr2[i10];
                if (cVar != null) {
                    sVarB = cVar.b();
                }
                sVarArr3[i10] = sVarB;
                i10++;
            }
            long jE = this.f25600a.e(sVarArr, zArr, sVarArr3, zArr2, j10 - this.f25601b);
            for (int i11 = 0; i11 < sVarArr2.length; i11++) {
                v9.s sVar = sVarArr3[i11];
                if (sVar == null) {
                    sVarArr2[i11] = null;
                } else {
                    v9.s sVar2 = sVarArr2[i11];
                    if (sVar2 == null || ((c) sVar2).b() != sVar) {
                        sVarArr2[i11] = new c(sVar, this.f25601b);
                    }
                }
            }
            return jE + this.f25601b;
        }

        @Override
        public void f(n.a aVar, long j10) {
            this.f25602c = aVar;
            this.f25600a.f(this, j10 - this.f25601b);
        }

        @Override
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.f25600a.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f25601b + bufferedPositionUs;
        }

        @Override
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.f25600a.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f25601b + nextLoadPositionUs;
        }

        @Override
        public v9.y getTrackGroups() {
            return this.f25600a.getTrackGroups();
        }

        @Override
        public void h(n nVar) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f25602c)).h(this);
        }

        @Override
        public boolean isLoading() {
            return this.f25600a.isLoading();
        }

        @Override
        public void maybeThrowPrepareError() {
            this.f25600a.maybeThrowPrepareError();
        }

        @Override
        public long readDiscontinuity() {
            long discontinuity = this.f25600a.readDiscontinuity();
            return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : this.f25601b + discontinuity;
        }

        @Override
        public void reevaluateBuffer(long j10) {
            this.f25600a.reevaluateBuffer(j10 - this.f25601b);
        }

        @Override
        public long seekToUs(long j10) {
            return this.f25600a.seekToUs(j10 - this.f25601b) + this.f25601b;
        }
    }

    private static final class c implements v9.s {

        private final v9.s f25603a;

        private final long f25604b;

        public c(v9.s sVar, long j10) {
            this.f25603a = sVar;
            this.f25604b = j10;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int iA = this.f25603a.a(q1Var, decoderInputBuffer, i10);
            if (iA == -4) {
                decoderInputBuffer.f24204e = Math.max(0L, decoderInputBuffer.f24204e + this.f25604b);
            }
            return iA;
        }

        public v9.s b() {
            return this.f25603a;
        }

        @Override
        public boolean isReady() {
            return this.f25603a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.f25603a.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            return this.f25603a.skipData(j10 - this.f25604b);
        }
    }

    public q(v9.d dVar, long[] jArr, n... nVarArr) {
        this.f25591c = dVar;
        this.f25589a = nVarArr;
        this.f25597i = dVar.a(new b0[0]);
        for (int i10 = 0; i10 < nVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f25589a[i10] = new b(nVarArr[i10], j10);
            }
        }
    }

    public n a(int i10) {
        n nVar = this.f25589a[i10];
        return nVar instanceof b ? ((b) nVar).f25600a : nVar;
    }

    @Override
    public long b(long j10, d3 d3Var) {
        n[] nVarArr = this.f25596h;
        return (nVarArr.length > 0 ? nVarArr[0] : this.f25589a[0]).b(j10, d3Var);
    }

    @Override
    public void g(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25594f)).g(this);
    }

    @Override
    public boolean continueLoading(long j10) {
        if (this.f25592d.isEmpty()) {
            return this.f25597i.continueLoading(j10);
        }
        int size = this.f25592d.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((n) this.f25592d.get(i10)).continueLoading(j10);
        }
        return false;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (n nVar : this.f25596h) {
            nVar.discardBuffer(j10, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        Integer num;
        int[] iArr = new int[sVarArr.length];
        int[] iArr2 = new int[sVarArr.length];
        int i10 = 0;
        while (true) {
            num = null;
            if (i10 >= sVarArr.length) {
                break;
            }
            v9.s sVar = sVarArr2[i10];
            num = sVar != null ? (Integer) this.f25590b.get(sVar) : null;
            iArr[i10] = num == null ? -1 : num.intValue();
            iArr2[i10] = -1;
            na.s sVar2 = sVarArr[i10];
            if (sVar2 != null) {
                v9.w wVar = (v9.w) com.google.android.exoplayer2.util.a.e((v9.w) this.f25593e.get(sVar2.getTrackGroup()));
                int i11 = 0;
                while (true) {
                    n[] nVarArr = this.f25589a;
                    if (i11 >= nVarArr.length) {
                        break;
                    }
                    if (nVarArr[i11].getTrackGroups().c(wVar) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
            i10++;
        }
        this.f25590b.clear();
        int length = sVarArr.length;
        v9.s[] sVarArr3 = new v9.s[length];
        v9.s[] sVarArr4 = new v9.s[sVarArr.length];
        Object[] objArr = new na.s[sVarArr.length];
        ArrayList arrayList = new ArrayList(this.f25589a.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < this.f25589a.length) {
            for (int i13 = 0; i13 < sVarArr.length; i13++) {
                sVarArr4[i13] = iArr[i13] == i12 ? sVarArr2[i13] : num;
                if (iArr2[i13] == i12) {
                    na.s sVar3 = (na.s) com.google.android.exoplayer2.util.a.e(sVarArr[i13]);
                    objArr[i13] = new a(sVar3, (v9.w) com.google.android.exoplayer2.util.a.e((v9.w) this.f25593e.get(sVar3.getTrackGroup())));
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jE = this.f25589a[i12].e(objArr, zArr, sVarArr4, zArr2, j11);
            if (i14 == 0) {
                j11 = jE;
            } else if (jE != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < sVarArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    v9.s sVar4 = (v9.s) com.google.android.exoplayer2.util.a.e(sVarArr4[i15]);
                    sVarArr3[i15] = sVarArr4[i15];
                    this.f25590b.put(sVar4, Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    com.google.android.exoplayer2.util.a.g(sVarArr4[i15] == 0);
                }
            }
            if (z10) {
                arrayList2.add(this.f25589a[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            num = null;
        }
        System.arraycopy(sVarArr3, 0, sVarArr2, 0, length);
        n[] nVarArr2 = (n[]) arrayList.toArray(new n[0]);
        this.f25596h = nVarArr2;
        this.f25597i = this.f25591c.a(nVarArr2);
        return j11;
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25594f = aVar;
        Collections.addAll(this.f25592d, this.f25589a);
        for (n nVar : this.f25589a) {
            nVar.f(this, j10);
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f25597i.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f25597i.getNextLoadPositionUs();
    }

    @Override
    public v9.y getTrackGroups() {
        return (v9.y) com.google.android.exoplayer2.util.a.e(this.f25595g);
    }

    @Override
    public void h(n nVar) {
        this.f25592d.remove(nVar);
        if (!this.f25592d.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (n nVar2 : this.f25589a) {
            i10 += nVar2.getTrackGroups().f73561a;
        }
        v9.w[] wVarArr = new v9.w[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            n[] nVarArr = this.f25589a;
            if (i11 >= nVarArr.length) {
                this.f25595g = new v9.y(wVarArr);
                ((n.a) com.google.android.exoplayer2.util.a.e(this.f25594f)).h(this);
                return;
            }
            v9.y trackGroups = nVarArr[i11].getTrackGroups();
            int i13 = trackGroups.f73561a;
            int i14 = 0;
            while (i14 < i13) {
                v9.w wVarB = trackGroups.b(i14);
                v9.w wVarB2 = wVarB.b(i11 + ":" + wVarB.f73555b);
                this.f25593e.put(wVarB2, wVarB);
                wVarArr[i12] = wVarB2;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override
    public boolean isLoading() {
        return this.f25597i.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() {
        for (n nVar : this.f25589a) {
            nVar.maybeThrowPrepareError();
        }
    }

    @Override
    public long readDiscontinuity() {
        long j10 = -9223372036854775807L;
        for (n nVar : this.f25596h) {
            long discontinuity = nVar.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j10 != C.TIME_UNSET && nVar.seekToUs(j10) != j10) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j10 == C.TIME_UNSET) {
                for (n nVar2 : this.f25596h) {
                    if (nVar2 == nVar) {
                        break;
                    }
                    if (nVar2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j10 = discontinuity;
            } else if (discontinuity != j10) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j10;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f25597i.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        long jSeekToUs = this.f25596h[0].seekToUs(j10);
        int i10 = 1;
        while (true) {
            n[] nVarArr = this.f25596h;
            if (i10 >= nVarArr.length) {
                return jSeekToUs;
            }
            if (nVarArr[i10].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }
}
