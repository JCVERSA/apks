package defpackage;

import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.reuse.RebindTask;
import com.yandex.div2.DivData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ve0 extends be3 implements ue0 {
    public static final a g = new a(null);
    public final Div2View d;
    public final DivData e;
    public final DivData f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public ve0(Div2View div2View, DivData divData, DivData divData2) {
        y45.j(div2View, "div2View");
        this.d = div2View;
        this.e = divData;
        this.f = divData2;
    }

    public final void C(String str) {
        this.d.getDiv2Component().g().d(this.d, this.e, this.f, str, B());
    }

    @Override
    public void b() {
        C("Performed complex rebind");
    }

    @Override
    public void c() {
        C("DivData bound for the first time");
    }

    @Override
    public void e() {
        C("Div has no state to bind");
    }

    @Override
    public void f() {
        A("Div comparison failed", "Some element has changed its `id` while has transitions");
    }

    @Override
    public void g() {
        A("Div comparison failed", "For some element its old and new java classes are not equal");
    }

    @Override
    public void i() {
        C("No actions performed. Old and new DivData are the same");
    }

    @Override
    public void j() {
        C("Div has no state to bind");
    }

    @Override
    public void k() {
        A("Div comparison failed", "No old `DivData` to compare with");
    }

    @Override
    public void l() {
        A("Simple rebind failed", "Div2View has no child to rebind");
    }

    @Override
    public void m() {
        A("Div comparison failed", "Cannot find required state of `DivData`");
    }

    @Override
    public void n() {
        A("Complex rebind failed", "Cannot find any difference to bind");
    }

    @Override
    public void o(Exception exc) {
        y45.j(exc, "e");
        A("Simple rebind failed with exception", xq8.b(exc.getClass()) + " (" + exc.getMessage() + ')');
    }

    @Override
    public void p() {
        C("Performed simple rebind");
    }

    @Override
    public void q() {
        C("Performed unoptimized rebind. Old data was cleaned up");
    }

    @Override
    public void r() {
        A("Div comparison failed", "Some element has changed its `layoutMode` from/to 'wrap'");
    }

    @Override
    public void s() {
        A("Complex rebind failed", "Cannot find div inside state to bind");
    }

    @Override
    public void t(RebindTask.UnsupportedElementException unsupportedElementException) {
        y45.j(unsupportedElementException, "e");
        A("Complex rebind failed with exception", xq8.b(unsupportedElementException.getClass()) + " (" + unsupportedElementException.getMessage() + ')');
    }

    @Override
    public void u() {
        A("Div comparison failed", "Some element has changed its `orientation` from/to 'overlap'");
    }

    @Override
    public void v() {
        A("Div comparison failed", "Some element changed its child count");
    }

    @Override
    public void w() {
        A("Complex rebind failed", "Cannot find any existing view to start binding");
    }

    @Override
    public void x() {
        A("Div comparison failed", "Some `DivCustom` element has different `customType`");
    }

    @Override
    public void y() {
        C("Div has no state to bind");
    }

    @Override
    public void z() {
        C("Binding failed. New DivData not provided");
    }
}
