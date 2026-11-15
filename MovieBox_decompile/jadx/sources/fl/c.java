package fl;

import android.content.Context;

public class c {

    private volatile h f60189a;

    private final Context f60190b;

    public c(Context context) {
        this.f60190b = context;
    }

    public h a(long j10, long j11) {
        if (this.f60189a == null) {
            synchronized (this) {
                try {
                    if (this.f60189a == null) {
                        this.f60189a = new g(this.f60190b, j10, j11).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f60189a;
    }
}
