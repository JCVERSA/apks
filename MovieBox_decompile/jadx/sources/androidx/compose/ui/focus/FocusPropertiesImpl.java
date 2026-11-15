package androidx.compose.ui.focus;

import kotlin.jvm.functions.Function1;

public final class FocusPropertiesImpl implements k {

    private boolean f3903a = true;

    private FocusRequester f3904b;

    private FocusRequester f3905c;

    private FocusRequester f3906d;

    private FocusRequester f3907e;

    private FocusRequester f3908f;

    private FocusRequester f3909g;

    private FocusRequester f3910h;

    private FocusRequester f3911i;

    private Function1 f3912j;

    private Function1 f3913k;

    public FocusPropertiesImpl() {
        FocusRequester.a aVar = FocusRequester.f3914b;
        this.f3904b = aVar.b();
        this.f3905c = aVar.b();
        this.f3906d = aVar.b();
        this.f3907e = aVar.b();
        this.f3908f = aVar.b();
        this.f3909g = aVar.b();
        this.f3910h = aVar.b();
        this.f3911i = aVar.b();
        this.f3912j = new Function1<b, FocusRequester>() {
            @Override
            public Object invoke(Object obj) {
                return m108invoke3ESFkO8(((b) obj).o());
            }

            public final FocusRequester m108invoke3ESFkO8(int i10) {
                return FocusRequester.f3914b.b();
            }
        };
        this.f3913k = new Function1<b, FocusRequester>() {
            @Override
            public Object invoke(Object obj) {
                return m109invoke3ESFkO8(((b) obj).o());
            }

            public final FocusRequester m109invoke3ESFkO8(int i10) {
                return FocusRequester.f3914b.b();
            }
        };
    }

    @Override
    public FocusRequester i() {
        return this.f3908f;
    }

    @Override
    public FocusRequester j() {
        return this.f3910h;
    }

    @Override
    public FocusRequester k() {
        return this.f3904b;
    }

    @Override
    public FocusRequester m() {
        return this.f3909g;
    }

    @Override
    public FocusRequester n() {
        return this.f3906d;
    }

    @Override
    public Function1 o() {
        return this.f3913k;
    }

    @Override
    public FocusRequester p() {
        return this.f3911i;
    }

    @Override
    public FocusRequester q() {
        return this.f3907e;
    }

    @Override
    public void r(boolean z10) {
        this.f3903a = z10;
    }

    @Override
    public Function1 s() {
        return this.f3912j;
    }

    @Override
    public boolean t() {
        return this.f3903a;
    }

    @Override
    public FocusRequester u() {
        return this.f3905c;
    }
}
