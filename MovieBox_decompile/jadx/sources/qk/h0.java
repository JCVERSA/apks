package qk;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;

public final class h0 implements f4.a {

    private final ConstraintLayout f69756a;

    public final LinearLayoutCompat f69757b;

    public final View f69758c;

    public final LinearLayoutCompat f69759d;

    public final LinearLayoutCompat f69760e;

    public final LinearLayoutCompat f69761f;

    public final LinearLayoutCompat f69762g;

    public final ConstraintLayout f69763h;

    public final ProgressBar f69764i;

    private h0(ConstraintLayout constraintLayout, LinearLayoutCompat linearLayoutCompat, View view, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, LinearLayoutCompat linearLayoutCompat4, LinearLayoutCompat linearLayoutCompat5, ConstraintLayout constraintLayout2, ProgressBar progressBar) {
        this.f69756a = constraintLayout;
        this.f69757b = linearLayoutCompat;
        this.f69758c = view;
        this.f69759d = linearLayoutCompat2;
        this.f69760e = linearLayoutCompat3;
        this.f69761f = linearLayoutCompat4;
        this.f69762g = linearLayoutCompat5;
        this.f69763h = constraintLayout2;
        this.f69764i = progressBar;
    }

    public static h0 a(View view) {
        View viewA;
        int i10 = R$id.f43031l1;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
        if (linearLayoutCompat != null && (viewA = f4.b.a(view, (i10 = R$id.f43032l2))) != null) {
            i10 = R$id.f43033l3;
            LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat2 != null) {
                i10 = R$id.f43034l4;
                LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) f4.b.a(view, i10);
                if (linearLayoutCompat3 != null) {
                    i10 = R$id.f43035l5;
                    LinearLayoutCompat linearLayoutCompat4 = (LinearLayoutCompat) f4.b.a(view, i10);
                    if (linearLayoutCompat4 != null) {
                        i10 = R$id.f43036l6;
                        LinearLayoutCompat linearLayoutCompat5 = (LinearLayoutCompat) f4.b.a(view, i10);
                        if (linearLayoutCompat5 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i10 = R$id.loading_pb;
                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                            if (progressBar != null) {
                                return new h0(constraintLayout, linearLayoutCompat, viewA, linearLayoutCompat2, linearLayoutCompat3, linearLayoutCompat4, linearLayoutCompat5, constraintLayout, progressBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69756a;
    }
}
