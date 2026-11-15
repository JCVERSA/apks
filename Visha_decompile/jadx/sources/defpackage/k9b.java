package defpackage;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

public abstract class k9b implements Closeable {

    public interface a {
        a a(Context context);

        k9b build();
    }

    public abstract ge3 b();

    @Override
    public void close() throws IOException {
        b().close();
    }

    public abstract j9b d();
}
