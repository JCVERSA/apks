package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

public abstract class x0 {
    static {
        y0.a aVar = y0.f5152d1;
    }

    public static w0 a(y0 y0Var, Function2 function2, Function0 function0, GraphicsLayer graphicsLayer, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLayer");
        }
        if ((i10 & 4) != 0) {
            graphicsLayer = null;
        }
        return y0Var.createLayer(function2, function0, graphicsLayer);
    }

    public static void b(y0 y0Var, LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forceMeasureTheSubtree");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        y0Var.forceMeasureTheSubtree(layoutNode, z10);
    }

    public static void c(y0 y0Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: measureAndLayout");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        y0Var.measureAndLayout(z10);
    }

    public static void d(y0 y0Var, LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestMeasure");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        if ((i10 & 8) != 0) {
            z12 = true;
        }
        y0Var.onRequestMeasure(layoutNode, z10, z11, z12);
    }

    public static void e(y0 y0Var, LayoutNode layoutNode, boolean z10, boolean z11, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestRelayout");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        y0Var.onRequestRelayout(layoutNode, z10, z11);
    }
}
