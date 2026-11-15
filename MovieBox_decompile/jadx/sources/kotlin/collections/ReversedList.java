package kotlin.collections;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;

final class ReversedList extends AbstractMutableList {

    private final List f64164a;

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0010+\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0010R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"kotlin/collections/ReversedList$listIterator$1", "", "", "hasNext", "()Z", "hasPrevious", "next", "()Ljava/lang/Object;", "", "nextIndex", "()I", "previous", "previousIndex", "element", "", "add", "(Ljava/lang/Object;)V", "remove", "()V", "set", "a", "Ljava/util/ListIterator;", "getDelegateIterator", "()Ljava/util/ListIterator;", "delegateIterator", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements ListIterator<Object>, KMutableListIterator {

        private final ListIterator delegateIterator;

        AnonymousClass1(int i10) {
            this.delegateIterator = ReversedList.this.f64164a.listIterator(o.X(ReversedList.this, i10));
        }

        @Override
        public void add(Object element) {
            this.delegateIterator.add(element);
            this.delegateIterator.previous();
        }

        @Override
        public boolean hasNext() {
            return this.delegateIterator.hasPrevious();
        }

        @Override
        public boolean hasPrevious() {
            return this.delegateIterator.hasNext();
        }

        @Override
        public Object next() {
            return this.delegateIterator.previous();
        }

        @Override
        public int nextIndex() {
            return o.W(ReversedList.this, this.delegateIterator.previousIndex());
        }

        @Override
        public Object previous() {
            return this.delegateIterator.next();
        }

        @Override
        public int previousIndex() {
            return o.W(ReversedList.this, this.delegateIterator.nextIndex());
        }

        @Override
        public void remove() {
            this.delegateIterator.remove();
        }

        @Override
        public void set(Object element) {
            this.delegateIterator.set(element);
        }
    }

    public ReversedList(List delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f64164a = delegate;
    }

    @Override
    public void add(int i10, Object obj) {
        this.f64164a.add(o.X(this, i10), obj);
    }

    @Override
    public void clear() {
        this.f64164a.clear();
    }

    @Override
    public Object get(int i10) {
        return this.f64164a.get(o.V(this, i10));
    }

    @Override
    public int getLength() {
        return this.f64164a.size();
    }

    @Override
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public Object removeAt(int i10) {
        return this.f64164a.remove(o.V(this, i10));
    }

    @Override
    public Object set(int i10, Object obj) {
        return this.f64164a.set(o.V(this, i10), obj);
    }

    @Override
    public ListIterator listIterator(int i10) {
        return new AnonymousClass1(i10);
    }
}
