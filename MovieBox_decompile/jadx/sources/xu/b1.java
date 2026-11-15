package xu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;

public final class b1 implements f4.a {

    private final ConstraintLayout f75505a;

    public final TnTextView f75506b;

    public final ConstraintLayout f75507c;

    public final Group f75508d;

    public final ShapeableImageView f75509e;

    public final ShapeableImageView f75510f;

    public final ShapeableImageView f75511g;

    public final ShapeableImageView f75512h;

    public final AppCompatTextView f75513i;

    public final TnTextView f75514j;

    private b1(ConstraintLayout constraintLayout, TnTextView tnTextView, ConstraintLayout constraintLayout2, Group group, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, ShapeableImageView shapeableImageView3, ShapeableImageView shapeableImageView4, AppCompatTextView appCompatTextView, TnTextView tnTextView2) {
        this.f75505a = constraintLayout;
        this.f75506b = tnTextView;
        this.f75507c = constraintLayout2;
        this.f75508d = group;
        this.f75509e = shapeableImageView;
        this.f75510f = shapeableImageView2;
        this.f75511g = shapeableImageView3;
        this.f75512h = shapeableImageView4;
        this.f75513i = appCompatTextView;
        this.f75514j = tnTextView2;
    }

    public static b1 a(View view) {
        int i10 = R$id.btnFind;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.groupPlaceholder;
            Group group = (Group) f4.b.a(view, i10);
            if (group != null) {
                i10 = R$id.ivPlaceholder1;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    i10 = R$id.ivPlaceholder2;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView2 != null) {
                        i10 = R$id.ivPlaceholder3;
                        ShapeableImageView shapeableImageView3 = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView3 != null) {
                            i10 = R$id.ivPlaceholder4;
                            ShapeableImageView shapeableImageView4 = (ShapeableImageView) f4.b.a(view, i10);
                            if (shapeableImageView4 != null) {
                                i10 = R$id.tvNumber;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.tvTitle;
                                    TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                                    if (tnTextView2 != null) {
                                        return new b1(constraintLayout, tnTextView, constraintLayout, group, shapeableImageView, shapeableImageView2, shapeableImageView3, shapeableImageView4, appCompatTextView, tnTextView2);
                                    }
                                }
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
        return this.f75505a;
    }
}
