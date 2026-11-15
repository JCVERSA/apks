package defpackage;

import android.content.Context;

public class z7d {
    public volatile fkd a;
    public final Context b;

    public z7d(Context context) {
        this.b = context;
    }

    public fkd a(long j, long j2) {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        this.a = new ijd(this.b, j, j2).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.a;
    }
}
