package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

abstract class v {
    static void a(Object obj, long j10) {
        LockSupport.parkNanos(obj, Math.min(j10, 2147483647999999999L));
    }
}
