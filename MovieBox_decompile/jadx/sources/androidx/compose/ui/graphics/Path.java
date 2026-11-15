package androidx.compose.ui.graphics;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

public interface Path {

    public static final a f3966a = a.f3967a;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/Path$Direction;", "", "(Ljava/lang/String;I)V", "CounterClockwise", "Clockwise", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Direction {
        CounterClockwise,
        Clockwise
    }

    public static final class a {

        static final a f3967a = new a();

        private a() {
        }
    }

    boolean a();

    void b();

    void c(float f10, float f11);

    void close();

    void d(float f10, float f11, float f12, float f13, float f14, float f15);

    void e(int i10);

    void f(float f10, float f11, float f12, float f13);

    void g(float f10, float f11, float f12, float f13);

    y.i getBounds();

    int h();

    void i(y.k kVar, Direction direction);

    boolean isEmpty();

    void j(float f10, float f11);

    void k(float f10, float f11, float f12, float f13, float f14, float f15);

    boolean l(Path path, Path path2, int i10);

    void m(float f10, float f11);

    void n(y.i iVar, Direction direction);

    void o(float f10, float f11);

    void reset();
}
