package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class f implements f4.a {

    private final ConstraintLayout f76331a;

    public final ShapeableImageView f76332b;

    public final AppCompatTextView f76333c;

    public final AppCompatTextView f76334d;

    private f(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f76331a = constraintLayout;
        this.f76332b = shapeableImageView;
        this.f76333c = appCompatTextView;
        this.f76334d = appCompatTextView2;
    }

    public static f a(View view) {
        int i10 = R$id.iv_avatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tv_prize_name;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_user_name;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new f((ConstraintLayout) view, shapeableImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.prize_flow_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76331a;
    }
}
