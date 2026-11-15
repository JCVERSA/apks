package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.j;
import java.util.Map;
import w1.h;
import w1.n;

public interface a extends j {

    public interface InterfaceC0085a {
        a createDataSource();
    }

    long a(h hVar);

    void c(n nVar);

    void close();

    Map getResponseHeaders();

    Uri getUri();
}
