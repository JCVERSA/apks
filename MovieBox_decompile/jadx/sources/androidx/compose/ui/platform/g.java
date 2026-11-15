package androidx.compose.ui.platform;

import java.text.BreakIterator;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g extends androidx.compose.ui.platform.a {

    public static final a f5472d = new a(null);

    public static final int f5473e = 8;

    private static g f5474f;

    private BreakIterator f5475c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a(Locale locale) {
            if (g.f5474f == null) {
                g.f5474f = new g(locale, null);
            }
            g gVar = g.f5474f;
            Intrinsics.f(gVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator");
            return gVar;
        }

        private a() {
        }
    }

    public g(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
        this(locale);
    }

    private final boolean i(int i10) {
        return i10 > 0 && j(i10 + (-1)) && (i10 == d().length() || !j(i10));
    }

    private final boolean j(int i10) {
        if (i10 < 0 || i10 >= d().length()) {
            return false;
        }
        return Character.isLetterOrDigit(d().codePointAt(i10));
    }

    private final boolean k(int i10) {
        return j(i10) && (i10 == 0 || !j(i10 - 1));
    }

    private final void l(Locale locale) {
        this.f5475c = BreakIterator.getWordInstance(locale);
    }

    @Override
    public int[] a(int i10) {
        if (d().length() <= 0 || i10 >= d().length()) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (!j(i10) && !k(i10)) {
            BreakIterator breakIterator = this.f5475c;
            if (breakIterator == null) {
                Intrinsics.y("impl");
                breakIterator = null;
            }
            i10 = breakIterator.following(i10);
            if (i10 == -1) {
                return null;
            }
        }
        BreakIterator breakIterator2 = this.f5475c;
        if (breakIterator2 == null) {
            Intrinsics.y("impl");
            breakIterator2 = null;
        }
        int iFollowing = breakIterator2.following(i10);
        if (iFollowing == -1 || !i(iFollowing)) {
            return null;
        }
        return c(i10, iFollowing);
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
        while (i10 > 0 && !j(i10 - 1) && !i(i10)) {
            BreakIterator breakIterator = this.f5475c;
            if (breakIterator == null) {
                Intrinsics.y("impl");
                breakIterator = null;
            }
            i10 = breakIterator.preceding(i10);
            if (i10 == -1) {
                return null;
            }
        }
        BreakIterator breakIterator2 = this.f5475c;
        if (breakIterator2 == null) {
            Intrinsics.y("impl");
            breakIterator2 = null;
        }
        int iPreceding = breakIterator2.preceding(i10);
        if (iPreceding == -1 || !k(iPreceding)) {
            return null;
        }
        return c(iPreceding, i10);
    }

    @Override
    public void e(String str) {
        super.e(str);
        BreakIterator breakIterator = this.f5475c;
        if (breakIterator == null) {
            Intrinsics.y("impl");
            breakIterator = null;
        }
        breakIterator.setText(str);
    }

    private g(Locale locale) {
        l(locale);
    }
}
