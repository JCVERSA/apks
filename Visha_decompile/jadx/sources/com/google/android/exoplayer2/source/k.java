package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import defpackage.eva;
import defpackage.h19;
import defpackage.ka9;
import defpackage.o44;
import defpackage.od1;
import defpackage.qi3;
import defpackage.zi;
import defpackage.zua;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

public final class k implements h, h.a {
    public final h[] b;
    public final od1 d;
    public h.a g;
    public eva h;
    public q j;
    public final ArrayList e = new ArrayList();
    public final HashMap f = new HashMap();
    public final IdentityHashMap c = new IdentityHashMap();
    public h[] i = new h[0];

    public static final class a implements qi3 {
        public final qi3 a;
        public final zua b;

        public a(qi3 qi3Var, zua zuaVar) {
            this.a = qi3Var;
            this.b = zuaVar;
        }

        @Override
        public void disable() {
            this.a.disable();
        }

        @Override
        public void enable() {
            this.a.enable();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        @Override
        public com.google.android.exoplayer2.k getFormat(int i) {
            return this.a.getFormat(i);
        }

        @Override
        public int getIndexInTrackGroup(int i) {
            return this.a.getIndexInTrackGroup(i);
        }

        @Override
        public com.google.android.exoplayer2.k getSelectedFormat() {
            return this.a.getSelectedFormat();
        }

        @Override
        public zua getTrackGroup() {
            return this.b;
        }

        public int hashCode() {
            return ((527 + this.b.hashCode()) * 31) + this.a.hashCode();
        }

        @Override
        public int indexOf(int i) {
            return this.a.indexOf(i);
        }

        @Override
        public int length() {
            return this.a.length();
        }

        @Override
        public void onDiscontinuity() {
            this.a.onDiscontinuity();
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z) {
            this.a.onPlayWhenReadyChanged(z);
        }

        @Override
        public void onPlaybackSpeed(float f) {
            this.a.onPlaybackSpeed(f);
        }

        @Override
        public void onRebuffer() {
            this.a.onRebuffer();
        }
    }

    public static final class b implements h, h.a {
        public final h b;
        public final long c;
        public h.a d;

        public b(h hVar, long j) {
            this.b = hVar;
            this.c = j;
        }

        @Override
        public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
            h19[] h19VarArr2 = new h19[h19VarArr.length];
            int i = 0;
            while (true) {
                h19 h19VarB = null;
                if (i >= h19VarArr.length) {
                    break;
                }
                c cVar = (c) h19VarArr[i];
                if (cVar != null) {
                    h19VarB = cVar.b();
                }
                h19VarArr2[i] = h19VarB;
                i++;
            }
            long jA = this.b.a(qi3VarArr, zArr, h19VarArr2, zArr2, j - this.c);
            for (int i2 = 0; i2 < h19VarArr.length; i2++) {
                h19 h19Var = h19VarArr2[i2];
                if (h19Var == null) {
                    h19VarArr[i2] = null;
                } else {
                    h19 h19Var2 = h19VarArr[i2];
                    if (h19Var2 == null || ((c) h19Var2).b() != h19Var) {
                        h19VarArr[i2] = new c(h19Var, this.c);
                    }
                }
            }
            return jA + this.c;
        }

        @Override
        public long c(long j, ka9 ka9Var) {
            return this.b.c(j - this.c, ka9Var) + this.c;
        }

        @Override
        public boolean continueLoading(long j) {
            return this.b.continueLoading(j - this.c);
        }

        @Override
        public void d(h hVar) {
            ((h.a) zi.e(this.d)).d(this);
        }

        @Override
        public void discardBuffer(long j, boolean z) {
            this.b.discardBuffer(j - this.c, z);
        }

        @Override
        public void b(h hVar) {
            ((h.a) zi.e(this.d)).b(this);
        }

        @Override
        public void g(h.a aVar, long j) {
            this.d = aVar;
            this.b.g(this, j - this.c);
        }

        @Override
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.b.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.c + bufferedPositionUs;
        }

