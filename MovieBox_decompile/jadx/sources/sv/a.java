package sv;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.version.update.R$id;

public final class a implements f4.a {

    private final LinearLayout f72412a;

    public final TextView f72413b;

    public final TextView f72414c;

    public final ImageView f72415d;

    public final ConstraintLayout f72416e;

    public final ScrollView f72417f;

    public final TextView f72418g;

    public final TextView f72419h;

    public final TextView f72420i;

    public final TextView f72421j;

    public final TextView f72422k;

    private a(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ConstraintLayout constraintLayout, ScrollView scrollView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.f72412a = linearLayout;
        this.f72413b = textView;
        this.f72414c = textView2;
        this.f72415d = imageView;
        this.f72416e = constraintLayout;
        this.f72417f = scrollView;
        this.f72418g = textView3;
        this.f72419h = textView4;
        this.f72420i = textView5;
        this.f72421j = textView6;
        this.f72422k = textView7;
    }

    public static a a(View view) {
        int i10 = R$id.btSkip;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.btUpdate;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                i10 = R$id.iv_icon;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.layout_bottom;
                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                    if (constraintLayout != null) {
                        i10 = R$id.scrollView;
                        ScrollView scrollView = (ScrollView) f4.b.a(view, i10);
                        if (scrollView != null) {
                            i10 = R$id.tvDetails;
                            TextView textView3 = (TextView) f4.b.a(view, i10);
                            if (textView3 != null) {
                                i10 = R$id.tvName;
                                TextView textView4 = (TextView) f4.b.a(view, i10);
                                if (textView4 != null) {
                                    i10 = R$id.tvSize;
                                    TextView textView5 = (TextView) f4.b.a(view, i10);
                                    if (textView5 != null) {
                                        i10 = R$id.tvTitle;
                                        TextView textView6 = (TextView) f4.b.a(view, i10);
                                        if (textView6 != null) {
                                            i10 = R$id.tvVersion;
                                            TextView textView7 = (TextView) f4.b.a(view, i10);
                                            if (textView7 != null) {
                                                return new a((LinearLayout) view, textView, textView2, imageView, constraintLayout, scrollView, textView3, textView4, textView5, textView6, textView7);
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

    @Override
    public LinearLayout getRoot() {
        return this.f72412a;
    }
}
