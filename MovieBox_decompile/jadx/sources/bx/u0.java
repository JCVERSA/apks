package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

public final class u0 implements f4.a {

    private final View f16259a;

    public final Group f16260b;

    public final AppCompatImageView f16261c;

    public final RecyclerView f16262d;

    public final TnTextView f16263e;

    public final TnTextView f16264f;

    public final BLView f16265g;

    private u0(View view, Group group, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2, BLView bLView) {
        this.f16259a = view;
        this.f16260b = group;
        this.f16261c = appCompatImageView;
        this.f16262d = recyclerView;
        this.f16263e = tnTextView;
        this.f16264f = tnTextView2;
        this.f16265g = bLView;
    }

    public static u0 a(View view) {
        int i10 = R$id.group_refresh;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.iv_refresh_progress;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_refresh;
                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView != null) {
                        i10 = R$id.tv_title;
                        TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView2 != null) {
                            i10 = R$id.v_refresh;
                            BLView bLView = (BLView) f4.b.a(view, i10);
                            if (bLView != null) {
                                return new u0(view, group, appCompatImageView, recyclerView, tnTextView, tnTextView2, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16259a;
    }
}
