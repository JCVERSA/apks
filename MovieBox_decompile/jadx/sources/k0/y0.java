package k0;

import android.text.StaticLayout;
import kotlin.jvm.JvmStatic;

final class y0 {

    public static final y0 f63473a = new y0();

    private y0() {
    }

    @JvmStatic
    public static final boolean a(StaticLayout staticLayout) {
        return staticLayout.isFallbackLineSpacingEnabled();
    }

    @JvmStatic
    public static final void b(StaticLayout.Builder builder, int i10, int i11) {
        builder.setLineBreakConfig(s0.a().setLineBreakStyle(i10).setLineBreakWordStyle(i11).build());
    }
}
