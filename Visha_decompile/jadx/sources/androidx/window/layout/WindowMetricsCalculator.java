package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.core.Bounds;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NotImplementedError;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/window/layout/WindowMetricsCalculator;", "", "computeCurrentWindowMetrics", "Landroidx/window/layout/WindowMetrics;", "activity", "Landroid/app/Activity;", "context", "Landroid/content/Context;", "computeMaximumWindowMetrics", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WindowMetricsCalculator {

    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Landroidx/window/layout/WindowMetricsCalculator$Companion;", "", MethodDecl.initName, "()V", "Landroidx/window/layout/WindowMetricsCalculator;", "getOrCreate", "()Landroidx/window/layout/WindowMetricsCalculator;", "Landroidx/window/layout/WindowMetricsCalculatorDecorator;", "overridingDecorator", "Lzfb;", "overrideDecorator", "(Landroidx/window/layout/WindowMetricsCalculatorDecorator;)V", "reset", "Landroid/view/WindowMetrics;", "windowMetrics", "Landroidx/window/layout/WindowMetrics;", "translateWindowMetrics$window_release", "(Landroid/view/WindowMetrics;)Landroidx/window/layout/WindowMetrics;", "translateWindowMetrics", "Landroid/util/DisplayMetrics;", "displayMetrics", "fromDisplayMetrics$window_release", "(Landroid/util/DisplayMetrics;)Landroidx/window/layout/WindowMetrics;", "fromDisplayMetrics", "Lkotlin/Function1;", "decorator", "Le74;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        private static e74 decorator = new e74() {
            @Override
            public final WindowMetricsCalculator invoke(WindowMetricsCalculator windowMetricsCalculator) {
                y45.j(windowMetricsCalculator, "it");
                return windowMetricsCalculator;
            }
        };

        private Companion() {
        }

        public final WindowMetrics fromDisplayMetrics$window_release(DisplayMetrics displayMetrics) {
            y45.j(displayMetrics, "displayMetrics");
            Bounds bounds = new Bounds(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
            WindowInsetsCompat windowInsetsCompatBuild = new WindowInsetsCompat.Builder().build();
            y45.i(windowInsetsCompatBuild, "Builder().build()");
            return new WindowMetrics(bounds, windowInsetsCompatBuild);
        }

        public final WindowMetricsCalculator getOrCreate() {
            return (WindowMetricsCalculator) decorator.invoke(WindowMetricsCalculatorCompat.INSTANCE);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void overrideDecorator(WindowMetricsCalculatorDecorator overridingDecorator) {
            y45.j(overridingDecorator, "overridingDecorator");
            decorator = new WindowMetricsCalculator$Companion$overrideDecorator$1(overridingDecorator);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void reset() {
            decorator = new e74() {
                @Override
                public final WindowMetricsCalculator invoke(WindowMetricsCalculator windowMetricsCalculator) {
                    y45.j(windowMetricsCalculator, "it");
                    return windowMetricsCalculator;
                }
            };
        }

        @RequiresApi(30)
        public final WindowMetrics translateWindowMetrics$window_release(android.view.WindowMetrics windowMetrics) {
            y45.j(windowMetrics, "windowMetrics");
            Rect bounds = windowMetrics.getBounds();
            y45.i(bounds, "windowMetrics.bounds");
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowMetrics.getWindowInsets());
            y45.i(windowInsetsCompat, "toWindowInsetsCompat(windowMetrics.windowInsets)");
            return new WindowMetrics(bounds, windowInsetsCompat);
        }
    }

    static WindowMetricsCalculator getOrCreate() {
        return INSTANCE.getOrCreate();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void overrideDecorator(WindowMetricsCalculatorDecorator windowMetricsCalculatorDecorator) {
        INSTANCE.overrideDecorator(windowMetricsCalculatorDecorator);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void reset() {
        INSTANCE.reset();
    }

    WindowMetrics computeCurrentWindowMetrics(Activity activity);

    default WindowMetrics computeCurrentWindowMetrics(Context context) {
        y45.j(context, "context");
        throw new NotImplementedError("Must override computeCurrentWindowMetrics(context) and provide an implementation.");
    }

    WindowMetrics computeMaximumWindowMetrics(Activity activity);

    default WindowMetrics computeMaximumWindowMetrics(Context context) {
        y45.j(context, "context");
        throw new NotImplementedError("Must override computeMaximumWindowMetrics(context) and provide an implementation.");
    }
}
