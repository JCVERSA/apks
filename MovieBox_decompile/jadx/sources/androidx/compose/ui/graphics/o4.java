package androidx.compose.ui.graphics;

public abstract class o4 {
    static {
        Path.a aVar = Path.f3966a;
    }

    public static void a(Path path, y.i iVar, Path.Direction direction, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRect");
        }
        if ((i10 & 2) != 0) {
            direction = Path.Direction.CounterClockwise;
        }
        path.n(iVar, direction);
    }

    public static void b(Path path, y.k kVar, Path.Direction direction, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRoundRect");
        }
        if ((i10 & 2) != 0) {
            direction = Path.Direction.CounterClockwise;
        }
        path.i(kVar, direction);
    }
}
