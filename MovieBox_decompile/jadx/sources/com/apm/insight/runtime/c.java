package com.apm.insight.runtime;

import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class c {

    private final List<ICrashCallback> f19167a = new CopyOnWriteArrayList();

    private final List<ICrashCallback> f19168b = new CopyOnWriteArrayList();

    private final List<ICrashCallback> f19169c = new CopyOnWriteArrayList();

    private final List<ICrashCallback> f19170d = new CopyOnWriteArrayList();

    private final List<IOOMCallback> f19171e = new CopyOnWriteArrayList();

    static class AnonymousClass1 {

        static final int[] f19172a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f19172a = iArr;
            try {
                iArr[CrashType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19172a[CrashType.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19172a[CrashType.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19172a[CrashType.LAUNCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19172a[CrashType.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    final void a(ICrashCallback iCrashCallback, CrashType crashType) {
        int i10 = AnonymousClass1.f19172a[crashType.ordinal()];
        if (i10 == 1) {
            this.f19167a.add(iCrashCallback);
            this.f19168b.add(iCrashCallback);
            this.f19169c.add(iCrashCallback);
            this.f19170d.add(iCrashCallback);
            return;
        }
        if (i10 == 2) {
            this.f19170d.add(iCrashCallback);
            return;
        }
        if (i10 == 3) {
            this.f19168b.add(iCrashCallback);
        } else if (i10 == 4) {
            this.f19167a.add(iCrashCallback);
        } else {
            if (i10 != 5) {
                return;
            }
            this.f19169c.add(iCrashCallback);
        }
    }

    final void b(ICrashCallback iCrashCallback, CrashType crashType) {
        int i10 = AnonymousClass1.f19172a[crashType.ordinal()];
        if (i10 == 1) {
            this.f19167a.remove(iCrashCallback);
            this.f19168b.remove(iCrashCallback);
            this.f19169c.remove(iCrashCallback);
            this.f19170d.remove(iCrashCallback);
            return;
        }
        if (i10 == 2) {
            this.f19170d.remove(iCrashCallback);
            return;
        }
        if (i10 == 3) {
            this.f19168b.remove(iCrashCallback);
        } else if (i10 == 4) {
            this.f19167a.remove(iCrashCallback);
        } else {
            if (i10 != 5) {
                return;
            }
            this.f19169c.remove(iCrashCallback);
        }
    }

    @NonNull
    public final List<ICrashCallback> c() {
        return this.f19168b;
    }

    @NonNull
    public final List<ICrashCallback> d() {
        return this.f19169c;
    }

    @NonNull
    public final List<ICrashCallback> e() {
        return this.f19170d;
    }

    final void a(IOOMCallback iOOMCallback) {
        this.f19171e.add(iOOMCallback);
    }

    final void b(IOOMCallback iOOMCallback) {
        this.f19171e.remove(iOOMCallback);
    }

    @NonNull
    public final List<IOOMCallback> a() {
        return this.f19171e;
    }

    @NonNull
    public final List<ICrashCallback> b() {
        return this.f19167a;
    }
}
