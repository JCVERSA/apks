package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.ui.LongVodPlayerView;

public final class n implements f4.a {

    private final ConstraintLayout f66642a;

    public final FrameLayout f66643b;

    public final FrameLayout f66644c;

    public final h f66645d;

    public final LongVodPlayerView f66646e;

    private n(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, h hVar, LongVodPlayerView longVodPlayerView) {
        this.f66642a = constraintLayout;
        this.f66643b = frameLayout;
        this.f66644c = frameLayout2;
        this.f66645d = hVar;
        this.f66646e = longVodPlayerView;
    }

    public static n a(View view) {
        View viewA;
        int i10 = R$id.fl_full_player_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.fl_player_container;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null && (viewA = f4.b.a(view, (i10 = R$id.layout_sync_adjust))) != null) {
                h hVarA = h.a(viewA);
                i10 = R$id.player_view;
                LongVodPlayerView longVodPlayerView = (LongVodPlayerView) f4.b.a(view, i10);
                if (longVodPlayerView != null) {
                    return new n((ConstraintLayout) view, frameLayout, frameLayout2, hVarA, longVodPlayerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.test_fragment_long_vod, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66642a;
    }
}
