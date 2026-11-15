package androidx.media3.extractor.text;

import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.CuesWithTimingSubtitle;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import defpackage.o74;
import defpackage.v55;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@UnstableApi
public final class CuesWithTimingSubtitle implements Subtitle {
    private static final Ordering<CuesWithTiming> CUES_BY_START_TIME_ASCENDING = Ordering.natural().onResultOf(new o74() {
        @Override
        public final Object apply(Object obj) {
            return CuesWithTimingSubtitle.lambda$static$0((CuesWithTiming) obj);
        }
    });
    private static final String TAG = "CuesWithTimingSubtitle";
    private final ImmutableList<ImmutableList<Cue>> eventCues;
    private final long[] eventTimesUs;

    /* JADX WARN: Code duplicated, block: B:23:0x00b4  */
    /* JADX WARN: Multi-variable type inference failed */
    public CuesWithTimingSubtitle(List<CuesWithTiming> list) {
        if (list.size() == 1) {
            CuesWithTiming cuesWithTiming = (CuesWithTiming) v55.j(list);
            long jNormalizeUnsetStartTimeToZero = normalizeUnsetStartTimeToZero(cuesWithTiming.startTimeUs);
            if (cuesWithTiming.durationUs == C.TIME_UNSET) {
                this.eventCues = ImmutableList.of(cuesWithTiming.cues);
                this.eventTimesUs = new long[]{jNormalizeUnsetStartTimeToZero};
                return;
            } else {
                this.eventCues = ImmutableList.of((ImmutableList) cuesWithTiming.cues, ImmutableList.of());
                this.eventTimesUs = new long[]{jNormalizeUnsetStartTimeToZero, cuesWithTiming.durationUs + jNormalizeUnsetStartTimeToZero};
                return;
            }
        }
        long[] jArr = new long[list.size() * 2];
        this.eventTimesUs = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(CUES_BY_START_TIME_ASCENDING, list);
        int i = 0;
        for (int i2 = 0; i2 < immutableListSortedCopyOf.size(); i2++) {
            CuesWithTiming cuesWithTiming2 = (CuesWithTiming) immutableListSortedCopyOf.get(i2);
            long jNormalizeUnsetStartTimeToZero2 = normalizeUnsetStartTimeToZero(cuesWithTiming2.startTimeUs);
            long j = cuesWithTiming2.durationUs + jNormalizeUnsetStartTimeToZero2;
            if (i != 0) {
                int i3 = i - 1;
                long j2 = this.eventTimesUs[i3];
                if (j2 < jNormalizeUnsetStartTimeToZero2) {
                    this.eventTimesUs[i] = jNormalizeUnsetStartTimeToZero2;
                    arrayList.add(cuesWithTiming2.cues);
                    i++;
                } else if (j2 == jNormalizeUnsetStartTimeToZero2 && ((ImmutableList) arrayList.get(i3)).isEmpty()) {
                    arrayList.set(i3, cuesWithTiming2.cues);
                } else {
                    Log.w(TAG, "Truncating unsupported overlapping cues.");
                    this.eventTimesUs[i3] = jNormalizeUnsetStartTimeToZero2;
                    arrayList.set(i3, cuesWithTiming2.cues);
                }
            } else {
                this.eventTimesUs[i] = jNormalizeUnsetStartTimeToZero2;
                arrayList.add(cuesWithTiming2.cues);
                i++;
            }
            if (cuesWithTiming2.durationUs != C.TIME_UNSET) {
                this.eventTimesUs[i] = j;
                arrayList.add(ImmutableList.of());
                i++;
            }
        }
        this.eventCues = ImmutableList.copyOf((Collection) arrayList);
    }

    public static Comparable lambda$static$0(CuesWithTiming cuesWithTiming) {
        return Long.valueOf(normalizeUnsetStartTimeToZero(cuesWithTiming.startTimeUs));
    }

    private static long normalizeUnsetStartTimeToZero(long j) {
        if (j == C.TIME_UNSET) {
            return 0L;
        }
        return j;
    }

    @Override
    public long getEventTime(int i) {
        Assertions.checkArgument(i < this.eventCues.size());
        return this.eventTimesUs[i];
    }

    @Override
    public int getEventTimeCount() {
        return this.eventCues.size();
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (iBinarySearchCeil < this.eventCues.size()) {
            return iBinarySearchCeil;
        }
        return -1;
    }

    @Override
    public ImmutableList<Cue> getCues(long j) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.eventTimesUs, j, true, false);
        return iBinarySearchFloor == -1 ? ImmutableList.of() : this.eventCues.get(iBinarySearchFloor);
    }
}
