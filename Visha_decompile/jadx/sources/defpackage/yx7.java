package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivPatch;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class yx7 extends be3 implements xx7 {
    public static final a f = new a(null);
    public final Div2View d;
    public final DivPatch e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public yx7(Div2View div2View, DivPatch divPatch) {
        y45.j(div2View, "div2View");
        y45.j(divPatch, "patch");
        this.d = div2View;
        this.e = divPatch;
    }

    private final void C(String str) {
        this.d.getDiv2Component().g().v(this.d, this.e, str, B());
    }

    @Override
    public void a() {
        C("Div patched successfully");
    }

    @Override
    public void e() {
        A("Simple rebind failed", "Div has no state to bind");
    }

    @Override
    public void h() {
        C("Patch not performed. Cannot find state to bind");
    }

    @Override
    public void l() {
        A("Simple rebind failed", "Div2View has no child to rebind");
    }

    @Override
    public void o(Exception exc) {
        y45.j(exc, "e");
        A("Simple rebind failed with exception", xq8.b(exc.getClass()) + " (" + exc.getMessage() + ')');
    }
}
