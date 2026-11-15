package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.edit.widget.ProfileEditBar;

public final class k0 implements f4.a {

    private final RelativeLayout f75646a;

    public final ProfileEditBar f75647b;

    public final FrameLayout f75648c;

    public final ProfileEditBar f75649d;

    public final AppCompatImageView f75650e;

    public final ImageView f75651f;

    public final BLConstraintLayout f75652g;

    public final ProgressBar f75653h;

    public final RelativeLayout f75654i;

    public final RelativeLayout f75655j;

    public final RelativeLayout f75656k;

    public final TnTextView f75657l;

    public final TextView f75658m;

    public final ShapeableImageView f75659n;

    private k0(RelativeLayout relativeLayout, ProfileEditBar profileEditBar, FrameLayout frameLayout, ProfileEditBar profileEditBar2, AppCompatImageView appCompatImageView, ImageView imageView, BLConstraintLayout bLConstraintLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, TnTextView tnTextView, TextView textView, ShapeableImageView shapeableImageView) {
        this.f75646a = relativeLayout;
        this.f75647b = profileEditBar;
        this.f75648c = frameLayout;
        this.f75649d = profileEditBar2;
        this.f75650e = appCompatImageView;
        this.f75651f = imageView;
        this.f75652g = bLConstraintLayout;
        this.f75653h = progressBar;
        this.f75654i = relativeLayout2;
        this.f75655j = relativeLayout3;
        this.f75656k = relativeLayout4;
        this.f75657l = tnTextView;
        this.f75658m = textView;
        this.f75659n = shapeableImageView;
    }

    public static k0 a(View view) {
        int i10 = R$id.birth_profilebar;
        ProfileEditBar profileEditBar = (ProfileEditBar) f4.b.a(view, i10);
        if (profileEditBar != null) {
            i10 = R$id.fl_edit;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.gender_profilebar;
                ProfileEditBar profileEditBar2 = (ProfileEditBar) f4.b.a(view, i10);
                if (profileEditBar2 != null) {
                    i10 = R$id.ivDeleteArrow;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.iv_edit;
                        ImageView imageView = (ImageView) f4.b.a(view, i10);
                        if (imageView != null) {
                            i10 = R$id.layoutDeleteProfile;
                            BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
                            if (bLConstraintLayout != null) {
                                i10 = R$id.load_view;
                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                if (progressBar != null) {
                                    i10 = R$id.rl_head;
                                    RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                                    if (relativeLayout != null) {
                                        i10 = R$id.rl_nickname;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) f4.b.a(view, i10);
                                        if (relativeLayout2 != null) {
                                            RelativeLayout relativeLayout3 = (RelativeLayout) view;
                                            i10 = R$id.tvDeleteKidsProfile;
                                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                            if (tnTextView != null) {
                                                i10 = R$id.tv_nickname;
                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                if (textView != null) {
                                                    i10 = R$id.user_head;
                                                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                                    if (shapeableImageView != null) {
                                                        return new k0(relativeLayout3, profileEditBar, frameLayout, profileEditBar2, appCompatImageView, imageView, bLConstraintLayout, progressBar, relativeLayout, relativeLayout2, relativeLayout3, tnTextView, textView, shapeableImageView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_profile_edit_centerlayout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f75646a;
    }
}
