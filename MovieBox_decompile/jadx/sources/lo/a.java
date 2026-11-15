package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.clip.ClipImageView;
import com.transsion.publish.view.clip.ClipView;

public final class a implements f4.a {

    private final RelativeLayout f65990a;

    public final AppCompatImageButton f65991b;

    public final RelativeLayout f65992c;

    public final ProgressBar f65993d;

    public final ClipView f65994e;

    public final ClipImageView f65995f;

    public final TextView f65996g;

    private a(RelativeLayout relativeLayout, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout2, ProgressBar progressBar, ClipView clipView, ClipImageView clipImageView, TextView textView) {
        this.f65990a = relativeLayout;
        this.f65991b = appCompatImageButton;
        this.f65992c = relativeLayout2;
        this.f65993d = progressBar;
        this.f65994e = clipView;
        this.f65995f = clipImageView;
        this.f65996g = textView;
    }

    public static a a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
        if (appCompatImageButton != null) {
            i10 = R$id.clTitle;
            RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
            if (relativeLayout != null) {
                i10 = R$id.clip_loading;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    i10 = R$id.clipview;
                    ClipView clipView = (ClipView) f4.b.a(view, i10);
                    if (clipView != null) {
                        i10 = R$id.src_pic;
                        ClipImageView clipImageView = (ClipImageView) f4.b.a(view, i10);
                        if (clipImageView != null) {
                            i10 = R$id.tvDone;
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                return new a((RelativeLayout) view, appCompatImageButton, relativeLayout, progressBar, clipView, clipImageView, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_clip_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f65990a;
    }
}
