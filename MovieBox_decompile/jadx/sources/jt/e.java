package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.view.SubtitleOptionsView;

public final class e implements f4.a {

    private final NestedScrollView f63281a;

    public final SubtitleOptionsView f63282b;

    private e(NestedScrollView nestedScrollView, SubtitleOptionsView subtitleOptionsView) {
        this.f63281a = nestedScrollView;
        this.f63282b = subtitleOptionsView;
    }

    public static e a(View view) {
        int i10 = R$id.v_options;
        SubtitleOptionsView subtitleOptionsView = (SubtitleOptionsView) f4.b.a(view, i10);
        if (subtitleOptionsView != null) {
            return new e((NestedScrollView) view, subtitleOptionsView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_options, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedScrollView getRoot() {
        return this.f63281a;
    }
}
