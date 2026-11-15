package yw;

import android.text.format.Formatter;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.n;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private final String f76417a;

    private final String f76418b;

    private final boolean f76419c;

    private final boolean f76420d;

    private final long f76421e;

    private final long f76422f;

    public f(String path, String state, boolean z10, boolean z11) {
        long jK;
        Intrinsics.h(path, "path");
        Intrinsics.h(state, "state");
        this.f76417a = path;
        this.f76418b = state;
        this.f76419c = z10;
        this.f76420d = z11;
        long j10 = 0;
        try {
            jK = n.k(path);
        } catch (Throwable unused) {
            jK = 0;
        }
        this.f76421e = jK;
        try {
            j10 = n.j(path);
        } catch (Throwable unused2) {
        }
        this.f76422f = j10;
    }

    public final long a() {
        return this.f76422f;
    }

    public final String b() {
        return this.f76417a;
    }

    public final boolean c() {
        return this.f76419c;
    }

    public String toString() {
        return "SDCardInfo {path = " + this.f76417a + ", state = " + this.f76418b + ", isRemovable = " + this.f76419c + ", isEmulated = " + this.f76420d + ", totalSize = " + Formatter.formatFileSize(Utils.a(), this.f76421e) + ", availableSize = " + Formatter.formatFileSize(Utils.a(), this.f76422f) + "}";
    }
}
