package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

final class u implements q, q.a {

    private final q[] f12581a;

    private final boolean[] f12582b;

    private final f2.e f12584d;

    private q.a f12587g;

    private f2.z f12588h;

    private f0 f12590j;

    private final ArrayList f12585e = new ArrayList();

    private final HashMap f12586f = new HashMap();

    private final IdentityHashMap f12583c = new IdentityHashMap();

    private q[] f12589i = new q[0];

    private static final class a implements i2.z {

        private final i2.z f12591a;

        private final androidx.media3.common.f0 f12592b;

        public a(i2.z zVar, androidx.media3.common.f0 f0Var) {
            this.f12591a = zVar;
            this.f12592b = f0Var;
        }

        @Override
        public void a() {
            this.f12591a.a();
        }

        @Override
        public void b(boolean z10) {
            this.f12591a.b(z10);
        }

        @Override
        public void c() {
            this.f12591a.c();
        }

        @Override
        public boolean d(int i10, long j10) {
            return this.f12591a.d(i10, j10);
        }

        @Override
        public void disable() {
            this.f12591a.disable();
        }

        @Override
        public int e(androidx.media3.common.r rVar) {
            return this.f12591a.indexOf(this.f12592b.b(rVar));
        }

        @Override
        public void enable() {
            this.f12591a.enable();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f12591a.equals(aVar.f12591a) && this.f12592b.equals(aVar.f12592b);
        }

        @Override
        public int evaluateQueueSize(long j10, List list) {
            return this.f12591a.evaluateQueueSize(j10, list);
        }

        @Override
        public void f(long j10, long j11, long j12, List list, g2.n[] nVarArr) {
            this.f12591a.f(j10, j11, j12, list, nVarArr);
        }

        @Override
        public boolean g(int i10, long j10) {
            return this.f12591a.g(i10, j10);
        }

        @Override
        public androidx.media3.common.r getFormat(int i10) {
            return this.f12592b.a(this.f12591a.getIndexInTrackGroup(i10));
        }

        @Override
        public int getIndexInTrackGroup(int i10) {
            return this.f12591a.getIndexInTrackGroup(i10);
        }

        @Override
        public androidx.media3.common.r getSelectedFormat() {
            return this.f12592b.a(this.f12591a.getSelectedIndexInTrackGroup());
        }

        @Override
        public int getSelectedIndex() {
            return this.f12591a.getSelectedIndex();
        }

        @Override
        public int getSelectedIndexInTrackGroup() {
            return this.f12591a.getSelectedIndexInTrackGroup();
        }

        @Override
        public Object getSelectionData() {
            return this.f12591a.getSelectionData();
        }

        @Override
        public int getSelectionReason() {
            return this.f12591a.getSelectionReason();
        }

        @Override
        public androidx.media3.common.f0 getTrackGroup() {
            return this.f12592b;
        }

        @Override
        public boolean h(long j10, g2.e eVar, List list) {
            return this.f12591a.h(j10, eVar, list);
        }

        public int hashCode() {
            return ((527 + this.f12592b.hashCode()) * 31) + this.f12591a.hashCode();
        }

        @Override
        public int indexOf(int i10) {
            return this.f12591a.indexOf(i10);
        }

        @Override
        public int length() {
            return this.f12591a.length();
        }

        @Override
        public void onPlaybackSpeed(float f10) {
            this.f12591a.onPlaybackSpeed(f10);
        }
    }

