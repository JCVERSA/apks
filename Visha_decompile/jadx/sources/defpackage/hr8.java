package defpackage;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;

public abstract class hr8 {
    public static final c26 f(Matcher matcher, int i, CharSequence charSequence) {
        if (matcher.find(i)) {
            return new d26(matcher, charSequence);
        }
        return null;
    }

    public static final c26 g(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new d26(matcher, charSequence);
        }
        return null;
    }

    public static final u15 h(MatchResult matchResult) {
        return wn8.q(matchResult.start(), matchResult.end());
    }

    public static final u15 i(MatchResult matchResult, int i) {
        return wn8.q(matchResult.start(i), matchResult.end(i));
    }

    public static final int j(Iterable iterable) {
        Iterator it = iterable.iterator();
        int value = 0;
        while (it.hasNext()) {
            value |= ((yx3) it.next()).getValue();
        }
        return value;
    }
}
