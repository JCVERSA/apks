package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

final class MatcherMatchResult implements MatchResult {

    private final Matcher f64581a;

    private final CharSequence f64582b;

    private final MatchGroupCollection f64583c;

    private List f64584d;

    public MatcherMatchResult(Matcher matcher, CharSequence input) {
        Intrinsics.h(matcher, "matcher");
        Intrinsics.h(input, "input");
        this.f64581a = matcher;
        this.f64582b = input;
        this.f64583c = new MatcherMatchResult$groups$1(this);
    }

    public final java.util.regex.MatchResult e() {
        return this.f64581a;
    }

    @Override
    public List a() {
        if (this.f64584d == null) {
            this.f64584d = new AbstractList<String>() {
                @Override
                public final boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return e((String) obj);
                    }
                    return false;
                }

                public boolean e(String str) {
                    return super.contains(str);
                }

                @Override
                public String get(int index) {
                    String strGroup = this.f64585a.e().group(index);
                    return strGroup == null ? "" : strGroup;
                }

                @Override
                public int get_size() {
                    return this.f64585a.e().groupCount() + 1;
                }

                public int i(String str) {
                    return super.indexOf(str);
                }

                @Override
                public final int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return i((String) obj);
                    }
                    return -1;
                }

                public int j(String str) {
                    return super.lastIndexOf(str);
                }

                @Override
                public final int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return j((String) obj);
                    }
                    return -1;
                }
            };
        }
        List list = this.f64584d;
        Intrinsics.e(list);
        return list;
    }

    @Override
    public IntRange b() {
        return RegexKt.h(e());
    }

    @Override
    public MatchGroupCollection c() {
        return this.f64583c;
    }

    @Override
    public MatchResult next() {
        int iEnd = e().end() + (e().end() == e().start() ? 1 : 0);
        if (iEnd > this.f64582b.length()) {
            return null;
        }
        Matcher matcher = this.f64581a.pattern().matcher(this.f64582b);
        Intrinsics.g(matcher, "matcher(...)");
        return RegexKt.f(matcher, iEnd, this.f64582b);
    }
}
