package androidx.compose.ui.graphics;

import android.content.ComponentCallbacks2;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.layer.view.ViewLayerContainer;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class k0 implements a4 {

    public static final a f4147e = new a(null);

    private static boolean f4148f = true;

    private final ViewGroup f4149a;

    private DrawChildContainer f4151c;

    private final Object f4150b = new Object();

    private final ComponentCallbacks2 f4152d = null;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b {

        public static final b f4153a = new b();

        private b() {
        }

        @JvmStatic
        public static final long a(View view) {
            return view.getUniqueDrawingId();
        }
    }

    public k0(ViewGroup viewGroup) {
        this.f4149a = viewGroup;
    }

    private final long c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return b.a(view);
        }
        return -1L;
    }

    private final DrawChildContainer d(ViewGroup viewGroup) {
        DrawChildContainer drawChildContainer = this.f4151c;
        if (drawChildContainer != null) {
            return drawChildContainer;
        }
        ViewLayerContainer viewLayerContainer = new ViewLayerContainer(viewGroup.getContext());
        viewGroup.addView(viewLayerContainer);
        this.f4151c = viewLayerContainer;
        return viewLayerContainer;
    }

    @Override
    public GraphicsLayer a() {
        GraphicsLayerImpl d0Var;
        GraphicsLayer graphicsLayer;
        synchronized (this.f4150b) {
            try {
                long jC = c(this.f4149a);
                if (Build.VERSION.SDK_INT >= 29) {
                    d0Var = new androidx.compose.ui.graphics.layer.c0(jC, null, null, 6, null);
                } else if (f4148f) {
                    try {
                        d0Var = new androidx.compose.ui.graphics.layer.e(this.f4149a, jC, null, null, 12, null);
                    } catch (Throwable unused) {
                        f4148f = false;
                        d0Var = new androidx.compose.ui.graphics.layer.d0(d(this.f4149a), jC, null, null, 12, null);
                    }
                } else {
                    d0Var = new androidx.compose.ui.graphics.layer.d0(d(this.f4149a), jC, null, null, 12, null);
                }
                graphicsLayer = new GraphicsLayer(d0Var, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return graphicsLayer;
    }

    @Override
    public void b(GraphicsLayer graphicsLayer) {
        synchronized (this.f4150b) {
            graphicsLayer.H();
            Unit unit = Unit.f64096a;
        }
    }
}
