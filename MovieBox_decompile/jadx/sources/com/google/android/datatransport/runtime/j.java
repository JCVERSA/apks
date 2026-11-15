package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

abstract class j {
    static Executor a() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
