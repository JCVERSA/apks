package bx;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.transsnet.downloader.R$id;

public final class x0 implements f4.a {

    private final View f16292a;

    public final ConstraintLayout f16293b;

    public final Group f16294c;

    public final AppCompatImageView f16295d;

    public final LinearLayout f16296e;

    public final TextView f16297f;

    public final TextView f16298g;

    public final TextView f16299h;

    public final TextView f16300i;

    public final TextView f16301j;

    public final TextView f16302k;

    private x0(View view, ConstraintLayout constraintLayout, Group group, AppCompatImageView appCompatImageView, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.f16292a = view;
        this.f16293b = constraintLayout;
        this.f16294c = group;
        this.f16295d = appCompatImageView;
        this.f16296e = linearLayout;
        this.f16297f = textView;
        this.f16298g = textView2;
        this.f16299h = textView3;
        this.f16300i = textView4;
        this.f16301j = textView5;
        this.f16302k = textView6;
    }

    public static x0 a(View view) {
        int i10 = R$id.cl_permission;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.group_permission;
            Group group = (Group) f4.b.a(view, i10);
            if (group != null) {
                i10 = R$id.iv_icon;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ll_content;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.tv_available_size;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.tv_change;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null) {
                                i10 = R$id.tv_path_name;
                                TextView textView3 = (TextView) f4.b.a(view, i10);
                                if (textView3 != null) {
                                    i10 = R$id.tv_permission_btn;
                                    TextView textView4 = (TextView) f4.b.a(view, i10);
                                    if (textView4 != null) {
                                        i10 = R$id.tv_permission_tips;
                                        TextView textView5 = (TextView) f4.b.a(view, i10);
                                        if (textView5 != null) {
                                            i10 = R$id.tv_permission_title;
                                            TextView textView6 = (TextView) f4.b.a(view, i10);
                                            if (textView6 != null) {
                                                return new x0(view, constraintLayout, group, appCompatImageView, linearLayout, textView, textView2, textView3, textView4, textView5, textView6);
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
    public View getRoot() {
        return this.f16292a;
    }
}
