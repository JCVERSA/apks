package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;

public interface y2 {

    public static final a f5575a = a.f5576a;

    public static final class a {

        static final a f5576a = new a();

        private static final y2 f5577b = new y2() {
            @Override
            public final Recomposer a(View view) {
                return y2.a.b(view);
            }
        };

        private a() {
        }

        public static final Recomposer b(View view) {
            return WindowRecomposer_androidKt.c(view, null, null, 3, null);
        }

        public final y2 c() {
            return f5577b;
        }
    }

    Recomposer a(View view);
}
