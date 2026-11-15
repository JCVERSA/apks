package com.google.common.util.concurrent;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

abstract class d extends AbstractFuture.h {

    private static final b f30196c;

    private static final q f30197d = new q(d.class);

    private volatile Set f30198a;

    private volatile int f30199b;

    private static abstract class b {
        private b() {
        }
    }

    private static final class c extends b {

        final AtomicReferenceFieldUpdater f30200a;

        final AtomicIntegerFieldUpdater f30201b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f30200a = atomicReferenceFieldUpdater;
            this.f30201b = atomicIntegerFieldUpdater;
        }
    }

    private static final class C0393d extends b {
        private C0393d() {
            super();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b c0393d;
        Throwable th2 = null;
        Object[] objArr = 0;
        try {
            c0393d = new c(AtomicReferenceFieldUpdater.newUpdater(d.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
        } catch (Throwable th3) {
            c0393d = new C0393d();
            th2 = th3;
        }
        f30196c = c0393d;
        if (th2 != null) {
            f30197d.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th2);
        }
    }
}
