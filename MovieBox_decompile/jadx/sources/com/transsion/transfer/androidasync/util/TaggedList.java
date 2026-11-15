package com.transsion.transfer.androidasync.util;

import java.util.ArrayList;

public class TaggedList<T> extends ArrayList<T> {
    private Object tag;

    public synchronized <V> V tag() {
        return (V) this.tag;
    }

    public synchronized <V> void tagNull(V v10) {
        if (this.tag == null) {
            this.tag = v10;
        }
    }

    public synchronized <V> void tag(V v10) {
        this.tag = v10;
    }
}
