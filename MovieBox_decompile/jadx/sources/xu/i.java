package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class i implements f4.a {

    private final ConstraintLayout f75595a;

    public final ImageView f75596b;

    public final TitleLayout f75597c;

    public final TextView f75598d;

    public final TextView f75599e;

    public final TextView f75600f;

    private i(ConstraintLayout constraintLayout, ImageView imageView, TitleLayout titleLayout, TextView textView, TextView textView2, TextView textView3) {
        this.f75595a = constraintLayout;
        this.f75596b = imageView;
        this.f75597c = titleLayout;
        this.f75598d = textView;
        this.f75599e = textView2;
        this.f75600f = textView3;
    }

    public static i a(View view) {
        int i10 = R$id.ivLogo;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.titleLayout;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                i10 = R$id.tvAgreement;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tvAppName;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        i10 = R$id.tvAppVersion;
                        TextView textView3 = (TextView) f4.b.a(view, i10);
                        if (textView3 != null) {
                            return new i((ConstraintLayout) view, imageView, titleLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_pro_file_setting_about_us, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75595a;
    }
}
