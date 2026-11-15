package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class g0 implements f4.a {

    private final ConstraintLayout f75573a;

    public final BLLinearLayout f75574b;

    public final ShapeableImageView f75575c;

    public final ImageView f75576d;

    public final ImageView f75577e;

    public final ShapeableImageView f75578f;

    public final LinearLayout f75579g;

    public final LinearLayout f75580h;

    public final LinearLayout f75581i;

    public final LinearLayout f75582j;

    public final TnTextView f75583k;

    public final TnTextView f75584l;

    public final BLView f75585m;

    public final BLView f75586n;

    private g0(ConstraintLayout constraintLayout, BLLinearLayout bLLinearLayout, ShapeableImageView shapeableImageView, ImageView imageView, ImageView imageView2, ShapeableImageView shapeableImageView2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TnTextView tnTextView, TnTextView tnTextView2, BLView bLView, BLView bLView2) {
        this.f75573a = constraintLayout;
        this.f75574b = bLLinearLayout;
        this.f75575c = shapeableImageView;
        this.f75576d = imageView;
        this.f75577e = imageView2;
        this.f75578f = shapeableImageView2;
        this.f75579g = linearLayout;
        this.f75580h = linearLayout2;
        this.f75581i = linearLayout3;
        this.f75582j = linearLayout4;
        this.f75583k = tnTextView;
        this.f75584l = tnTextView2;
        this.f75585m = bLView;
        this.f75586n = bLView2;
    }

    public static g0 a(View view) {
        int i10 = R$id.ivAddKids;
        BLLinearLayout bLLinearLayout = (BLLinearLayout) f4.b.a(view, i10);
        if (bLLinearLayout != null) {
            i10 = R$id.ivAdultAvatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.ivAdultEditIcon;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.ivEditIcon;
                    ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                    if (imageView2 != null) {
                        i10 = R$id.ivKidsAvatar;
                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView2 != null) {
                            i10 = R$id.layoutAccountsRow;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.layoutAddKids;
                                LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout2 != null) {
                                    i10 = R$id.layoutAdultProfile;
                                    LinearLayout linearLayout3 = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout3 != null) {
                                        i10 = R$id.layoutKidsProfile;
                                        LinearLayout linearLayout4 = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout4 != null) {
                                            i10 = R$id.tvAdultName;
                                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                            if (tnTextView != null) {
                                                i10 = R$id.tvKidsName;
                                                TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                                                if (tnTextView2 != null) {
                                                    i10 = R$id.viewAdultAvatarOverlay;
                                                    BLView bLView = (BLView) f4.b.a(view, i10);
                                                    if (bLView != null) {
                                                        i10 = R$id.viewKidsAvatarOverlay;
                                                        BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                        if (bLView2 != null) {
                                                            return new g0((ConstraintLayout) view, bLLinearLayout, shapeableImageView, imageView, imageView2, shapeableImageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, tnTextView, tnTextView2, bLView, bLView2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_manage_profiles, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75573a;
    }
}
