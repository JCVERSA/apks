package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class o0 implements f4.a {

    private final ConstraintLayout f75707a;

    public final TnTextView f75708b;

    public final AppCompatTextView f75709c;

    public final ImageView f75710d;

    public final LinearLayout f75711e;

    public final TnTextView f75712f;

    public final View f75713g;

    private o0(ConstraintLayout constraintLayout, TnTextView tnTextView, AppCompatTextView appCompatTextView, ImageView imageView, LinearLayout linearLayout, TnTextView tnTextView2, View view) {
        this.f75707a = constraintLayout;
        this.f75708b = tnTextView;
        this.f75709c = appCompatTextView;
        this.f75710d = imageView;
        this.f75711e = linearLayout;
        this.f75712f = tnTextView2;
        this.f75713g = view;
    }

    public static o0 a(View view) {
        View viewA;
        int i10 = R$id.btnTv;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.desTv;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.icIV;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.llBottom;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.titleTv;
                        TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.vTopGuideline))) != null) {
                            return new o0((ConstraintLayout) view, tnTextView, appCompatTextView, imageView, linearLayout, tnTextView2, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.mine_item_novel_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75707a;
    }
}
