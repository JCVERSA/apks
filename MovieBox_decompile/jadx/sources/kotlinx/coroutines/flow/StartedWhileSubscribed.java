package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.collections.CollectionsKt;

final class StartedWhileSubscribed implements f1 {

    private final long f64801b;

    private final long f64802c;

    public StartedWhileSubscribed(long j10, long j11) {
        this.f64801b = j10;
        this.f64802c = j11;
        if (j10 < 0) {
            throw new IllegalArgumentException(("stopTimeout(" + j10 + " ms) cannot be negative").toString());
        }
        if (j11 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j11 + " ms) cannot be negative").toString());
    }

    @Override
    public a a(h1 h1Var) {
        return c.j(c.k(c.E(h1Var, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(null)));
    }

    public boolean equals(Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
            if (this.f64801b == startedWhileSubscribed.f64801b && this.f64802c == startedWhileSubscribed.f64802c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (androidx.collection.s.a(this.f64801b) * 31) + androidx.collection.s.a(this.f64802c);
    }

    public String toString() {
        List listD = CollectionsKt.d(2);
        if (this.f64801b > 0) {
            listD.add("stopTimeout=" + this.f64801b + "ms");
        }
        if (this.f64802c < Long.MAX_VALUE) {
            listD.add("replayExpiration=" + this.f64802c + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.s0(CollectionsKt.a(listD), null, null, null, 0, null, null, 63, null) + ')';
    }
}
