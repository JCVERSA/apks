package com.google.common.collect;

import java.util.NoSuchElementException;
import java.util.Queue;

public abstract class r2 extends k2 implements Queue {
    protected r2() {
    }

    @Override
    protected abstract Queue l();

    @Override
    public Object element() {
        return l().element();
    }

    @Override
    public Object peek() {
        return l().peek();
    }

    @Override
    public Object poll() {
        return l().poll();
    }

    @Override
    public Object remove() {
        return l().remove();
    }

    protected boolean standardOffer(Object obj) {
        try {
            return add(obj);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    protected Object standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    protected Object standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
