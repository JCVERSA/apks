package na;

import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.p1;
import java.util.List;

public interface s extends v {

    public static final class a {

        public final v9.w f67094a;

        public final int[] f67095b;

        public final int f67096c;

        public a(v9.w wVar, int... iArr) {
            this(wVar, iArr, 0);
        }

        public a(v9.w wVar, int[] iArr, int i10) {
            if (iArr.length == 0) {
                com.google.android.exoplayer2.util.s.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f67094a = wVar;
            this.f67095b = iArr;
            this.f67096c = i10;
        }
    }

    public interface b {
        s[] a(a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var);
    }

    void a();

    void b(boolean z10);

    boolean blacklist(int i10, long j10);

    void c();

    boolean d(int i10, long j10);

    void disable();

    boolean e(long j10, x9.f fVar, List list);

    void enable();

    int evaluateQueueSize(long j10, List list);

    void f(long j10, long j11, long j12, List list, x9.o[] oVarArr);

    p1 getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    Object getSelectionData();

    int getSelectionReason();

    void onPlaybackSpeed(float f10);
}
