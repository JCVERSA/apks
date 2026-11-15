package defpackage;

import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class tt2 extends b19 {
    public tt2(View view, int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? false : z);
    }

    @Override
    public void dismiss() {
        try {
            super.dismiss();
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tt2(View view, int i, int i2, boolean z) {
        super(view, i, i2, z);
        y45.j(view, "contentView");
    }
}
