package lm;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;

public final class z implements f4.a {

    private final ConstraintLayout f65953a;

    public final ImageView f65954b;

    public final AppCompatTextView f65955c;

    private z(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView) {
        this.f65953a = constraintLayout;
        this.f65954b = imageView;
        this.f65955c = appCompatTextView;
    }

    public static z a(View view) {
        int i10 = R$id.closeWatchTv;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.goWatchTv;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new z((ConstraintLayout) view, imageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65953a;
    }
}
