package defpackage;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.c;

public abstract class qzd extends c {
    public final String b = "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.";

    public qzd(String str) {
    }

    @Override
    public final void registerConnectionFailedListener(@NonNull c.b bVar) {
        throw new UnsupportedOperationException(this.b);
    }

    @Override
    public final void unregisterConnectionFailedListener(@NonNull c.b bVar) {
        throw new UnsupportedOperationException(this.b);
    }
}
