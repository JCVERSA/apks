package com.facebook.ads.redexgen.core;

import java.io.Closeable;

public interface BC extends Closeable {
    int getPosition();

    boolean moveToPosition(int i);
}
