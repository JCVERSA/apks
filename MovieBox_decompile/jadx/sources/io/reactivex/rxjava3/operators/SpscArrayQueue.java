package io.reactivex.rxjava3.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements f {
    private static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    final AtomicLong consumerIndex;
    final int lookAheadStep;
    final int mask;
    final AtomicLong producerIndex;
    long producerLookAhead;

    public SpscArrayQueue(int i10) {
        super(io.reactivex.rxjava3.internal.util.g.a(i10));
        this.mask = length() - 1;
        this.producerIndex = new AtomicLong();
        this.consumerIndex = new AtomicLong();
        this.lookAheadStep = Math.min(i10 / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    int calcElementOffset(long j10, int i10) {
        return ((int) j10) & i10;
    }

    @Override
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    E lvElement(int i10) {
        return get(i10);
    }

    @Override
    public boolean offer(E e10) {
        if (e10 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        int i10 = this.mask;
        long j10 = this.producerIndex.get();
        int iCalcElementOffset = calcElementOffset(j10, i10);
        if (j10 >= this.producerLookAhead) {
            long j11 = ((long) this.lookAheadStep) + j10;
            if (lvElement(calcElementOffset(j11, i10)) == null) {
                this.producerLookAhead = j11;
            } else if (lvElement(iCalcElementOffset) != null) {
                return false;
            }
        }
        soElement(iCalcElementOffset, e10);
        soProducerIndex(j10 + 1);
        return true;
    }

    @Override
    public E poll() {
        long j10 = this.consumerIndex.get();
        int iCalcElementOffset = calcElementOffset(j10);
        E eLvElement = lvElement(iCalcElementOffset);
        if (eLvElement == null) {
            return null;
        }
        soConsumerIndex(j10 + 1);
        soElement(iCalcElementOffset, null);
        return eLvElement;
    }

    void soConsumerIndex(long j10) {
        this.consumerIndex.lazySet(j10);
    }

    void soElement(int i10, E e10) {
        lazySet(i10, e10);
    }

    void soProducerIndex(long j10) {
        this.producerIndex.lazySet(j10);
    }

    int calcElementOffset(long j10) {
        return ((int) j10) & this.mask;
    }

    public boolean offer(E e10, E e11) {
        return offer(e10) && offer(e11);
    }
}
