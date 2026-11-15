package androidx.room;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

public final class ObservedTableStates {

    private final ReentrantLock f14168a = new ReentrantLock();

    private final long[] f14169b;

    private final boolean[] f14170c;

    private boolean f14171d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/ObservedTableStates$ObserveOp;", "", "<init>", "(Ljava/lang/String;I)V", "NO_OP", "ADD", "REMOVE", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ObserveOp {
        NO_OP,
        ADD,
        REMOVE;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ObserveOp> getEntries() {
            return $ENTRIES;
        }
    }

    public ObservedTableStates(int i10) {
        this.f14169b = new long[i10];
        this.f14170c = new boolean[i10];
    }

    public final void a() {
        ReentrantLock reentrantLock = this.f14168a;
        reentrantLock.lock();
        try {
            this.f14171d = true;
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final ObserveOp[] b() {
        ObserveOp observeOp;
        ReentrantLock reentrantLock = this.f14168a;
        reentrantLock.lock();
        try {
            if (!this.f14171d) {
                return null;
            }
            this.f14171d = false;
            int length = this.f14169b.length;
            ObserveOp[] observeOpArr = new ObserveOp[length];
            int i10 = 0;
            boolean z10 = false;
            while (i10 < length) {
                boolean z11 = true;
                boolean z12 = this.f14169b[i10] > 0;
                boolean[] zArr = this.f14170c;
                if (z12 != zArr[i10]) {
                    zArr[i10] = z12;
                    observeOp = z12 ? ObserveOp.ADD : ObserveOp.REMOVE;
                } else {
                    z11 = z10;
                    observeOp = ObserveOp.NO_OP;
                }
                observeOpArr[i10] = observeOp;
                i10++;
                z10 = z11;
            }
            return z10 ? observeOpArr : null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean c(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        ReentrantLock reentrantLock = this.f14168a;
        reentrantLock.lock();
        try {
            boolean z10 = false;
            for (int i10 : tableIds) {
                long[] jArr = this.f14169b;
                long j10 = jArr[i10];
                jArr[i10] = 1 + j10;
                if (j10 == 0) {
                    z10 = true;
                    this.f14171d = true;
                }
            }
            reentrantLock.unlock();
            return z10;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final boolean d(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        ReentrantLock reentrantLock = this.f14168a;
        reentrantLock.lock();
        try {
            boolean z10 = false;
            for (int i10 : tableIds) {
                long[] jArr = this.f14169b;
                long j10 = jArr[i10];
                jArr[i10] = j10 - 1;
                if (j10 == 1) {
                    z10 = true;
                    this.f14171d = true;
                }
            }
            reentrantLock.unlock();
            return z10;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void e() {
        ReentrantLock reentrantLock = this.f14168a;
        reentrantLock.lock();
        try {
            ArraysKt.z(this.f14170c, false, 0, 0, 6, null);
            this.f14171d = true;
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
