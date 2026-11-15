package xk;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

public final class a {

    public static final C0942a f75349c = new C0942a(null);

    public static final int f75350d = 8;

    private final ImageView f75351a;

    private final View f75352b;

    public static final class C0942a {
        public C0942a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0942a() {
        }
    }

    public a(ImageView imageView, View view) {
        this.f75351a = imageView;
        this.f75352b = view;
    }

    private final int b(int i10, float f10) {
        return (i10 & 16777215) | (((int) (RangesKt.k(f10, 0.0f, 1.0f) * 255)) << 24);
    }

    public final void a(Integer num) {
        View view = this.f75352b;
        if (view == null || num == null) {
            return;
        }
        view.setBackground(sk.a.b(new int[]{num.intValue(), num.intValue(), b(num.intValue(), 0.3f)}, GradientDrawable.Orientation.LEFT_RIGHT));
    }
}
