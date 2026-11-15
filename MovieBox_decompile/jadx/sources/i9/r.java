package i9;

import android.net.Uri;
import java.util.Map;

public interface r {

    public static final r f61969a = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return q.b();
        }
    };

    l[] c(Uri uri, Map map);

    l[] createExtractors();
}
