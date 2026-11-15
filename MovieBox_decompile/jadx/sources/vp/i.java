package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.speech.SpeechRecognizerView;

public final class i implements f4.a {

    private final ConstraintLayout f73743a;

    public final EditText f73744b;

    public final ImageView f73745c;

    public final AppCompatImageView f73746d;

    public final LinearLayout f73747e;

    public final SpeechRecognizerView f73748f;

    public final ImageView f73749g;

    public final FrameLayout f73750h;

    public final View f73751i;

    public final TextView f73752j;

    private i(ConstraintLayout constraintLayout, EditText editText, ImageView imageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, SpeechRecognizerView speechRecognizerView, ImageView imageView2, FrameLayout frameLayout, View view, TextView textView) {
        this.f73743a = constraintLayout;
        this.f73744b = editText;
        this.f73745c = imageView;
        this.f73746d = appCompatImageView;
        this.f73747e = linearLayout;
        this.f73748f = speechRecognizerView;
        this.f73749g = imageView2;
        this.f73750h = frameLayout;
        this.f73751i = view;
        this.f73752j = textView;
    }

    public static i a(View view) {
        View viewA;
        int i10 = R$id.comment_input_edit_text;
        EditText editText = (EditText) f4.b.a(view, i10);
        if (editText != null) {
            i10 = R$id.comment_input_search_icon;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.iv_cancel;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ll_top;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.sRView;
                        SpeechRecognizerView speechRecognizerView = (SpeechRecognizerView) f4.b.a(view, i10);
                        if (speechRecognizerView != null) {
                            i10 = R$id.search_edit_clear;
                            ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                            if (imageView2 != null) {
                                i10 = R$id.search_fragment_container;
                                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.top_line))) != null) {
                                    i10 = R$id.tv_search;
                                    TextView textView = (TextView) f4.b.a(view, i10);
                                    if (textView != null) {
                                        return new i((ConstraintLayout) view, editText, imageView, appCompatImageView, linearLayout, speechRecognizerView, imageView2, frameLayout, viewA, textView);
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

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_subject, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73743a;
    }
}
