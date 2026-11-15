package com.google.common.hash;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

abstract class Striped64 extends Number {

    private static final Unsafe f30046a;

    private static final long f30047b;

    private static final long f30048c;
    volatile transient long base;
    volatile transient int busy;
    volatile transient b[] cells;
    static final ThreadLocal<int[]> threadHashCode = new ThreadLocal<>();
    static final Random rng = new Random();
    static final int NCPU = Runtime.getRuntime().availableProcessors();

    class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override
        public Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    static final class b {

        private static final Unsafe f30049b;

        private static final long f30050c;

        volatile long f30051a;

        static {
            try {
                Unsafe unsafeA = Striped64.a();
                f30049b = unsafeA;
                f30050c = unsafeA.objectFieldOffset(b.class.getDeclaredField("a"));
            } catch (Exception e10) {
                throw new Error(e10);
            }
        }

        b(long j10) {
            this.f30051a = j10;
        }

        final boolean a(long j10, long j11) {
            return f30049b.compareAndSwapLong(this, f30050c, j10, j11);
        }
    }

    static {
        try {
            Unsafe unsafeA = a();
            f30046a = unsafeA;
            f30047b = unsafeA.objectFieldOffset(Striped64.class.getDeclaredField("base"));
            f30048c = unsafeA.objectFieldOffset(Striped64.class.getDeclaredField("busy"));
        } catch (Exception e10) {
            throw new Error(e10);
        }
    }

    Striped64() {
    }

    public static Unsafe a() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    final boolean casBase(long j10, long j11) {
        return f30046a.compareAndSwapLong(this, f30047b, j10, j11);
    }

    final boolean casBusy() {
        return f30046a.compareAndSwapInt(this, f30048c, 0, 1);
    }

    abstract long fn(long j10, long j11);

    final void internalReset(long j10) {
        b[] bVarArr = this.cells;
        this.base = j10;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar != null) {
                    bVar.f30051a = j10;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    final void retryUpdate(long j10, int[] iArr, boolean z10) {
        int iNextInt;
        int[] iArr2;
        boolean z11;
        int length;
        boolean z12;
        int length2;
        if (iArr == null) {
            iArr2 = new int[1];
            threadHashCode.set(iArr2);
            iNextInt = rng.nextInt();
            if (iNextInt == 0) {
                iNextInt = 1;
            }
            iArr2[0] = iNextInt;
        } else {
            iNextInt = iArr[0];
            iArr2 = iArr;
        }
        boolean z13 = false;
        int i10 = iNextInt;
        boolean z14 = z10;
        while (true) {
            b[] bVarArr = this.cells;
            if (bVarArr != null && (length = bVarArr.length) > 0) {
                b bVar = bVarArr[(length - 1) & i10];
                if (bVar == null) {
                    if (this.busy == 0) {
                        b bVar2 = new b(j10);
                        if (this.busy == 0 && casBusy()) {
                            try {
                                b[] bVarArr2 = this.cells;
                                if (bVarArr2 == null || (length2 = bVarArr2.length) <= 0) {
                                    z12 = false;
                                } else {
                                    int i11 = (length2 - 1) & i10;
                                    if (bVarArr2[i11] == null) {
                                        bVarArr2[i11] = bVar2;
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                }
                                this.busy = 0;
                                if (z12) {
                                    return;
                                }
                            } catch (Throwable th2) {
                                this.busy = 0;
                                throw th2;
                            }
                        }
                    }
                    z13 = false;
                    int i12 = i10 ^ (i10 << 13);
                    int i13 = i12 ^ (i12 >>> 17);
                    i10 = i13 ^ (i13 << 5);
                    iArr2[0] = i10;
                } else {
                    if (z14) {
                        long j11 = bVar.f30051a;
                        if (bVar.a(j11, fn(j11, j10))) {
                            return;
                        }
                        if (length >= NCPU || this.cells != bVarArr) {
                            z13 = false;
                        } else if (!z13) {
                            z13 = true;
                        } else if (this.busy == 0 && casBusy()) {
                            try {
                                if (this.cells == bVarArr) {
                                    b[] bVarArr3 = new b[length << 1];
                                    for (int i14 = 0; i14 < length; i14++) {
                                        bVarArr3[i14] = bVarArr[i14];
                                    }
                                    this.cells = bVarArr3;
                                }
                                this.busy = 0;
                                z13 = false;
                            } catch (Throwable th3) {
                                this.busy = 0;
                                throw th3;
                            }
                        }
                    } else {
                        z14 = true;
                    }
                    int i15 = i10 ^ (i10 << 13);
                    int i16 = i15 ^ (i15 >>> 17);
                    i10 = i16 ^ (i16 << 5);
                    iArr2[0] = i10;
                }
            } else if (this.busy == 0 && this.cells == bVarArr && casBusy()) {
                try {
                    if (this.cells == bVarArr) {
                        b[] bVarArr4 = new b[2];
                        bVarArr4[i10 & 1] = new b(j10);
                        this.cells = bVarArr4;
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    this.busy = 0;
                    if (z11) {
                        return;
                    }
                } catch (Throwable th4) {
                    this.busy = 0;
                    throw th4;
                }
            } else {
                long j12 = this.base;
                if (casBase(j12, fn(j12, j10))) {
                    return;
                }
            }
        }
    }
}
