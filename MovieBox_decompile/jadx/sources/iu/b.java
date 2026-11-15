package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class b implements f4.a {

    private final LinearLayout f62625a;

    public final ConstraintLayout f62626b;

    public final View f62627c;

    public final FrameLayout f62628d;

    public final ImageView f62629e;

    public final BLTextView f62630f;

    public final TextView f62631g;

    public final TextView f62632h;

    public final View f62633i;

    public final View f62634j;

    public final View f62635k;

    private b(LinearLayout linearLayout, ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, ImageView imageView, BLTextView bLTextView, TextView textView, TextView textView2, View view2, View view3, View view4) {
        this.f62625a = linearLayout;
        this.f62626b = constraintLayout;
        this.f62627c = view;
        this.f62628d = frameLayout;
        this.f62629e = imageView;
        this.f62630f = bLTextView;
        this.f62631g = textView;
        this.f62632h = textView2;
        this.f62633i = view2;
        this.f62634j = view3;
        this.f62635k = view4;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.clImmCommentContent;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.divider))) != null) {
            i10 = R$id.fl_comment_container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.iv_close;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.tv_comment;
                    BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                    if (bLTextView != null) {
                        i10 = R$id.tvTitle;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.tvTitleCount;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bottom))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.vTopLine))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.vTopSpace))) != null) {
                                return new b((LinearLayout) view, constraintLayout, viewA, frameLayout, imageView, bLTextView, textView, textView2, viewA2, viewA3, viewA4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_ugc_imm_video_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f62625a;
    }
}
