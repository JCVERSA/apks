package com.apm.insight.l;

import android.annotation.TargetApi;
import android.os.Debug;
import java.util.Map;

public final class c {

    private static a f19042a = new b(0);

    static class a {
        private a() {
        }

        public int a(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int b(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int c(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        a(byte b10) {
            this();
        }
    }

    @TargetApi(19)
    static class b extends a {
        private b() {
            super((byte) 0);
        }

        @Override
        public final int a(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override
        public final int b(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }

        @Override
        public final int c(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }

        b(byte b10) {
            this();
        }
    }

    public static int a(Debug.MemoryInfo memoryInfo) {
        return f19042a.a(memoryInfo);
    }

    public static int b(Debug.MemoryInfo memoryInfo) {
        return f19042a.b(memoryInfo);
    }

    public static int c(Debug.MemoryInfo memoryInfo) {
        return f19042a.c(memoryInfo);
    }

    public static class AnonymousClass1 {
        public static Long a(Map<? super String, Long> map, String str, Long l10) {
            if (str == null || map == null) {
                return -1L;
            }
            Long l11 = map.get(str);
            if (l11 != null) {
                l10 = Long.valueOf(l11.longValue() + l10.longValue());
            }
            map.put(str, l10);
            return l10;
        }

        public static Float a(Map<? super String, Float> map) {
            float fFloatValue = 0.0f;
            for (Float f10 : map.values()) {
                if (f10 != null) {
                    fFloatValue += f10.floatValue();
                }
            }
            return Float.valueOf(fFloatValue);
        }

        public static int a(Object obj, int i10) {
            if (obj == null) {
                return i10;
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            if (obj instanceof String) {
                try {
                    return Integer.parseInt(String.valueOf(obj));
                } catch (Throwable unused) {
                }
            }
            return i10;
        }
    }
}
