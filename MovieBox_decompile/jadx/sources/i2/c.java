package i2;

import android.os.SystemClock;
import androidx.media3.common.util.a1;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public abstract class c implements z {

    protected final androidx.media3.common.f0 f61633a;

    protected final int f61634b;

    protected final int[] f61635c;

    private final int f61636d;

    private final androidx.media3.common.r[] f61637e;

    private final long[] f61638f;

    private int f61639g;

    private boolean f61640h;

    public c(androidx.media3.common.f0 f0Var, int... iArr) {
        this(f0Var, iArr, 0);
    }

    public static int j(androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        return rVar2.f9844j - rVar.f9844j;
    }

    @Override
    public void a() {
        y.a(this);
    }

    @Override
    public void b(boolean z10) {
        this.f61640h = z10;
    }

    @Override
    public void c() {
        y.b(this);
    }

    @Override
    public boolean d(int i10, long j10) {
        return this.f61638f[i10] > j10;
    }

    @Override
    public final int e(androidx.media3.common.r rVar) {
        for (int i10 = 0; i10 < this.f61634b; i10++) {
            if (this.f61637e[i10] == rVar) {
                return i10;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f61633a.equals(cVar.f61633a) && Arrays.equals(this.f61635c, cVar.f61635c);
    }

    @Override
    public int evaluateQueueSize(long j10, List list) {
        return list.size();
    }

    @Override
    public boolean g(int i10, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zD = d(i10, jElapsedRealtime);
        int i11 = 0;
        while (i11 < this.f61634b && !zD) {
            zD = (i11 == i10 || d(i11, jElapsedRealtime)) ? false : true;
            i11++;
        }
        if (!zD) {
            return false;
        }
        long[] jArr = this.f61638f;
        jArr[i10] = Math.max(jArr[i10], a1.c(jElapsedRealtime, j10, Long.MAX_VALUE));
        return true;
    }

    @Override
    public final androidx.media3.common.r getFormat(int i10) {
        return this.f61637e[i10];
    }

    @Override
    public final int getIndexInTrackGroup(int i10) {
        return this.f61635c[i10];
    }

    @Override
    public final androidx.media3.common.r getSelectedFormat() {
        return this.f61637e[getSelectedIndex()];
    }

    @Override
    public final int getSelectedIndexInTrackGroup() {
        return this.f61635c[getSelectedIndex()];
    }

    @Override
    public final androidx.media3.common.f0 getTrackGroup() {
        return this.f61633a;
    }

    @Override
    public boolean h(long j10, g2.e eVar, List list) {
        return y.c(this, j10, eVar, list);
    }

    public int hashCode() {
        if (this.f61639g == 0) {
            this.f61639g = (System.identityHashCode(this.f61633a) * 31) + Arrays.hashCode(this.f61635c);
        }
        return this.f61639g;
    }

    @Override
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.f61634b; i11++) {
            if (this.f61635c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final int length() {
        return this.f61635c.length;
    }

    public c(androidx.media3.common.f0 f0Var, int[] iArr, int i10) {
        androidx.media3.common.util.a.g(iArr.length > 0);
        this.f61636d = i10;
        this.f61633a = (androidx.media3.common.f0) androidx.media3.common.util.a.e(f0Var);
        int length = iArr.length;
        this.f61634b = length;
        this.f61637e = new androidx.media3.common.r[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f61637e[i11] = f0Var.a(iArr[i11]);
        }
        Arrays.sort(this.f61637e, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.j((androidx.media3.common.r) obj, (androidx.media3.common.r) obj2);
            }
        });
        this.f61635c = new int[this.f61634b];
        int i12 = 0;
        while (true) {
            int i13 = this.f61634b;
            if (i12 >= i13) {
                this.f61638f = new long[i13];
                this.f61640h = false;
                return;
            } else {
                this.f61635c[i12] = f0Var.b(this.f61637e[i12]);
                i12++;
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
