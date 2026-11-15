package androidx.compose.ui.graphics.layer;

import android.view.RenderNode;

final class p0 {

    public static final p0 f4291a = new p0();

    private p0() {
    }

    public final int a(RenderNode renderNode) {
        return renderNode.getAmbientShadowColor();
    }

    public final int b(RenderNode renderNode) {
        return renderNode.getSpotShadowColor();
    }

    public final void c(RenderNode renderNode, int i10) {
        renderNode.setAmbientShadowColor(i10);
    }

    public final void d(RenderNode renderNode, int i10) {
        renderNode.setSpotShadowColor(i10);
    }
}
