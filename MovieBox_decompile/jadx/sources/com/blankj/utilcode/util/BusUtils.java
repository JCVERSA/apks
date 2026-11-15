package com.blankj.utilcode.util;

public abstract class BusUtils {

    private static final Object f19387a = "nULl";

    class AnonymousClass1 implements Runnable {
        final BusUtils this$0;
        final Object val$arg;
        final Object val$bus;
        final a val$busInfo;
        final boolean val$sticky;

        AnonymousClass1(BusUtils busUtils, Object obj, Object obj2, a aVar, boolean z10) {
            this.val$bus = obj;
            this.val$arg = obj2;
            this.val$sticky = z10;
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

    private static final class a {
    }

    static void a(BusUtils busUtils, Object obj, Object obj2, a aVar, boolean z10) {
        throw null;
    }
}
