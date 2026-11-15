package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.markers.KMutableListIterator;

final class w implements ListIterator, KMutableListIterator {

    private final SnapshotStateList f3720a;

    private int f3721b;

    private int f3722c = -1;

    private int f3723d;

    public w(SnapshotStateList snapshotStateList, int i10) {
        this.f3720a = snapshotStateList;
        this.f3721b = i10 - 1;
        this.f3723d = snapshotStateList.e();
    }

    private final void a() {
        if (this.f3720a.e() != this.f3723d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public void add(Object obj) {
        a();
        this.f3720a.add(this.f3721b + 1, obj);
        this.f3722c = -1;
        this.f3721b++;
        this.f3723d = this.f3720a.e();
    }

    @Override
    public boolean hasNext() {
        return this.f3721b < this.f3720a.size() - 1;
    }

    @Override
    public boolean hasPrevious() {
        return this.f3721b >= 0;
    }

    @Override
    public Object next() {
        a();
        int i10 = this.f3721b + 1;
        this.f3722c = i10;
        s.g(i10, this.f3720a.size());
        Object obj = this.f3720a.get(i10);
        this.f3721b = i10;
        return obj;
    }

    @Override
    public int nextIndex() {
        return this.f3721b + 1;
    }

    @Override
    public Object previous() {
        a();
        s.g(this.f3721b, this.f3720a.size());
        int i10 = this.f3721b;
        this.f3722c = i10;
        Object obj = this.f3720a.get(i10);
        this.f3721b--;
        return obj;
    }

    @Override
    public int previousIndex() {
        return this.f3721b;
    }

    @Override
    public void remove() {
        a();
        this.f3720a.remove(this.f3721b);
        this.f3721b--;
        this.f3722c = -1;
        this.f3723d = this.f3720a.e();
    }

    @Override
    public void set(Object obj) {
        a();
        int i10 = this.f3722c;
        if (i10 < 0) {
            s.e();
            throw new KotlinNothingValueException();
        }
        this.f3720a.set(i10, obj);
        this.f3723d = this.f3720a.e();
    }
}
