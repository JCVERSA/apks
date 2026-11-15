package androidx.window.layout;

import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class WindowMetricsCalculator$Companion$overrideDecorator$1 extends FunctionReferenceImpl implements e74 {
    public WindowMetricsCalculator$Companion$overrideDecorator$1(Object obj) {
        super(1, obj, WindowMetricsCalculatorDecorator.class, "decorate", "decorate(Landroidx/window/layout/WindowMetricsCalculator;)Landroidx/window/layout/WindowMetricsCalculator;", 0);
    }

    @Override
    public final WindowMetricsCalculator invoke(WindowMetricsCalculator windowMetricsCalculator) {
        y45.j(windowMetricsCalculator, "p0");
        return ((WindowMetricsCalculatorDecorator) this.receiver).decorate(windowMetricsCalculator);
    }
}
