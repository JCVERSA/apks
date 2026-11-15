package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.operators.f;
import java.util.concurrent.atomic.AtomicReference;

public final class MpscLinkedQueue implements f {

    private final AtomicReference f62473a = new AtomicReference();

    private final AtomicReference f62474b = new AtomicReference();

    static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E value;

        LinkedQueueNode() {
        }

        public E getAndNullValue() {
            E eLpValue = lpValue();
            spValue(null);
            return eLpValue;
        }

        public E lpValue() {
            return this.value;
        }

        public LinkedQueueNode<E> lvNext() {
            return get();
        }

        public void soNext(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        public void spValue(E e10) {
            this.value = e10;
        }

        LinkedQueueNode(E e10) {
            spValue(e10);
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        d(linkedQueueNode);
        e(linkedQueueNode);
    }

    LinkedQueueNode a() {
        return (LinkedQueueNode) this.f62474b.get();
    }

    LinkedQueueNode b() {
        return (LinkedQueueNode) this.f62474b.get();
    }

    LinkedQueueNode c() {
        return (LinkedQueueNode) this.f62473a.get();
    }

    @Override
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    void d(LinkedQueueNode linkedQueueNode) {
        this.f62474b.lazySet(linkedQueueNode);
    }

    LinkedQueueNode e(LinkedQueueNode linkedQueueNode) {
        return (LinkedQueueNode) this.f62473a.getAndSet(linkedQueueNode);
    }

    @Override
    public boolean isEmpty() {
        return b() == c();
    }

    @Override
    public boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(obj);
        e(linkedQueueNode).soNext(linkedQueueNode);
        return true;
    }

    @Override
    public Object poll() {
        LinkedQueueNode linkedQueueNodeLvNext;
        LinkedQueueNode linkedQueueNodeA = a();
        LinkedQueueNode linkedQueueNodeLvNext2 = linkedQueueNodeA.lvNext();
        if (linkedQueueNodeLvNext2 != null) {
            Object andNullValue = linkedQueueNodeLvNext2.getAndNullValue();
            d(linkedQueueNodeLvNext2);
            return andNullValue;
        }
        if (linkedQueueNodeA == c()) {
            return null;
        }
        do {
            linkedQueueNodeLvNext = linkedQueueNodeA.lvNext();
        } while (linkedQueueNodeLvNext == null);
        Object andNullValue2 = linkedQueueNodeLvNext.getAndNullValue();
        d(linkedQueueNodeLvNext);
        return andNullValue2;
    }
}
