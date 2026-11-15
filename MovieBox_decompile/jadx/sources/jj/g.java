package jj;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.noober.background.view.BLTextView;
import com.transsion.baseui.R$id;
import com.transsion.baseui.widget.DrawableCenterTextView;

public final class g implements f4.a {

    private final FrameLayout f63163a;

    public final TextView f63164b;

    public final BLTextView f63165c;

    public final TextView f63166d;

    public final DrawableCenterTextView f63167e;

    public final TextView f63168f;

    private g(FrameLayout frameLayout, TextView textView, BLTextView bLTextView, TextView textView2, DrawableCenterTextView drawableCenterTextView, TextView textView3) {
        this.f63163a = frameLayout;
        this.f63164b = textView;
        this.f63165c = bLTextView;
        this.f63166d = textView2;
        this.f63167e = drawableCenterTextView;
        this.f63168f = textView3;
    }

    public static g a(View view) {
        int i10 = R$id.card_detail;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.card_tip;
            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
            if (bLTextView != null) {
                i10 = R$id.card_title;
                TextView textView2 = (TextView) f4.b.a(view, i10);
                if (textView2 != null) {
                    i10 = R$id.iv_centerView;
                    DrawableCenterTextView drawableCenterTextView = (DrawableCenterTextView) f4.b.a(view, i10);
                    if (drawableCenterTextView != null) {
                        i10 = R$id.numText;
                        TextView textView3 = (TextView) f4.b.a(view, i10);
                        if (textView3 != null) {
                            return new g((FrameLayout) view, textView, bLTextView, textView2, drawableCenterTextView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f63163a;
    }
}
