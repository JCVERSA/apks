package com.tn.tranpay.report;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements ThreadFactory {

    public static final C0566a f40660d = new C0566a(null);

    private static final AtomicInteger f40661e = new AtomicInteger(1);

    private final ThreadGroup f40662a;

    private final AtomicInteger f40663b;

    private final String f40664c;

    public static final class C0566a {
        public C0566a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0566a() {
        }
    }

    public a(String pre) {
        ThreadGroup threadGroup;
        Intrinsics.h(pre, "pre");
        this.f40663b = new AtomicInteger(1);
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            threadGroup = securityManager.getThreadGroup();
            Intrinsics.g(threadGroup, "s.threadGroup");
        } else {
            threadGroup = Thread.currentThread().getThreadGroup();
            Intrinsics.e(threadGroup);
        }
        this.f40662a = threadGroup;
        this.f40664c = pre + "-pool-" + f40661e.getAndIncrement() + "-thread-";
    }

    @Override
    public Thread newThread(Runnable r10) {
        Intrinsics.h(r10, "r");
        Thread thread = new Thread(this.f40662a, r10, this.f40664c + this.f40663b.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        return thread;
    }
}
