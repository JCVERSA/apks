package ej;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a implements Queue {

    private final int f59707a;

    private LinkedList f59708b;

    public a(int i10) {
        this.f59707a = i10;
        this.f59708b = new LinkedList();
    }

    public int a() {
        return this.f59708b.size();
    }

    @Override
    public boolean add(Object obj) {
        return this.f59708b.add(obj);
    }

    @Override
    public boolean addAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f59708b.addAll(elements);
    }

    @Override
    public void clear() {
        this.f59708b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f59708b.contains(obj);
    }

    @Override
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f59708b.containsAll(elements);
    }

    @Override
    public Object element() {
        return this.f59708b.element();
    }

    @Override
    public boolean isEmpty() {
        return this.f59708b.size() == 0;
    }

    @Override
    public Iterator iterator() {
        Iterator it = this.f59708b.iterator();
        Intrinsics.g(it, "iterator(...)");
        return it;
    }

    @Override
    public boolean offer(Object obj) {
        if (this.f59708b.size() >= this.f59707a) {
            this.f59708b.poll();
        }
        return this.f59708b.offer(obj);
    }

    @Override
    public Object peek() {
        return this.f59708b.peek();
    }

    @Override
    public Object poll() {
        return this.f59708b.poll();
    }

    @Override
    public boolean remove(Object obj) {
        return this.f59708b.remove(obj);
    }

    @Override
    public boolean removeAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f59708b.removeAll(CollectionsKt.W0(elements));
    }

    @Override
    public boolean retainAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f59708b.retainAll(CollectionsKt.W0(elements));
    }

    @Override
    public final int size() {
        return a();
    }

    @Override
    public final Object[] toArray() {
        Object[] array = this.f59708b.toArray();
        Intrinsics.g(array, "toArray(...)");
        return array;
    }

    @Override
    public Object remove() {
        return this.f59708b.remove();
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.f59708b.toArray(objArr);
        Intrinsics.g(array, "toArray(...)");
        return array;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(Queue newQueue) {
        this(newQueue.size());
        Intrinsics.h(newQueue, "newQueue");
        this.f59708b = new LinkedList(newQueue);
    }
}
