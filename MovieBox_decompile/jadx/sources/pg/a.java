package pg;

import android.text.TextUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private int f69152a;

    private int f69153b;

    private og.b f69155d;

    private Executor f69156e;

    private ExecutorService f69157f;

    private String f69154c = "";

    private int f69158g = 5;

    public a(int i10, int i11, ExecutorService executorService) {
        this.f69152a = Math.max(1, i10);
        this.f69153b = i11;
        this.f69157f = executorService;
    }

    public final com.tn.lib.thread.c a() {
        String str;
        int iMax = Math.max(10, this.f69158g);
        this.f69158g = iMax;
        this.f69158g = Math.min(1, iMax);
        this.f69152a = Math.max(1, this.f69152a);
        this.f69156e = c.f69160b.a();
        if (TextUtils.isEmpty(this.f69154c)) {
            int i10 = this.f69153b;
            if (i10 == 1) {
                str = "FIXED";
            } else if (i10 == 2) {
                str = "CACHEABLE";
            } else if (i10 != 3) {
                str = i10 != 4 ? "ThreadEngine" : "SINGLE";
            } else {
                str = "SCHEDULED";
            }
            this.f69154c = str;
        }
        return new com.tn.lib.thread.c(this.f69153b, this.f69152a, this.f69158g, this.f69154c, this.f69155d, this.f69156e, this.f69157f);
    }

    public final a b(String name) {
        Intrinsics.h(name, "name");
        this.f69154c = name;
        return this;
    }

    public final a c(int i10) {
        this.f69158g = i10;
        return this;
    }
}
