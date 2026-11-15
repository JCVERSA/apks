package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class h {

    public static final a f5815b = new a(null);

    private static final c0 f5816c = new f();

    private static final s f5817d = new s(C.SANS_SERIF_NAME, "FontFamily.SansSerif");

    private static final s f5818e = new s(C.SERIF_NAME, "FontFamily.Serif");

    private static final s f5819f = new s("monospace", "FontFamily.Monospace");

    private static final s f5820g = new s("cursive", "FontFamily.Cursive");

    private final boolean f5821a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c0 a() {
            return h.f5816c;
        }

        public final s b() {
            return h.f5817d;
        }

        private a() {
        }
    }

    public interface b {
        a3 a(h hVar, p pVar, int i10, int i11);
    }

    public h(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }

    private h(boolean z10) {
        this.f5821a = z10;
    }
}
