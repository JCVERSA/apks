package com.google.android.exoplayer2.util;

import java.io.IOException;

public abstract class PriorityTaskManager {

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }
}
