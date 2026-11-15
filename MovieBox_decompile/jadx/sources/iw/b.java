package iw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.web.R$id;
import com.transsion.web.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f62807a;

    public final AppCompatImageView f62808b;

    public final ShapeableImageView f62809c;

    public final RecyclerView f62810d;

    public final TextView f62811e;

    private b(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, RecyclerView recyclerView, TextView textView) {
        this.f62807a = constraintLayout;
        this.f62808b = appCompatImageView;
        this.f62809c = shapeableImageView;
        this.f62810d = recyclerView;
        this.f62811e = textView;
    }

    public static b a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_share;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.share_list;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_share_title;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        return new b((ConstraintLayout) view, appCompatImageView, shapeableImageView, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_imge_share, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62807a;
    }
}
