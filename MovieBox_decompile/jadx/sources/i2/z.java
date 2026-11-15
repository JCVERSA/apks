package i2;

import java.util.List;

public interface z extends c0 {

    public static final class a {

        public final androidx.media3.common.f0 f61742a;

        public final int[] f61743b;

        public final int f61744c;

        public a(androidx.media3.common.f0 f0Var, int... iArr) {
            this(f0Var, iArr, 0);
        }

        public a(androidx.media3.common.f0 f0Var, int[] iArr, int i10) {
            if (iArr.length == 0) {
                androidx.media3.common.util.u.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f61742a = f0Var;
            this.f61743b = iArr;
            this.f61744c = i10;
        }
    }

    public interface b {
        z[] a(a[] aVarArr, androidx.media3.exoplayer.upstream.e eVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var);
    }

    void a();

    void b(boolean z10);

    void c();

    boolean d(int i10, long j10);

    void disable();

    void enable();

    int evaluateQueueSize(long j10, List list);

    void f(long j10, long j11, long j12, List list, g2.n[] nVarArr);

    boolean g(int i10, long j10);

    androidx.media3.common.r getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    Object getSelectionData();

    int getSelectionReason();

    boolean h(long j10, g2.e eVar, List list);

    void onPlaybackSpeed(float f10);
}
