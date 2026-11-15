package gm;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.member.R$id;

public final class j implements f4.a {

    private final FrameLayout f61162a;

    public final AppCompatImageView f61163b;

    public final AppCompatTextView f61164c;

    private j(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f61162a = frameLayout;
        this.f61163b = appCompatImageView;
        this.f61164c = appCompatTextView;
    }

    public static j a(View view) {
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new j((FrameLayout) view, appCompatImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f61162a;
    }
}
