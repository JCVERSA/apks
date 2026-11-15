package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class j implements f4.a {

    private final ConstraintLayout f76350a;

    public final CardView f76351b;

    public final CardView f76352c;

    public final ImageView f76353d;

    public final ImageView f76354e;

    public final TextView f76355f;

    public final TextView f76356g;

    public final ProgressBar f76357h;

    public final ProgressBar f76358i;

    public final TextView f76359j;

    public final TextView f76360k;

    private j(ConstraintLayout constraintLayout, CardView cardView, CardView cardView2, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, ProgressBar progressBar, ProgressBar progressBar2, TextView textView3, TextView textView4) {
        this.f76350a = constraintLayout;
        this.f76351b = cardView;
        this.f76352c = cardView2;
        this.f76353d = imageView;
        this.f76354e = imageView2;
        this.f76355f = textView;
        this.f76356g = textView2;
        this.f76357h = progressBar;
        this.f76358i = progressBar2;
        this.f76359j = textView3;
        this.f76360k = textView4;
    }

    public static j a(View view) {
        int i10 = R$id.dot_1;
        CardView cardView = (CardView) f4.b.a(view, i10);
        if (cardView != null) {
            i10 = R$id.dot_2;
            CardView cardView2 = (CardView) f4.b.a(view, i10);
            if (cardView2 != null) {
                i10 = R$id.point_icon_1;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.point_icon_2;
                    ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                    if (imageView2 != null) {
                        i10 = R$id.point_text_1;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.point_text_2;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null) {
                                i10 = R$id.progress_1;
                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                if (progressBar != null) {
                                    i10 = R$id.progress_2;
                                    ProgressBar progressBar2 = (ProgressBar) f4.b.a(view, i10);
                                    if (progressBar2 != null) {
                                        i10 = R$id.title_1;
                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                        if (textView3 != null) {
                                            i10 = R$id.title_2;
                                            TextView textView4 = (TextView) f4.b.a(view, i10);
                                            if (textView4 != null) {
                                                return new j((ConstraintLayout) view, cardView, cardView2, imageView, imageView2, textView, textView2, progressBar, progressBar2, textView3, textView4);
                                            }
                                        }
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

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_progress_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76350a;
    }
}
