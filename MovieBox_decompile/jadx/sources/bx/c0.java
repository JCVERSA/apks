package bx;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.transsnet.downloader.R$id;

public final class c0 implements f4.a {

    private final FrameLayout f15959a;

    public final z0 f15960b;

    public final ViewStub f15961c;

    private c0(FrameLayout frameLayout, z0 z0Var, ViewStub viewStub) {
        this.f15959a = frameLayout;
        this.f15960b = z0Var;
        this.f15961c = viewStub;
    }

    public static c0 a(View view) {
        int i10 = R$id.included_content;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            z0 z0VarA = z0.a(viewA);
            int i11 = R$id.vs_allow_access;
            ViewStub viewStub = (ViewStub) f4.b.a(view, i11);
            if (viewStub != null) {
                return new c0((FrameLayout) view, z0VarA, viewStub);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15959a;
    }
}
