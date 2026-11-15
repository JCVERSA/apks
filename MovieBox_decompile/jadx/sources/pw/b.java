package pw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.ad.view.AdTagView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f69283a;

    public final AdChoicesView f69284b;

    public final AdTagView f69285c;

    public final AppCompatTextView f69286d;

    public final MediaView f69287e;

    public final FrameLayout f69288f;

    private b(ConstraintLayout constraintLayout, AdChoicesView adChoicesView, AdTagView adTagView, AppCompatTextView appCompatTextView, MediaView mediaView, FrameLayout frameLayout) {
        this.f69283a = constraintLayout;
        this.f69284b = adChoicesView;
        this.f69285c = adTagView;
        this.f69286d = appCompatTextView;
        this.f69287e = mediaView;
        this.f69288f = frameLayout;
    }

    public static b a(View view) {
        int i10 = R$id.adChoicesView;
        AdChoicesView adChoicesView = (AdChoicesView) f4.b.a(view, i10);
        if (adChoicesView != null) {
            i10 = R$id.adTag;
            AdTagView adTagView = (AdTagView) f4.b.a(view, i10);
            if (adTagView != null) {
                i10 = R$id.native_ad_action;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.native_ad_media;
                    MediaView mediaView = (MediaView) f4.b.a(view, i10);
                    if (mediaView != null) {
                        i10 = R$id.native_ad_media_container;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            return new b((ConstraintLayout) view, adChoicesView, adTagView, appCompatTextView, mediaView, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.media_content_ssp_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69283a;
    }
}
