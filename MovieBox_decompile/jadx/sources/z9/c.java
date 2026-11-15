package z9;

import android.net.Uri;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class c implements com.google.android.exoplayer2.offline.c {

    public final long f76639a;

    public final long f76640b;

    public final long f76641c;

    public final boolean f76642d;

    public final long f76643e;

    public final long f76644f;

    public final long f76645g;

    public final long f76646h;

    public final o f76647i;

    public final l f76648j;

    public final Uri f76649k;

    public final h f76650l;

    private final List f76651m;

    public c(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, o oVar, l lVar, Uri uri, List list) {
        this.f76639a = j10;
        this.f76640b = j11;
        this.f76641c = j12;
        this.f76642d = z10;
        this.f76643e = j13;
        this.f76644f = j14;
        this.f76645g = j15;
        this.f76646h = j16;
        this.f76650l = hVar;
        this.f76647i = oVar;
        this.f76649k = uri;
        this.f76648j = lVar;
        this.f76651m = list == null ? Collections.emptyList() : list;
    }

    private static ArrayList b(List list, LinkedList linkedList) {
        StreamKey streamKey = (StreamKey) linkedList.poll();
        int i10 = streamKey.periodIndex;
        ArrayList arrayList = new ArrayList();
        do {
            int i11 = streamKey.groupIndex;
            a aVar = (a) list.get(i11);
            List list2 = aVar.f76631c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add((j) list2.get(streamKey.streamIndex));
                streamKey = (StreamKey) linkedList.poll();
                if (streamKey.periodIndex != i10) {
                    break;
                }
            } while (streamKey.groupIndex == i11);
            arrayList.add(new a(aVar.f76629a, aVar.f76630b, arrayList2, aVar.f76632d, aVar.f76633e, aVar.f76634f));
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
                arrayList.add(new g(gVarC.f76674a, gVarC.f76675b - j11, b(gVarC.f76676c, linkedList), gVarC.f76677d));
            }
            i10++;
        }
        long j12 = this.f76640b;
        if (j12 != C.TIME_UNSET) {
            j10 = j12 - j11;
        }
        return new c(this.f76639a, j10, this.f76641c, this.f76642d, this.f76643e, this.f76644f, this.f76645g, this.f76646h, this.f76650l, this.f76647i, this.f76648j, this.f76649k, arrayList);
    }

    public final g c(int i10) {
        return (g) this.f76651m.get(i10);
    }

    public final int d() {
        return this.f76651m.size();
    }

    public final long e(int i10) {
        long j10;
        long j11;
        if (i10 == this.f76651m.size() - 1) {
            j10 = this.f76640b;
            if (j10 == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j11 = ((g) this.f76651m.get(i10)).f76675b;
        } else {
            j10 = ((g) this.f76651m.get(i10 + 1)).f76675b;
            j11 = ((g) this.f76651m.get(i10)).f76675b;
        }
        return j10 - j11;
    }

    public final long f(int i10) {
        return p0.B0(e(i10));
    }
}
