package vp;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.search.R$id;
import com.transsion.search_pugc.speech.SpeechRecognizerVolumeCircleView;

public final class b implements f4.a {

    private final FrameLayout f73687a;

    public final AppCompatImageView f73688b;

    public final FrameLayout f73689c;

    public final AppCompatTextView f73690d;

    public final AppCompatTextView f73691e;

    public final View f73692f;

    public final SpeechRecognizerVolumeCircleView f73693g;

    private b(FrameLayout frameLayout, AppCompatImageView appCompatImageView, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view, SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView) {
        this.f73687a = frameLayout;
        this.f73688b = appCompatImageView;
        this.f73689c = frameLayout2;
        this.f73690d = appCompatTextView;
        this.f73691e = appCompatTextView2;
        this.f73692f = view;
        this.f73693g = speechRecognizerVolumeCircleView;
    }

    public static b a(View view) {
        View viewA;
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.llTop;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.tvResult;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvTip;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.viewBg))) != null) {
                        i10 = R$id.volumeCircleView;
                        SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView = (SpeechRecognizerVolumeCircleView) f4.b.a(view, i10);
                        if (speechRecognizerVolumeCircleView != null) {
                            return new b((FrameLayout) view, appCompatImageView, frameLayout, appCompatTextView, appCompatTextView2, viewA, speechRecognizerVolumeCircleView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f73687a;
    }
}
