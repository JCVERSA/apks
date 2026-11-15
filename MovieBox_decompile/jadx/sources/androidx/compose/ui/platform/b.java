package androidx.compose.ui.platform;

import java.text.BreakIterator;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class b extends androidx.compose.ui.platform.a {

    public static final a f5425d = new a(null);

    public static final int f5426e = 8;

    private static b f5427f;

    private BreakIterator f5428c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(Locale locale) {
            if (b.f5427f == null) {
                b.f5427f = new b(locale, null);
            }
            b bVar = b.f5427f;
            Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator");
            return bVar;
        }

        private a() {
        }
    }

    public b(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
        this(locale);
    }

    private final void i(Locale locale) {
        this.f5428c = BreakIterator.getCharacterInstance(locale);
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
        do {
            BreakIterator breakIterator = this.f5428c;
            if (breakIterator == null) {
                Intrinsics.y("impl");
                breakIterator = null;
            }
            if (breakIterator.isBoundary(i10)) {
                BreakIterator breakIterator2 = this.f5428c;
                if (breakIterator2 == null) {
                    Intrinsics.y("impl");
                    breakIterator2 = null;
                }
                int iFollowing = breakIterator2.following(i10);
                if (iFollowing == -1) {
                    return null;
                }
                return c(i10, iFollowing);
            }
            BreakIterator breakIterator3 = this.f5428c;
            if (breakIterator3 == null) {
                Intrinsics.y("impl");
                breakIterator3 = null;
            }
            i10 = breakIterator3.following(i10);
        } while (i10 != -1);
        return null;
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
        do {
            BreakIterator breakIterator = this.f5428c;
            if (breakIterator == null) {
                Intrinsics.y("impl");
                breakIterator = null;
            }
            if (breakIterator.isBoundary(i10)) {
                BreakIterator breakIterator2 = this.f5428c;
                if (breakIterator2 == null) {
                    Intrinsics.y("impl");
                    breakIterator2 = null;
                }
                int iPreceding = breakIterator2.preceding(i10);
                if (iPreceding == -1) {
                    return null;
                }
                return c(iPreceding, i10);
            }
            BreakIterator breakIterator3 = this.f5428c;
            if (breakIterator3 == null) {
                Intrinsics.y("impl");
                breakIterator3 = null;
            }
            i10 = breakIterator3.preceding(i10);
        } while (i10 != -1);
        return null;
    }

    @Override
    public void e(String str) {
        super.e(str);
        BreakIterator breakIterator = this.f5428c;
        if (breakIterator == null) {
            Intrinsics.y("impl");
            breakIterator = null;
        }
        breakIterator.setText(str);
    }

    private b(Locale locale) {
        i(locale);
    }
}