    public u(f2.e eVar, long[] jArr, q... qVarArr) {
        this.f12584d = eVar;
        this.f12581a = qVarArr;
        this.f12590j = eVar.b();
        this.f12582b = new boolean[qVarArr.length];
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f12582b[i10] = true;
                this.f12581a[i10] = new k0(qVarArr[i10], j10);
            }
        }
    }

    public static List j(q qVar) {
        return qVar.getTrackGroups().c();
    }

    @Override
    public boolean a(v2 v2Var) {
        if (this.f12585e.isEmpty()) {
            return this.f12590j.a(v2Var);
        }
        int size = this.f12585e.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((q) this.f12585e.get(i10)).a(v2Var);
        }
        return false;
    }

    @Override
    public long b(long j10, c4 c4Var) {
        q[] qVarArr = this.f12589i;
        return (qVarArr.length > 0 ? qVarArr[0] : this.f12581a[0]).b(j10, c4Var);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        for (q qVar : this.f12589i) {
            qVar.discardBuffer(j10, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        Integer num;
        int[] iArr = new int[zVarArr.length];
        int[] iArr2 = new int[zVarArr.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            num = null;
            if (i11 >= zVarArr.length) {
                break;
            }
            f2.u uVar = uVarArr[i11];
            num = uVar != null ? (Integer) this.f12583c.get(uVar) : null;
            iArr[i11] = num == null ? -1 : num.intValue();
            i2.z zVar = zVarArr[i11];
            if (zVar != null) {
                String str = zVar.getTrackGroup().f9660b;
                iArr2[i11] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i11] = -1;
            }
            i11++;
        }
        this.f12583c.clear();
        int length = zVarArr.length;
        f2.u[] uVarArr2 = new f2.u[length];
        f2.u[] uVarArr3 = new f2.u[zVarArr.length];
        Object[] objArr = new i2.z[zVarArr.length];
        ArrayList arrayList = new ArrayList(this.f12581a.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < this.f12581a.length) {
            for (int i13 = i10; i13 < zVarArr.length; i13++) {
                uVarArr3[i13] = iArr[i13] == i12 ? uVarArr[i13] : num;
                if (iArr2[i13] == i12) {
                    i2.z zVar2 = (i2.z) androidx.media3.common.util.a.e(zVarArr[i13]);
                    objArr[i13] = new a(zVar2, (androidx.media3.common.f0) androidx.media3.common.util.a.e((androidx.media3.common.f0) this.f12586f.get(zVar2.getTrackGroup())));
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jE = this.f12581a[i12].e(objArr, zArr, uVarArr3, zArr2, j11);
            if (i14 == 0) {
                j11 = jE;
            } else if (jE != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < zVarArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    f2.u uVar2 = (f2.u) androidx.media3.common.util.a.e(uVarArr3[i15]);
                    uVarArr2[i15] = uVarArr3[i15];
                    this.f12583c.put(uVar2, Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    androidx.media3.common.util.a.g(uVarArr3[i15] == 0);
                }
            }
            if (z10) {
                arrayList2.add(this.f12581a[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            i10 = 0;
            num = null;
        }
        int i16 = i10;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(uVarArr2, i16, uVarArr, i16, length);
        this.f12589i = (q[]) arrayList3.toArray(new q[i16]);
        this.f12590j = this.f12584d.a(arrayList3, Lists.o(arrayList3, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return u.j((q) obj);
            }
        }));
        return j11;
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f12587g = aVar;
        Collections.addAll(this.f12585e, this.f12581a);
        for (q qVar : this.f12581a) {
            qVar.f(this, j10);
        }
    }

    @Override
    public void g(q qVar) {
        this.f12585e.remove(qVar);
        if (!this.f12585e.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (q qVar2 : this.f12581a) {
            i10 += qVar2.getTrackGroups().f59968a;
        }
        androidx.media3.common.f0[] f0VarArr = new androidx.media3.common.f0[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            q[] qVarArr = this.f12581a;
            if (i11 >= qVarArr.length) {
                this.f12588h = new f2.z(f0VarArr);
                ((q.a) androidx.media3.common.util.a.e(this.f12587g)).g(this);
                return;
            }
            f2.z trackGroups = qVarArr[i11].getTrackGroups();
            int i13 = trackGroups.f59968a;
            int i14 = 0;
            while (i14 < i13) {
                androidx.media3.common.f0 f0VarB = trackGroups.b(i14);
                androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[f0VarB.f9659a];
                for (int i15 = 0; i15 < f0VarB.f9659a; i15++) {
                    androidx.media3.common.r rVarA = f0VarB.a(i15);
                    androidx.media3.common.r.b bVarB = rVarA.b();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i11);
                    sb2.append(":");
                    String str = rVarA.f9835a;
                    if (str == null) {
                        str = "";
                    }
                    sb2.append(str);
                    rVarArr[i15] = bVarB.f0(sb2.toString()).N();
                }
                androidx.media3.common.f0 f0Var = new androidx.media3.common.f0(i11 + ":" + f0VarB.f9660b, rVarArr);
                this.f12586f.put(f0Var, f0VarB);
                f0VarArr[i12] = f0Var;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f12590j.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.f12590j.getNextLoadPositionUs();
    }

    @Override
    public f2.z getTrackGroups() {
        return (f2.z) androidx.media3.common.util.a.e(this.f12588h);
    }

    public q i(int i10) {
        return this.f12582b[i10] ? ((k0) this.f12581a[i10]).c() : this.f12581a[i10];
    }

    @Override
    public boolean isLoading() {
        return this.f12590j.isLoading();
    }

    @Override
    public void h(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12587g)).h(this);
    }

    @Override
    public void maybeThrowPrepareError() {
        for (q qVar : this.f12581a) {
            qVar.maybeThrowPrepareError();
        }
    }

    @Override
    public long readDiscontinuity() {
        long j10 = -9223372036854775807L;
        for (q qVar : this.f12589i) {
            long discontinuity = qVar.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j10 != C.TIME_UNSET && qVar.seekToUs(j10) != j10) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j10 == C.TIME_UNSET) {
                for (q qVar2 : this.f12589i) {
                    if (qVar2 == qVar) {
                        break;
                    }
                    if (qVar2.seekToUs(discontinuity) != discontinuity) {
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
        this.f12590j.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        long jSeekToUs = this.f12589i[0].seekToUs(j10);
        int i10 = 1;
        while (true) {
            q[] qVarArr = this.f12589i;
            if (i10 >= qVarArr.length) {
                return jSeekToUs;
            }
            if (qVarArr[i10].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }
}
