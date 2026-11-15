package kotlin.text;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;

final class DelimitedRangesSequence implements Sequence {

    private final CharSequence f64528a;

    private final int f64529b;

    private final int f64530c;

    private final Function2 f64531d;

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0018*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\"\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\f\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\f\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\u0010¨\u0006#"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "", "a", "()V", "c", "()Lkotlin/ranges/IntRange;", "", "hasNext", "()Z", "", "I", "getNextState", "()I", "setNextState", "(I)V", "nextState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getCurrentStartIndex", "setCurrentStartIndex", "currentStartIndex", "getNextSearchIndex", "setNextSearchIndex", "nextSearchIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/ranges/IntRange;", "getNextItem", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextItem", "e", "getCounter", "setCounter", "counter", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements Iterator<IntRange>, KMappedMarker {

        private int nextState = -1;

        private int currentStartIndex;

        private int nextSearchIndex;

        private IntRange nextItem;

        private int counter;

        AnonymousClass1() {
            int iL = RangesKt.l(DelimitedRangesSequence.this.f64529b, 0, DelimitedRangesSequence.this.f64528a.length());
            this.currentStartIndex = iL;
            this.nextSearchIndex = iL;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0031 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:17:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x0023  */
        private final void a() {
            Pair pair;
            if (this.nextSearchIndex < 0) {
                this.nextState = 0;
                this.nextItem = null;
                return;
            }
            if (DelimitedRangesSequence.this.f64530c > 0) {
                int i10 = this.counter + 1;
                this.counter = i10;
                if (i10 >= DelimitedRangesSequence.this.f64530c) {
                    this.nextItem = new IntRange(this.currentStartIndex, StringsKt.i0(DelimitedRangesSequence.this.f64528a));
                    this.nextSearchIndex = -1;
                } else if (this.nextSearchIndex > DelimitedRangesSequence.this.f64528a.length() && (pair = (Pair) DelimitedRangesSequence.this.f64531d.invoke(DelimitedRangesSequence.this.f64528a, Integer.valueOf(this.nextSearchIndex))) != null) {
                    int iIntValue = ((Number) pair.component1()).intValue();
                    int iIntValue2 = ((Number) pair.component2()).intValue();
                    this.nextItem = RangesKt.s(this.currentStartIndex, iIntValue);
                    int i11 = iIntValue + iIntValue2;
                    this.currentStartIndex = i11;
                    this.nextSearchIndex = i11 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.nextItem = new IntRange(this.currentStartIndex, StringsKt.i0(DelimitedRangesSequence.this.f64528a));
                    this.nextSearchIndex = -1;
                }
            } else if (this.nextSearchIndex > DelimitedRangesSequence.this.f64528a.length()) {
                this.nextItem = new IntRange(this.currentStartIndex, StringsKt.i0(DelimitedRangesSequence.this.f64528a));
                this.nextSearchIndex = -1;
            } else {
                int iIntValue3 = ((Number) pair.component1()).intValue();
                int iIntValue4 = ((Number) pair.component2()).intValue();
                this.nextItem = RangesKt.s(this.currentStartIndex, iIntValue3);
                int i12 = iIntValue3 + iIntValue4;
                this.currentStartIndex = i12;
                this.nextSearchIndex = i12 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.nextState = 1;
        }

        @Override
        public IntRange next() {
            if (this.nextState == -1) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            IntRange intRange = this.nextItem;
            Intrinsics.f(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.nextItem = null;
            this.nextState = -1;
            return intRange;
        }

        @Override
        public boolean hasNext() {
            if (this.nextState == -1) {
                a();
            }
            return this.nextState == 1;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public DelimitedRangesSequence(CharSequence input, int i10, int i11, Function2 getNextMatch) {
        Intrinsics.h(input, "input");
        Intrinsics.h(getNextMatch, "getNextMatch");
        this.f64528a = input;
        this.f64529b = i10;
        this.f64530c = i11;
        this.f64531d = getNextMatch;
    }

    @Override
    public Iterator getF64466a() {
        return new AnonymousClass1();
    }
}
