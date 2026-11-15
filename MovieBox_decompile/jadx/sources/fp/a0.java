package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class a0 implements f4.a {

    private final ConstraintLayout f60290a;

    public final ShapeableImageView f60291b;

    public final AppCompatTextView f60292c;

    public final BLTextView f60293d;

    public final BLView f60294e;

    public final BLView f60295f;

    private a0(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, BLTextView bLTextView, BLView bLView, BLView bLView2) {
        this.f60290a = constraintLayout;
        this.f60291b = shapeableImageView;
        this.f60292c = appCompatTextView;
        this.f60293d = bLTextView;
        this.f60294e = bLView;
        this.f60295f = bLView2;
    }

    public static a0 a(View view) {
        int i10 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tv_name;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_new_count;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    i10 = R$id.v_name_bg;
                    BLView bLView = (BLView) f4.b.a(view, i10);
                    if (bLView != null) {
                        i10 = R$id.v_stroke;
                        BLView bLView2 = (BLView) f4.b.a(view, i10);
                        if (bLView2 != null) {
                            return new a0((ConstraintLayout) view, shapeableImageView, appCompatTextView, bLTextView, bLView, bLView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_your_rooms, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60290a;
    }
}
