package h3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

public abstract class i {
    private static int a(k kVar, long j10) {
        if (j10 == C.TIME_UNSET) {
            return 0;
        }
        int nextEventTimeIndex = kVar.getNextEventTimeIndex(j10);
        if (nextEventTimeIndex == -1) {
            nextEventTimeIndex = kVar.getEventTimeCount();
        }
        return (nextEventTimeIndex <= 0 || kVar.getEventTime(nextEventTimeIndex + (-1)) != j10) ? nextEventTimeIndex : nextEventTimeIndex - 1;
    }

    private static void b(k kVar, int i10, androidx.media3.common.util.m mVar) {
        long eventTime = kVar.getEventTime(i10);
        List cues = kVar.getCues(eventTime);
        if (cues.isEmpty()) {
            return;
        }
        if (i10 == kVar.getEventTimeCount() - 1) {
            throw new IllegalStateException();
        }
        long eventTime2 = kVar.getEventTime(i10 + 1) - kVar.getEventTime(i10);
        if (eventTime2 > 0) {
            mVar.accept(new e(cues, eventTime, eventTime2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    public static void c(k kVar, s.b bVar, androidx.media3.common.util.m mVar) {
        boolean z10;
        int iA = a(kVar, bVar.f61266a);
        if (bVar.f61266a == C.TIME_UNSET || iA >= kVar.getEventTimeCount()) {
            z10 = false;
        } else {
            List cues = kVar.getCues(bVar.f61266a);
            long eventTime = kVar.getEventTime(iA);
            if (cues.isEmpty()) {
                z10 = false;
            } else {
                long j10 = bVar.f61266a;
                if (j10 < eventTime) {
                    mVar.accept(new e(cues, j10, eventTime - j10));
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        for (int i10 = iA; i10 < kVar.getEventTimeCount(); i10++) {
            b(kVar, i10, mVar);
        }
        if (bVar.f61267b) {
            if (z10) {
                iA--;
            }
            for (int i11 = 0; i11 < iA; i11++) {
                b(kVar, i11, mVar);
            }
            if (z10) {
                mVar.accept(new e(kVar.getCues(bVar.f61266a), kVar.getEventTime(iA), bVar.f61266a - kVar.getEventTime(iA)));
            }
        }
    }
}
