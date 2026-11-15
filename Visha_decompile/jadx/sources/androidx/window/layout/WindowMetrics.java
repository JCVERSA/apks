package androidx.window.layout;

import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.core.Bounds;
import androidx.window.core.ExperimentalWindowApi;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Landroidx/window/layout/WindowMetrics;", "", "bounds", "Landroid/graphics/Rect;", "insets", "Landroidx/core/view/WindowInsetsCompat;", "(Landroid/graphics/Rect;Landroidx/core/view/WindowInsetsCompat;)V", "_bounds", "Landroidx/window/core/Bounds;", "_windowInsetsCompat", "(Landroidx/window/core/Bounds;Landroidx/core/view/WindowInsetsCompat;)V", "getBounds", "()Landroid/graphics/Rect;", "equals", "", "other", "getWindowInsets", "hashCode", "", "toString", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WindowMetrics {
    private final Bounds _bounds;

    private final WindowInsetsCompat windowInsetsCompat;

    public WindowMetrics(Bounds bounds, WindowInsetsCompat windowInsetsCompat) {
        y45.j(bounds, "_bounds");
        y45.j(windowInsetsCompat, "_windowInsetsCompat");
        this._bounds = bounds;
        this.windowInsetsCompat = windowInsetsCompat;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(WindowMetrics.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type androidx.window.layout.WindowMetrics");
        WindowMetrics windowMetrics = (WindowMetrics) other;
        return y45.e(this._bounds, windowMetrics._bounds) && y45.e(this.windowInsetsCompat, windowMetrics.windowInsetsCompat);
    }

    public final Rect getBounds() {
        return this._bounds.toRect();
    }

    @RequiresApi(30)
    @ExperimentalWindowApi
    public final WindowInsetsCompat getWindowInsetsCompat() {
        return this.windowInsetsCompat;
    }

    public int hashCode() {
        return (this._bounds.hashCode() * 31) + this.windowInsetsCompat.hashCode();
    }

    public String toString() {
        return "WindowMetrics( bounds=" + this._bounds + ", windowInsetsCompat=" + this.windowInsetsCompat + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public WindowMetrics(Rect rect, WindowInsetsCompat windowInsetsCompat, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 2) != 0) {
            windowInsetsCompat = new WindowInsetsCompat.Builder().build();
            y45.i(windowInsetsCompat, "Builder().build()");
        }
        this(rect, windowInsetsCompat);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WindowMetrics(Rect rect, WindowInsetsCompat windowInsetsCompat) {
        this(new Bounds(rect), windowInsetsCompat);
        y45.j(rect, "bounds");
        y45.j(windowInsetsCompat, "insets");
    }
}
