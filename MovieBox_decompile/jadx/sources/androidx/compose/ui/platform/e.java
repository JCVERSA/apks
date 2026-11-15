package androidx.compose.ui.platform;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e extends androidx.compose.ui.platform.a {

    public static final a f5467c = new a(null);

    private static e f5468d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            if (e.f5468d == null) {
                e.f5468d = new e(null);
            }
            e eVar = e.f5468d;
            Intrinsics.f(eVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator");
            return eVar;
        }

        private a() {
        }
    }

    public e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final boolean i(int i10) {
        return i10 > 0 && d().charAt(i10 + (-1)) != '\n' && (i10 == d().length() || d().charAt(i10) == '\n');
    }

    private final boolean j(int i10) {
        return d().charAt(i10) != '\n' && (i10 == 0 || d().charAt(i10 - 1) == '\n');
    }

    @Override
    public int[] a(int i10) {
        int length = d().length();
        if (length <= 0 || i10 >= length) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < length && d().charAt(i10) == '\n' && !j(i10)) {
            i10++;
        }
        if (i10 >= length) {
            return null;
        }
        int i11 = i10 + 1;
        while (i11 < length && !i(i11)) {
            i11++;
        }
        return c(i10, i11);
    }

    @Override
    public int[] b(int i10) {
        int length = d().length();
        if (length <= 0 || i10 <= 0) {
            return null;
        }
        if (i10 > length) {
            i10 = length;
        }
        while (i10 > 0 && d().charAt(i10 - 1) == '\n' && !i(i10)) {
            i10--;
        }
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        while (i11 > 0 && !j(i11)) {
            i11--;
        }
        return c(i11, i10);
    }

    private e() {
    }
}
