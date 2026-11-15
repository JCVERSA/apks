package z1;

import android.net.Uri;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.offline.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class c implements q {

    public final long f76505a;

    public final long f76506b;

    public final long f76507c;

    public final boolean f76508d;

    public final long f76509e;

    public final long f76510f;

    public final long f76511g;

    public final long f76512h;

    public final o f76513i;

    public final l f76514j;

    public final Uri f76515k;

    public final h f76516l;

    private final List f76517m;

    public c(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, o oVar, l lVar, Uri uri, List list) {
        this.f76505a = j10;
        this.f76506b = j11;
        this.f76507c = j12;
        this.f76508d = z10;
        this.f76509e = j13;
        this.f76510f = j14;
        this.f76511g = j15;
        this.f76512h = j16;
        this.f76516l = hVar;
        this.f76513i = oVar;
        this.f76515k = uri;
        this.f76514j = lVar;
        this.f76517m = list == null ? Collections.emptyList() : list;
    }

    private static ArrayList b(List list, LinkedList linkedList) {
        StreamKey streamKey = (StreamKey) linkedList.poll();
        int i10 = streamKey.periodIndex;
        ArrayList arrayList = new ArrayList();
        do {
            int i11 = streamKey.groupIndex;
            a aVar = (a) list.get(i11);
            List list2 = aVar.f76497c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add((j) list2.get(streamKey.streamIndex));
                streamKey = (StreamKey) linkedList.poll();
                if (streamKey.periodIndex != i10) {
                    break;
                }
            } while (streamKey.groupIndex == i11);
            arrayList.add(new a(aVar.f76495a, aVar.f76496b, arrayList2, aVar.f76498d, aVar.f76499e, aVar.f76500f));
        } while (streamKey.periodIndex == i10);
        linkedList.addFirst(streamKey);
        return arrayList;
    }

    @Override
    public final c copy(List list) {
        long j10;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j11 = 0;
        int i10 = 0;
        while (true) {
            int iD = d();
            j10 = C.TIME_UNSET;
            if (i10 >= iD) {
                break;
            }
            if (((StreamKey) linkedList.peek()).periodIndex != i10) {
                long jE = e(i10);
                if (jE != C.TIME_UNSET) {
                    j11 += jE;
                }
            } else {
                g gVarC = c(i10);
                arrayList.add(new g(gVarC.f76541a, gVarC.f76542b - j11, b(gVarC.f76543c, linkedList), gVarC.f76544d));
            }
            i10++;
        }
        long j12 = this.f76506b;
        if (j12 != C.TIME_UNSET) {
            j10 = j12 - j11;
        }
        return new c(this.f76505a, j10, this.f76507c, this.f76508d, this.f76509e, this.f76510f, this.f76511g, this.f76512h, this.f76516l, this.f76513i, this.f76514j, this.f76515k, arrayList);
    }

    public final g c(int i10) {
        return (g) this.f76517m.get(i10);
    }

    public final int d() {
        return this.f76517m.size();
    }

    public final long e(int i10) {
        long j10;
        long j11;
        if (i10 == this.f76517m.size() - 1) {
            j10 = this.f76506b;
            if (j10 == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j11 = ((g) this.f76517m.get(i10)).f76542b;
        } else {
            j10 = ((g) this.f76517m.get(i10 + 1)).f76542b;
            j11 = ((g) this.f76517m.get(i10)).f76542b;
        }
        return j10 - j11;
    }

    public final long f(int i10) {
        return a1.R0(e(i10));
    }
}
