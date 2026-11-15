package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;

public final class d2 {

    private final SemanticsNode f5465a;

    private final Rect f5466b;

    public d2(SemanticsNode semanticsNode, Rect rect) {
        this.f5465a = semanticsNode;
        this.f5466b = rect;
    }

    public final Rect a() {
        return this.f5466b;
    }

    public final SemanticsNode b() {
        return this.f5465a;
    }
}
