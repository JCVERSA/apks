package com.blankj.utilcode.util;

public abstract class BusUtils {
    public static final Object a = "nULl";

    class AnonymousClass1 implements Runnable {
        final BusUtils this$0;
        final Object val$arg;
        final Object val$bus;
        final a val$busInfo;
        final boolean val$sticky;

        public AnonymousClass1(BusUtils busUtils, Object obj, Object obj2, a aVar, boolean z) {
            this.val$bus = obj;
            this.val$arg = obj2;
            this.val$sticky = z;
        }

        @Override
        public void run() {
            BusUtils.a(null, this.val$bus, this.val$arg, null, this.val$sticky);
        }
    }

    public enum ThreadMode {
        MAIN,
        IO,
        CPU,
        CACHED,
        SINGLE,
        POSTING
    }

    public static final class a {
    }

    public static void a(BusUtils busUtils, Object obj, Object obj2, a aVar, boolean z) {
        throw null;
    }
}
