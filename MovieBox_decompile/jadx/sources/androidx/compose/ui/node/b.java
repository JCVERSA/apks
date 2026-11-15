package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties$CC;
import androidx.compose.ui.focus.FocusRequester;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

final class b implements androidx.compose.ui.focus.k {

    public static final b f5071a = new b();

    private static Boolean f5072b;

    private b() {
    }

    public final boolean a() {
        return f5072b != null;
    }

    public final void b() {
        f5072b = null;
    }

    @Override
    public FocusRequester i() {
        return FocusProperties$CC.e(this);
    }

    @Override
    public FocusRequester j() {
        return FocusProperties$CC.i(this);
    }

    @Override
    public FocusRequester k() {
        return FocusProperties$CC.f(this);
    }

    @Override
    public FocusRequester m() {
        return FocusProperties$CC.h(this);
    }

    @Override
    public FocusRequester n() {
        return FocusProperties$CC.j(this);
    }

    @Override
    public Function1 o() {
        return FocusProperties$CC.d(this);
    }

    @Override
    public FocusRequester p() {
        return FocusProperties$CC.b(this);
    }

    @Override
    public FocusRequester q() {
        return FocusProperties$CC.a(this);
    }

    @Override
    public void r(boolean z10) {
        f5072b = Boolean.valueOf(z10);
    }

    @Override
    public Function1 s() {
        return FocusProperties$CC.c(this);
    }

    @Override
    public boolean t() {
        Boolean bool = f5072b;
        if (bool != null) {
            return bool.booleanValue();
        }
        g0.a.c("canFocus is read before it is written");
        throw new KotlinNothingValueException();
    }

    @Override
    public FocusRequester u() {
        return FocusProperties$CC.g(this);
    }
}
