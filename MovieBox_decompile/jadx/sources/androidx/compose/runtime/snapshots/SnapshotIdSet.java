package androidx.compose.runtime.snapshots;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

public final class SnapshotIdSet implements Iterable, KMappedMarker {

    public static final a f3607e = new a(null);

    private static final SnapshotIdSet f3608f = new SnapshotIdSet(0, 0, 0, null);

    private final long f3609a;

    private final long f3610b;

    private final int f3611c;

    private final int[] f3612d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SnapshotIdSet a() {
            return SnapshotIdSet.f3608f;
        }

        private a() {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {295, 300, 307}, m = "invokeSuspend")
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Integer>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        private Object L$0;
        Object L$1;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = SnapshotIdSet.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00bf  */
        /* JADX WARN: Code duplicated, block: B:38:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:40:0x00e7 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:41:0x00e8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0072 -> B:19:0x0075). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0092 -> B:30:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00ab -> B:30:0x00ae). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00ca -> B:43:0x00ea). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e8 -> B:42:0x00e9). Please report as a decompilation issue!!! */
        /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
            java.lang.StackOverflowError
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        public final Object invoke(SequenceScope<? super Integer> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    private SnapshotIdSet(long j10, long j11, int i10, int[] iArr) {
        this.f3609a = j10;
        this.f3610b = j11;
        this.f3611c = i10;
        this.f3612d = iArr;
    }

    @Override
    public Iterator iterator() {
        return SequencesKt.b(new AnonymousClass1(null)).getF64466a();
    }

    public final SnapshotIdSet j(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSetL;
        SnapshotIdSet snapshotIdSet2 = f3608f;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet2;
        }
        int i10 = snapshotIdSet.f3611c;
        int i11 = this.f3611c;
        if (i10 == i11) {
            int[] iArr = snapshotIdSet.f3612d;
            int[] iArr2 = this.f3612d;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.f3609a & (~snapshotIdSet.f3609a), this.f3610b & (~snapshotIdSet.f3610b), i11, iArr2);
            }
        }
        int[] iArr3 = snapshotIdSet.f3612d;
        if (iArr3 != null) {
            snapshotIdSetL = this;
            for (int i12 : iArr3) {
                snapshotIdSetL = snapshotIdSetL.l(i12);
            }
        } else {
            snapshotIdSetL = this;
        }
        if (snapshotIdSet.f3610b != 0) {
            for (int i13 = 0; i13 < 64; i13++) {
                if ((snapshotIdSet.f3610b & (1 << i13)) != 0) {
                    snapshotIdSetL = snapshotIdSetL.l(snapshotIdSet.f3611c + i13);
                }
            }
        }
        if (snapshotIdSet.f3609a != 0) {
            for (int i14 = 0; i14 < 64; i14++) {
                if ((snapshotIdSet.f3609a & (1 << i14)) != 0) {
                    snapshotIdSetL = snapshotIdSetL.l(i14 + 64 + snapshotIdSet.f3611c);
                }
            }
        }
        return snapshotIdSetL;
    }

    public final SnapshotIdSet l(int i10) {
        int[] iArr;
        int iA;
        int i11 = this.f3611c;
        int i12 = i10 - i11;
        if (i12 >= 0 && i12 < 64) {
            long j10 = 1 << i12;
            long j11 = this.f3610b;
            if ((j11 & j10) != 0) {
                return new SnapshotIdSet(this.f3609a, j11 & (~j10), i11, this.f3612d);
            }
        } else if (i12 >= 64 && i12 < 128) {
            long j12 = 1 << (i12 - 64);
            long j13 = this.f3609a;
            if ((j13 & j12) != 0) {
                return new SnapshotIdSet(j13 & (~j12), this.f3610b, i11, this.f3612d);
            }
        } else if (i12 < 0 && (iArr = this.f3612d) != null && (iA = m.a(iArr, i10)) >= 0) {
            int length = iArr.length;
            int i13 = length - 1;
            if (i13 == 0) {
                return new SnapshotIdSet(this.f3609a, this.f3610b, this.f3611c, null);
            }
            int[] iArr2 = new int[i13];
            if (iA > 0) {
                ArraysKt.j(iArr, iArr2, 0, 0, iA);
            }
            if (iA < i13) {
                ArraysKt.j(iArr, iArr2, iA, iA + 1, length);
            }
            return new SnapshotIdSet(this.f3609a, this.f3610b, this.f3611c, iArr2);
        }
        return this;
    }

    public final boolean m(int i10) {
        int[] iArr;
        int i11 = i10 - this.f3611c;
        if (i11 >= 0 && i11 < 64) {
            return ((1 << i11) & this.f3610b) != 0;
        }
        if (i11 >= 64 && i11 < 128) {
            return ((1 << (i11 - 64)) & this.f3609a) != 0;
        }
        if (i11 <= 0 && (iArr = this.f3612d) != null) {
            return m.a(iArr, i10) >= 0;
        }
        return false;
    }

    public final int n(int i10) {
        int[] iArr = this.f3612d;
        if (iArr != null) {
            return iArr[0];
        }
        long j10 = this.f3610b;
        if (j10 != 0) {
            return this.f3611c + Long.numberOfTrailingZeros(j10);
        }
        long j11 = this.f3609a;
        return j11 != 0 ? this.f3611c + 64 + Long.numberOfTrailingZeros(j11) : i10;
    }

    public final SnapshotIdSet o(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSetP;
        SnapshotIdSet snapshotIdSet2 = f3608f;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet;
        }
        int i10 = snapshotIdSet.f3611c;
        int i11 = this.f3611c;
        if (i10 == i11) {
            int[] iArr = snapshotIdSet.f3612d;
            int[] iArr2 = this.f3612d;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.f3609a | snapshotIdSet.f3609a, this.f3610b | snapshotIdSet.f3610b, i11, iArr2);
            }
        }
        int i12 = 0;
        if (this.f3612d == null) {
            int[] iArr3 = this.f3612d;
            if (iArr3 != null) {
                for (int i13 : iArr3) {
                    snapshotIdSet = snapshotIdSet.p(i13);
                }
            }
            if (this.f3610b != 0) {
                for (int i14 = 0; i14 < 64; i14++) {
                    if ((this.f3610b & (1 << i14)) != 0) {
                        snapshotIdSet = snapshotIdSet.p(this.f3611c + i14);
                    }
                }
            }
            if (this.f3609a != 0) {
                while (i12 < 64) {
                    if ((this.f3609a & (1 << i12)) != 0) {
                        snapshotIdSet = snapshotIdSet.p(i12 + 64 + this.f3611c);
                    }
                    i12++;
                }
            }
            return snapshotIdSet;
        }
        int[] iArr4 = snapshotIdSet.f3612d;
        if (iArr4 != null) {
            snapshotIdSetP = this;
            for (int i15 : iArr4) {
                snapshotIdSetP = snapshotIdSetP.p(i15);
            }
        } else {
            snapshotIdSetP = this;
        }
        if (snapshotIdSet.f3610b != 0) {
            for (int i16 = 0; i16 < 64; i16++) {
                if ((snapshotIdSet.f3610b & (1 << i16)) != 0) {
                    snapshotIdSetP = snapshotIdSetP.p(snapshotIdSet.f3611c + i16);
                }
            }
        }
        if (snapshotIdSet.f3609a != 0) {
            while (i12 < 64) {
                if ((snapshotIdSet.f3609a & (1 << i12)) != 0) {
                    snapshotIdSetP = snapshotIdSetP.p(i12 + 64 + snapshotIdSet.f3611c);
                }
                i12++;
            }
        }
        return snapshotIdSetP;
    }

    public final SnapshotIdSet p(int i10) {
        int i11;
        int[] iArrQ0;
        int i12 = this.f3611c;
        int i13 = i10 - i12;
        long j10 = 0;
        if (i13 >= 0 && i13 < 64) {
            long j11 = 1 << i13;
            long j12 = this.f3610b;
            if ((j12 & j11) == 0) {
                return new SnapshotIdSet(this.f3609a, j12 | j11, i12, this.f3612d);
            }
        } else if (i13 >= 64 && i13 < 128) {
            long j13 = 1 << (i13 - 64);
            long j14 = this.f3609a;
            if ((j14 & j13) == 0) {
                return new SnapshotIdSet(j14 | j13, this.f3610b, i12, this.f3612d);
            }
        } else if (i13 < 128) {
            int[] iArr = this.f3612d;
            if (iArr == null) {
                return new SnapshotIdSet(this.f3609a, this.f3610b, i12, new int[]{i10});
            }
            int iA = m.a(iArr, i10);
            if (iA < 0) {
                int i14 = -(iA + 1);
                int length = iArr.length;
                int[] iArr2 = new int[length + 1];
                ArraysKt.j(iArr, iArr2, 0, 0, i14);
                ArraysKt.j(iArr, iArr2, i14 + 1, i14, length);
                iArr2[i14] = i10;
                return new SnapshotIdSet(this.f3609a, this.f3610b, this.f3611c, iArr2);
            }
        } else if (!m(i10)) {
            long j15 = this.f3609a;
            long j16 = this.f3610b;
            int i15 = this.f3611c;
            int i16 = ((i10 + 1) / 64) * 64;
            ArrayList arrayList = null;
            long j17 = j16;
            long j18 = j15;
            while (true) {
                if (i15 >= i16) {
                    i11 = i15;
                    break;
                }
                if (j17 != j10) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        int[] iArr3 = this.f3612d;
                        if (iArr3 != null) {
                            for (int i17 : iArr3) {
                                arrayList.add(Integer.valueOf(i17));
                            }
                        }
                    }
                    for (int i18 = 0; i18 < 64; i18++) {
                        if (((1 << i18) & j17) != 0) {
                            arrayList.add(Integer.valueOf(i18 + i15));
                        }
                    }
                    j10 = 0;
                }
                if (j18 == j10) {
                    i11 = i16;
                    j17 = j10;
                    break;
                }
                i15 += 64;
                j17 = j18;
                j18 = j10;
            }
            if (arrayList == null || (iArrQ0 = CollectionsKt.Q0(arrayList)) == null) {
                iArrQ0 = this.f3612d;
            }
            return new SnapshotIdSet(j18, j17, i11, iArrQ0).p(i10);
        }
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(" [");
        ArrayList arrayList = new ArrayList(CollectionsKt.v(this, 10));
        Iterator it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        sb2.append(androidx.compose.runtime.snapshots.a.d(arrayList, null, null, null, 0, null, null, 63, null));
        sb2.append(']');
        return sb2.toString();
    }
}
