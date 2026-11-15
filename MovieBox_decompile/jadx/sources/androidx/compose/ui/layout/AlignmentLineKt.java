package androidx.compose.ui.layout;

public abstract class AlignmentLineKt {

    private static final h f4785a = new h(AlignmentLineKt$FirstBaseline$1.INSTANCE);

    private static final h f4786b = new h(AlignmentLineKt$LastBaseline$1.INSTANCE);

    public static final h a() {
        return f4785a;
    }

    public static final h b() {
        return f4786b;
    }

    public static final int c(a aVar, int i10, int i11) {
        return ((Number) aVar.a().invoke(Integer.valueOf(i10), Integer.valueOf(i11))).intValue();
    }
}
