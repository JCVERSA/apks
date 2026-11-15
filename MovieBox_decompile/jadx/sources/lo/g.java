package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.MatchParentVideoView;

public final class g implements f4.a {

    private final ConstraintLayout f66033a;

    public final Group f66034b;

    public final View f66035c;

    public final AppCompatImageButton f66036d;

    public final RelativeLayout f66037e;

    public final ProgressBar f66038f;

    public final TextView f66039g;

    public final ImageView f66040h;

    public final FrameLayout f66041i;

    public final LinearLayout f66042j;

    public final ImageView f66043k;

    public final ConstraintLayout f66044l;

    public final TextView f66045m;

    public final TextView f66046n;

    public final TextView f66047o;

    public final TextView f66048p;

    public final MatchParentVideoView f66049q;

    private g(ConstraintLayout constraintLayout, Group group, View view, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout, ProgressBar progressBar, TextView textView, ImageView imageView, FrameLayout frameLayout, LinearLayout linearLayout, ImageView imageView2, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, MatchParentVideoView matchParentVideoView) {
        this.f66033a = constraintLayout;
        this.f66034b = group;
        this.f66035c = view;
        this.f66036d = appCompatImageButton;
        this.f66037e = relativeLayout;
        this.f66038f = progressBar;
        this.f66039g = textView;
        this.f66040h = imageView;
        this.f66041i = frameLayout;
        this.f66042j = linearLayout;
        this.f66043k = imageView2;
        this.f66044l = constraintLayout2;
        this.f66045m = textView2;
        this.f66046n = textView3;
        this.f66047o = textView4;
        this.f66048p = textView5;
        this.f66049q = matchParentVideoView;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.bottomGroup;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null && (viewA = f4.b.a(view, (i10 = R$id.bottomLine))) != null) {
            i10 = R$id.btn_back;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
            if (appCompatImageButton != null) {
                i10 = R$id.clTitle;
                RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                if (relativeLayout != null) {
                    i10 = R$id.clip_loading;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        i10 = R$id.confirmTV;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.coverIV;
                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                            if (imageView != null) {
                                i10 = R$id.fl_clear;
                                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout != null) {
                                    i10 = R$id.llSelect;
                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout != null) {
                                        i10 = R$id.playIV;
                                        ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                        if (imageView2 != null) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                            i10 = R$id.selectNumTV;
                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                            if (textView2 != null) {
                                                i10 = R$id.tv_delete;
                                                TextView textView3 = (TextView) f4.b.a(view, i10);
                                                if (textView3 != null) {
                                                    i10 = R$id.tvNumber;
                                                    TextView textView4 = (TextView) f4.b.a(view, i10);
                                                    if (textView4 != null) {
                                                        i10 = R$id.tvSelect;
                                                        TextView textView5 = (TextView) f4.b.a(view, i10);
                                                        if (textView5 != null) {
                                                            i10 = R$id.vv_video;
                                                            MatchParentVideoView matchParentVideoView = (MatchParentVideoView) f4.b.a(view, i10);
                                                            if (matchParentVideoView != null) {
                                                                return new g(constraintLayout, group, viewA, appCompatImageButton, relativeLayout, progressBar, textView, imageView, frameLayout, linearLayout, imageView2, constraintLayout, textView2, textView3, textView4, textView5, matchParentVideoView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_video_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66033a;
    }
}
