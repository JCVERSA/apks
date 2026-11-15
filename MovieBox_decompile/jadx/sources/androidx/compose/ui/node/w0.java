package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.x4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

public interface w0 {
    void destroy();

    void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer);

    void invalidate();

    boolean mo138isInLayerk4lQ0M(long j10);

    void mapBounds(y.e eVar, boolean z10);

    long mo139mapOffset8S9VItk(long j10, boolean z10);

    void mo140movegyyYBs(long j10);

    void mo141resizeozmzZPI(long j10);

    void reuseLayer(Function2 function2, Function0 function0);

    void updateDisplayList();

    void updateLayerProperties(x4 x4Var);
}
