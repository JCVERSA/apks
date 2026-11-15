package defpackage;

import android.content.Context;
import java.io.File;

public final class jne implements yme {
    public File a = null;
    public final Context b;

    public jne(Context context) {
        this.b = context;
    }

    @Override
    public final File zza() {
        if (this.a == null) {
            this.a = new File(this.b.getCacheDir(), "volley");
        }
        return this.a;
    }
}
