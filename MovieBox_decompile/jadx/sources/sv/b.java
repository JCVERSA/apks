package sv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.version.update.R$id;
import com.transsion.version.update.R$layout;

public final class b implements f4.a {

    private final LinearLayout f72423a;

    public final TextView f72424b;

    public final TextView f72425c;

    public final ImageView f72426d;

    public final ConstraintLayout f72427e;

    public final ScrollView f72428f;

    public final TextView f72429g;

    public final TextView f72430h;

    public final TextView f72431i;

    public final TextView f72432j;

    public final TextView f72433k;

    private b(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, ConstraintLayout constraintLayout, ScrollView scrollView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.f72423a = linearLayout;
        this.f72424b = textView;
        this.f72425c = textView2;
        this.f72426d = imageView;
        this.f72427e = constraintLayout;
        this.f72428f = scrollView;
        this.f72429g = textView3;
        this.f72430h = textView4;
        this.f72431i = textView5;
        this.f72432j = textView6;
        this.f72433k = textView7;
    }

    public static b a(View view) {
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
                                                return new b((LinearLayout) view, textView, textView2, imageView, constraintLayout, scrollView, textView3, textView4, textView5, textView6, textView7);
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

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_update_layout_white_theme, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72423a;
    }
}
