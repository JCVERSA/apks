package na;

import android.os.SystemClock;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public abstract class c implements s {

    protected final v9.w f67008a;

    protected final int f67009b;

    protected final int[] f67010c;

    private final int f67011d;

    private final p1[] f67012e;

    private final long[] f67013f;

    private int f67014g;

    public c(v9.w wVar, int... iArr) {
        this(wVar, iArr, 0);
    }

    public static int i(p1 p1Var, p1 p1Var2) {
        return p1Var2.f24897h - p1Var.f24897h;
    }

    @Override
    public void a() {
        r.a(this);
    }

    @Override
    public void b(boolean z10) {
        r.b(this, z10);
    }

    @Override
    public boolean blacklist(int i10, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zD = d(i10, jElapsedRealtime);
        int i11 = 0;
        while (i11 < this.f67009b && !zD) {
            zD = (i11 == i10 || d(i11, jElapsedRealtime)) ? false : true;
            i11++;
        }
        if (!zD) {
            return false;
        }
        long[] jArr = this.f67013f;
        jArr[i10] = Math.max(jArr[i10], p0.b(jElapsedRealtime, j10, Long.MAX_VALUE));
        return true;
    }

    @Override
    public void c() {
        r.c(this);
    }

    @Override
    public boolean d(int i10, long j10) {
        return this.f67013f[i10] > j10;
    }

    @Override
    public boolean e(long j10, x9.f fVar, List list) {
        return r.d(this, j10, fVar, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f67008a == cVar.f67008a && Arrays.equals(this.f67010c, cVar.f67010c);
    }

    @Override
    public int evaluateQueueSize(long j10, List list) {
        return list.size();
    }

    @Override
    public final int g(p1 p1Var) {
        for (int i10 = 0; i10 < this.f67009b; i10++) {
            if (this.f67012e[i10] == p1Var) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final p1 getFormat(int i10) {
        return this.f67012e[i10];
    }

    @Override
    public final int getIndexInTrackGroup(int i10) {
        return this.f67010c[i10];
    }

    @Override
    public final p1 getSelectedFormat() {
        return this.f67012e[getSelectedIndex()];
    }

    @Override
    public final int getSelectedIndexInTrackGroup() {
        return this.f67010c[getSelectedIndex()];
    }

    @Override
    public final v9.w getTrackGroup() {
        return this.f67008a;
    }

    public int hashCode() {
        if (this.f67014g == 0) {
            this.f67014g = (System.identityHashCode(this.f67008a) * 31) + Arrays.hashCode(this.f67010c);
        }
        return this.f67014g;
    }

    @Override
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.f67009b; i11++) {
            if (this.f67010c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final int length() {
        return this.f67010c.length;
    }

    public c(v9.w wVar, int[] iArr, int i10) {
        int i11 = 0;
        com.google.android.exoplayer2.util.a.g(iArr.length > 0);
        this.f67011d = i10;
        this.f67008a = (v9.w) com.google.android.exoplayer2.util.a.e(wVar);
        int length = iArr.length;
        this.f67009b = length;
        this.f67012e = new p1[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            this.f67012e[i12] = wVar.c(iArr[i12]);
        }
        Arrays.sort(this.f67012e, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.i((p1) obj, (p1) obj2);
            }
        });
        this.f67010c = new int[this.f67009b];
        while (true) {
            int i13 = this.f67009b;
            if (i11 >= i13) {
                this.f67013f = new long[i13];
                return;
            } else {
                this.f67010c[i11] = wVar.d(this.f67012e[i11]);
                i11++;
            }
        }
    }

    @Override
    public void disable() {
    }

    @Override
    public void enable() {
    }

    @Override
    public void onPlaybackSpeed(float f10) {
    }
}
