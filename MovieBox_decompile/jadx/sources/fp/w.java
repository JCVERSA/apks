package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class w implements f4.a {

    private final ConstraintLayout f60458a;

    public final ConstraintLayout f60459b;

    public final ShapeableImageView f60460c;

    public final AppCompatTextView f60461d;

    private w(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView) {
        this.f60458a = constraintLayout;
        this.f60459b = constraintLayout2;
        this.f60460c = shapeableImageView;
        this.f60461d = appCompatTextView;
    }

    public static w a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new w(constraintLayout, constraintLayout, shapeableImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_community_rooms_footer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60458a;
    }
}
