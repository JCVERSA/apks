package io.reactivex.internal.queue;

import defpackage.nm9;
import java.util.concurrent.atomic.AtomicReference;

public final class MpscLinkedQueue implements nm9 {
    public final AtomicReference b = new AtomicReference();
    public final AtomicReference c = new AtomicReference();

    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E value;

        public LinkedQueueNode() {
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

        public void spValue(E e) {
            this.value = e;
        }

        public LinkedQueueNode(E e) {
            spValue(e);
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        d(linkedQueueNode);
        e(linkedQueueNode);
    }

    public LinkedQueueNode a() {
        return (LinkedQueueNode) this.c.get();
    }

    public LinkedQueueNode b() {
        return (LinkedQueueNode) this.c.get();
    }

    public LinkedQueueNode c() {
        return (LinkedQueueNode) this.b.get();
    }

    @Override
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    public void d(LinkedQueueNode linkedQueueNode) {
        this.c.lazySet(linkedQueueNode);
    }

    public LinkedQueueNode e(LinkedQueueNode linkedQueueNode) {
        return (LinkedQueueNode) this.b.getAndSet(linkedQueueNode);
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
