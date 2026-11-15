package com.apm.insight.l;

import android.annotation.TargetApi;
import android.app.ActivityManager;

public final class i {

    private static a f19063a = new b(0);

    static class a {
        private a() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }

        a(byte b10) {
            this();
        }
    }

    @TargetApi(16)
    static class b extends a {
        private b() {
            super((byte) 0);
        }

        @Override
        public final long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }

        b(byte b10) {
            this();
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f19063a.a(memoryInfo);
    }
}
