package gm;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.member.R$id;
import com.transsion.member.view.CheckInView;
import com.transsion.member.view.GradientTextView;

public final class f implements f4.a {

    private final LinearLayout f61113a;

    public final CheckBox f61114b;

    public final GradientTextView f61115c;

    public final ImageView f61116d;

    public final AppCompatImageView f61117e;

    public final CheckInView f61118f;

    public final TextView f61119g;

    public final TextView f61120h;

    public final GradientTextView f61121i;

    private f(LinearLayout linearLayout, CheckBox checkBox, GradientTextView gradientTextView, ImageView imageView, AppCompatImageView appCompatImageView, CheckInView checkInView, TextView textView, TextView textView2, GradientTextView gradientTextView2) {
        this.f61113a = linearLayout;
        this.f61114b = checkBox;
        this.f61115c = gradientTextView;
        this.f61116d = imageView;
        this.f61117e = appCompatImageView;
        this.f61118f = checkInView;
        this.f61119g = textView;
        this.f61120h = textView2;
        this.f61121i = gradientTextView2;
    }

    public static f a(View view) {
        int i10 = R$id.dialog_ignore;
        CheckBox checkBox = (CheckBox) f4.b.a(view, i10);
        if (checkBox != null) {
            i10 = R$id.go_purchase_member;
            GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
            if (gradientTextView != null) {
                i10 = R$id.ic_tips;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.member_check_in_view;
                        CheckInView checkInView = (CheckInView) f4.b.a(view, i10);
                        if (checkInView != null) {
                            i10 = R$id.member_tips;
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                i10 = R$id.point_tips;
                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                if (textView2 != null) {
                                    i10 = R$id.title;
                                    GradientTextView gradientTextView2 = (GradientTextView) f4.b.a(view, i10);
                                    if (gradientTextView2 != null) {
                                        return new f((LinearLayout) view, checkBox, gradientTextView, imageView, appCompatImageView, checkInView, textView, textView2, gradientTextView2);
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
        return this.f61113a;
    }
}
