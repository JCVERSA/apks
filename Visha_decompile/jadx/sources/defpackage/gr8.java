package defpackage;

import kotlin.text.Regex;
import org.mozilla.javascript.ES6Iterator;

public final class gr8 implements ua0 {
    public final Regex a;

    public gr8(String str) {
        y45.j(str, "pattern");
        this.a = new Regex(str);
    }

    @Override
    public boolean a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        return this.a.matches(str);
    }
}
