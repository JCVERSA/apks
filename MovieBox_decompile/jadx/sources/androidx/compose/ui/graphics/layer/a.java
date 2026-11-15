package androidx.compose.ui.graphics.layer;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.graphics.h4;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private GraphicsLayer f4198a;

    private GraphicsLayer f4199b;

    private MutableScatterSet f4200c;

    private MutableScatterSet f4201d;

    private boolean f4202e;

    public final boolean i(GraphicsLayer graphicsLayer) {
        if (!this.f4202e) {
            h4.a("Only add dependencies during a tracking");
        }
        MutableScatterSet mutableScatterSet = this.f4200c;
        if (mutableScatterSet != null) {
            Intrinsics.e(mutableScatterSet);
            mutableScatterSet.h(graphicsLayer);
        } else if (this.f4198a != null) {
            MutableScatterSet mutableScatterSetA = androidx.collection.w0.a();
            GraphicsLayer graphicsLayer2 = this.f4198a;
            Intrinsics.e(graphicsLayer2);
            mutableScatterSetA.h(graphicsLayer2);
            mutableScatterSetA.h(graphicsLayer);
            this.f4200c = mutableScatterSetA;
            this.f4198a = null;
        } else {
            this.f4198a = graphicsLayer;
        }
        MutableScatterSet mutableScatterSet2 = this.f4201d;
        if (mutableScatterSet2 != null) {
            Intrinsics.e(mutableScatterSet2);
            return !mutableScatterSet2.x(graphicsLayer);
        }
        if (this.f4199b != graphicsLayer) {
            return true;
        }
        this.f4199b = null;
        return false;
    }
}
