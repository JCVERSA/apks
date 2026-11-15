package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.a;

public class ai0 extends rd0 implements a {
    public final boolean h;

    public ai0(Boolean bool, b bVar) {
        super(bool, bVar, false);
        this.h = bool.booleanValue();
    }

    @Override
    public boolean getAsBoolean() {
        return this.h;
    }
}
