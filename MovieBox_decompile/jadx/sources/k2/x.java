package k2;

import android.net.Uri;
import java.util.Map;

public interface x {

    public static final x f63719a = new x() {
        @Override
        public x a(h3.s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return w.e();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    x a(h3.s.a aVar);

    x b(int i10);

    r[] c(Uri uri, Map map);

    r[] createExtractors();

    x d(boolean z10);
}
