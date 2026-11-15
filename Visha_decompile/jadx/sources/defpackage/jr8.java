package defpackage;

import kotlin.text.Regex;

public final class jr8 extends dd0 {
    public final Regex b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jr8(Regex regex, boolean z) {
        super(z);
        y45.j(regex, "regex");
        this.b = regex;
    }

    @Override
    public boolean b(String str) {
        y45.j(str, "input");
        return (a() && str.length() == 0) || this.b.matches(str);
    }
}