        @Override
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.b.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.c + nextLoadPositionUs;
        }

        @Override
        public eva getTrackGroups() {
            return this.b.getTrackGroups();
        }

        @Override
        public boolean isLoading() {
            return this.b.isLoading();
        }

        @Override
        public void maybeThrowPrepareError() {
            this.b.maybeThrowPrepareError();
        }

        @Override
        public long readDiscontinuity() {
            long discontinuity = this.b.readDiscontinuity();
            return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : this.c + discontinuity;
        }

        @Override
        public void reevaluateBuffer(long j) {
            this.b.reevaluateBuffer(j - this.c);
        }

        @Override
        public long seekToUs(long j) {
            return this.b.seekToUs(j - this.c) + this.c;
        }
    }

    public static final class c implements h19 {
        public final h19 a;
        public final long b;

        public c(h19 h19Var, long j) {
            this.a = h19Var;
            this.b = j;
        }

        @Override
        public int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
            int iA = this.a.a(o44Var, decoderInputBuffer, i);
            if (iA == -4) {
                decoderInputBuffer.f = Math.max(0L, decoderInputBuffer.f + this.b);
            }
            return iA;
        }

        public h19 b() {
            return this.a;
        }

        @Override
        public boolean isReady() {
            return this.a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.a.maybeThrowError();
        }

        @Override
        public int skipData(long j) {
            return this.a.skipData(j - this.b);
        }
    }

    public k(od1 od1Var, long[] jArr, h... hVarArr) {
        this.d = od1Var;
        this.b = hVarArr;
        this.j = od1Var.a(new q[0]);
        for (int i = 0; i < hVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.b[i] = new b(hVarArr[i], j);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
        Integer num;
        int[] iArr = new int[qi3VarArr.length];
        int[] iArr2 = new int[qi3VarArr.length];
        int i = 0;
        while (true) {
            num = null;
            if (i >= qi3VarArr.length) {
                break;
            }
            h19 h19Var = h19VarArr[i];
            num = h19Var != null ? (Integer) this.c.get(h19Var) : null;
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            qi3 qi3Var = qi3VarArr[i];
            if (qi3Var != null) {
                zua zuaVar = (zua) zi.e((zua) this.f.get(qi3Var.getTrackGroup()));
                int i2 = 0;
                while (true) {
                    h[] hVarArr = this.b;
                    if (i2 >= hVarArr.length) {
                        break;
                    }
                    if (hVarArr[i2].getTrackGroups().c(zuaVar) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
            i++;
        }
        this.c.clear();
        int length = qi3VarArr.length;
        h19[] h19VarArr2 = new h19[length];
        h19[] h19VarArr3 = new h19[qi3VarArr.length];
        Object[] objArr = new qi3[qi3VarArr.length];
        ArrayList arrayList = new ArrayList(this.b.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.b.length) {
            for (int i4 = 0; i4 < qi3VarArr.length; i4++) {
                h19VarArr3[i4] = iArr[i4] == i3 ? h19VarArr[i4] : num;
                if (iArr2[i4] == i3) {
                    qi3 qi3Var2 = (qi3) zi.e(qi3VarArr[i4]);
                    objArr[i4] = new a(qi3Var2, (zua) zi.e((zua) this.f.get(qi3Var2.getTrackGroup())));
                } else {
                    objArr[i4] = num;
                }
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jA = this.b[i3].a(objArr, zArr, h19VarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jA;
            } else if (jA != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < qi3VarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    h19 h19Var2 = (h19) zi.e(h19VarArr3[i6]);
                    h19VarArr2[i6] = h19VarArr3[i6];
                    this.c.put(h19Var2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    zi.g(h19VarArr3[i6] == 0);
                }
            }
            if (z) {
                arrayList2.add(this.b[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            num = null;
        }
        System.arraycopy(h19VarArr2, 0, h19VarArr, 0, length);
        h[] hVarArr2 = (h[]) arrayList.toArray(new h[0]);
        this.i = hVarArr2;
        this.j = this.d.a(hVarArr2);
        return j2;
    }

    @Override
    public long c(long j, ka9 ka9Var) {
        h[] hVarArr = this.i;
        return (hVarArr.length > 0 ? hVarArr[0] : this.b[0]).c(j, ka9Var);
    }

    @Override
    public boolean continueLoading(long j) {
        if (this.e.isEmpty()) {
            return this.j.continueLoading(j);
        }
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            ((h) this.e.get(i)).continueLoading(j);
        }
        return false;
    }

    @Override
    public void d(h hVar) {
        this.e.remove(hVar);
        if (!this.e.isEmpty()) {
            return;
        }
        int i = 0;
        for (h hVar2 : this.b) {
            i += hVar2.getTrackGroups().b;
        }
        zua[] zuaVarArr = new zua[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            h[] hVarArr = this.b;
            if (i2 >= hVarArr.length) {
                this.h = new eva(zuaVarArr);
                ((h.a) zi.e(this.g)).d(this);
                return;
            }
            eva trackGroups = hVarArr[i2].getTrackGroups();
            int i4 = trackGroups.b;
            int i5 = 0;
            while (i5 < i4) {
                zua zuaVarB = trackGroups.b(i5);
                zua zuaVarB2 = zuaVarB.b(i2 + StringUtils.PROCESS_POSTFIX_DELIMITER + zuaVarB.c);
                this.f.put(zuaVarB2, zuaVarB);
                zuaVarArr[i3] = zuaVarB2;
                i5++;
                i3++;
            }
            i2++;
        }
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        for (h hVar : this.i) {
            hVar.discardBuffer(j, z);
        }
    }

    public h e(int i) {
        h hVar = this.b[i];
        return hVar instanceof b ? ((b) hVar).b : hVar;
    }

    @Override
    public void b(h hVar) {
        ((h.a) zi.e(this.g)).b(this);
    }

    @Override
    public void g(h.a aVar, long j) {
        this.g = aVar;
        Collections.addAll(this.e, this.b);
        for (h hVar : this.b) {
            hVar.g(this, j);
        }
    }

    @Override
    public long getBufferedPositionUs() {
        return this.j.getBufferedPositionUs();
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.j.getNextLoadPositionUs();
    }

    @Override
    public eva getTrackGroups() {
        return (eva) zi.e(this.h);
    }

    @Override
    public boolean isLoading() {
        return this.j.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() {
        for (h hVar : this.b) {
            hVar.maybeThrowPrepareError();
        }
    }

    @Override
    public long readDiscontinuity() {
        long j = -9223372036854775807L;
        for (h hVar : this.i) {
            long discontinuity = hVar.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j != C.TIME_UNSET && hVar.seekToUs(j) != j) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j == C.TIME_UNSET) {
                for (h hVar2 : this.i) {
                    if (hVar2 == hVar) {
                        break;
                    }
                    if (hVar2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j = discontinuity;
            } else if (discontinuity != j) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j;
    }

    @Override
    public void reevaluateBuffer(long j) {
        this.j.reevaluateBuffer(j);
    }

    @Override
    public long seekToUs(long j) {
        long jSeekToUs = this.i[0].seekToUs(j);
        int i = 1;
        while (true) {
            h[] hVarArr = this.i;
            if (i >= hVarArr.length) {
                return jSeekToUs;
            }
            if (hVarArr[i].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }
}
