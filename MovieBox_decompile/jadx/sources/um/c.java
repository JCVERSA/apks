package um;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.photoview.PhotoView;

public final class c implements f4.a {

    private final FrameLayout f73204a;

    public final FrameLayout f73205b;

    public final AppCompatImageView f73206c;

    public final FrameLayout f73207d;

    public final PhotoView f73208e;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, FrameLayout frameLayout3, PhotoView photoView) {
        this.f73204a = frameLayout;
        this.f73205b = frameLayout2;
        this.f73206c = appCompatImageView;
        this.f73207d = frameLayout3;
        this.f73208e = photoView;
    }

    public static c a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.thumb;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.video_container;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R$id.video_cover;
                PhotoView photoView = (PhotoView) f4.b.a(view, i10);
                if (photoView != null) {
                    return new c(frameLayout, frameLayout, appCompatImageView, frameLayout2, photoView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_gif_image_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f73204a;
    }
}
