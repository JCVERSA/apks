package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f76361a;

    public final ImageView f76362b;

    public final AppCompatTextView f76363c;

    public final CardView f76364d;

    private k(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView, CardView cardView) {
        this.f76361a = constraintLayout;
        this.f76362b = imageView;
        this.f76363c = appCompatTextView;
        this.f76364d = cardView;
    }

    public static k a(View view) {
        int i10 = R$id.ad_icon;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.ad_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.icon_cardview;
                CardView cardView = (CardView) f4.b.a(view, i10);
                if (cardView != null) {
                    return new k((ConstraintLayout) view, imageView, appCompatTextView, cardView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_ssp_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76361a;
    }
}
