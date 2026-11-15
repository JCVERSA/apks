package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.view.SubtitleSyncAdjustView;

public final class h implements f4.a {

    private final ConstraintLayout f63306a;

    public final AppCompatImageView f63307b;

    public final Space f63308c;

    public final AppCompatTextView f63309d;

    public final SubtitleSyncAdjustView f63310e;

    public final SubtitleSyncAdjustView f63311f;

    private h(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, Space space, AppCompatTextView appCompatTextView, SubtitleSyncAdjustView subtitleSyncAdjustView, SubtitleSyncAdjustView subtitleSyncAdjustView2) {
        this.f63306a = constraintLayout;
        this.f63307b = appCompatImageView;
        this.f63308c = space;
        this.f63309d = appCompatTextView;
        this.f63310e = subtitleSyncAdjustView;
        this.f63311f = subtitleSyncAdjustView2;
    }

    public static h a(View view) {
        int i10 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.space;
            Space space = (Space) f4.b.a(view, i10);
            if (space != null) {
                i10 = R$id.tvStyle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.viewSyncAdJustaND;
                    SubtitleSyncAdjustView subtitleSyncAdjustView = (SubtitleSyncAdjustView) f4.b.a(view, i10);
                    if (subtitleSyncAdjustView != null) {
                        i10 = R$id.viewSyncAdJustaST;
                        SubtitleSyncAdjustView subtitleSyncAdjustView2 = (SubtitleSyncAdjustView) f4.b.a(view, i10);
                        if (subtitleSyncAdjustView2 != null) {
                            return new h((ConstraintLayout) view, appCompatImageView, space, appCompatTextView, subtitleSyncAdjustView, subtitleSyncAdjustView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_sync_adjust_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63306a;
    }
}
