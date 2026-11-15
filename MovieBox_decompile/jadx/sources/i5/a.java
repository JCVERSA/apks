package i5;

import android.content.Context;

public abstract class a {

    public static final class b {

        private final Context f61851a;

        private b(Context context) {
            this.f61851a = context;
        }

        public a a() {
            Context context = this.f61851a;
            if (context != null) {
                return new i5.b(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    public static b c(Context context) {
        return new b(context);
    }

    public abstract void a();

    public abstract d b();

    public abstract void d(c cVar);
}
