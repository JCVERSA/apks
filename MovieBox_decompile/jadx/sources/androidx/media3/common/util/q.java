package androidx.media3.common.util;

import java.util.Arrays;

public abstract class q {

    private String[] f10128a;

    private boolean f10129b;

    private boolean f10130c;

    public q(String... strArr) {
        this.f10128a = strArr;
    }

    public synchronized boolean a() {
        if (this.f10129b) {
            return this.f10130c;
        }
        this.f10129b = true;
        try {
            for (String str : this.f10128a) {
                b(str);
            }
            this.f10130c = true;
        } catch (UnsatisfiedLinkError unused) {
            u.h("LibraryLoader", "Failed to load " + Arrays.toString(this.f10128a));
        }
        return this.f10130c;
    }

    protected abstract void b(String str);
}
