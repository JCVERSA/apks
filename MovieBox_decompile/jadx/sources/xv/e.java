package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.music.widget.MusicLikedListEmptyView;
import com.transsion.videodetail.music.widget.MusicLikedListLoadingView;

public final class e implements f4.a {

    private final ConstraintLayout f75882a;

    public final MusicLikedListEmptyView f75883b;

    public final FrameLayout f75884c;

    public final RecyclerView f75885d;

    public final MusicLikedListLoadingView f75886e;

    public final AppCompatTextView f75887f;

    public final AppCompatTextView f75888g;

    public final View f75889h;

    private e(ConstraintLayout constraintLayout, MusicLikedListEmptyView musicLikedListEmptyView, FrameLayout frameLayout, RecyclerView recyclerView, MusicLikedListLoadingView musicLikedListLoadingView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f75882a = constraintLayout;
        this.f75883b = musicLikedListEmptyView;
        this.f75884c = frameLayout;
        this.f75885d = recyclerView;
        this.f75886e = musicLikedListLoadingView;
        this.f75887f = appCompatTextView;
        this.f75888g = appCompatTextView2;
        this.f75889h = view;
    }

    public static e a(View view) {
        View viewA;
        int i10 = R$id.emptyView;
        MusicLikedListEmptyView musicLikedListEmptyView = (MusicLikedListEmptyView) f4.b.a(view, i10);
        if (musicLikedListEmptyView != null) {
            i10 = R$id.flPlayer;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.likedRv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.loadingView;
                    MusicLikedListLoadingView musicLikedListLoadingView = (MusicLikedListLoadingView) f4.b.a(view, i10);
                    if (musicLikedListLoadingView != null) {
                        i10 = R$id.tvPlayAll;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tvVideosCount;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.viewTopPlaceholder))) != null) {
                                return new e((ConstraintLayout) view, musicLikedListEmptyView, frameLayout, recyclerView, musicLikedListLoadingView, appCompatTextView, appCompatTextView2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_liked_music_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75882a;
    }
}
