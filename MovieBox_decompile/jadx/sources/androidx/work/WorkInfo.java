package androidx.work;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public final class WorkInfo {

    private UUID f15056a;

    private State f15057b;

    private d f15058c;

    private Set f15059d;

    private d f15060e;

    private int f15061f;

    private final int f15062g;

    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public WorkInfo(UUID uuid, State state, d dVar, List list, d dVar2, int i10, int i11) {
        this.f15056a = uuid;
        this.f15057b = state;
        this.f15058c = dVar;
        this.f15059d = new HashSet(list);
        this.f15060e = dVar2;
        this.f15061f = i10;
        this.f15062g = i11;
    }

    public State a() {
        return this.f15057b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WorkInfo.class != obj.getClass()) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        if (this.f15061f == workInfo.f15061f && this.f15062g == workInfo.f15062g && this.f15056a.equals(workInfo.f15056a) && this.f15057b == workInfo.f15057b && this.f15058c.equals(workInfo.f15058c) && this.f15059d.equals(workInfo.f15059d)) {
            return this.f15060e.equals(workInfo.f15060e);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.f15056a.hashCode() * 31) + this.f15057b.hashCode()) * 31) + this.f15058c.hashCode()) * 31) + this.f15059d.hashCode()) * 31) + this.f15060e.hashCode()) * 31) + this.f15061f) * 31) + this.f15062g;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.f15056a + "', mState=" + this.f15057b + ", mOutputData=" + this.f15058c + ", mTags=" + this.f15059d + ", mProgress=" + this.f15060e + '}';
    }
}
