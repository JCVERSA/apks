package com.transsion.ninegridview.preview;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.y;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$id;
import com.transsion.photoview.PhotoView;
import com.transsion.player.ui.ORPlayerView;
import kotlin.jvm.internal.Intrinsics;

public final class r extends ng.a {

    private final com.transsion.player.orplayer.f f45862a;

    private final ORPlayerView f45863b;

    private int f45864c;

    private View f45865d;

    private Image f45866e;

    public r(com.transsion.player.orplayer.f player, ORPlayerView playerView) {
        Intrinsics.h(player, "player");
        Intrinsics.h(playerView, "playerView");
        this.f45862a = player;
        this.f45863b = playerView;
        this.f45864c = -1;
    }

    private final void e(View view) {
        PhotoView photoView = view != null ? (PhotoView) view.findViewById(R$id.video_cover) : null;
        if (photoView != null) {
            uf.c.g(photoView);
        }
    }

    private final void h(GifBean gifBean, View view, boolean z10) {
        i(view);
        com.transsion.player.orplayer.f fVar = this.f45862a;
        String videoUrl = gifBean.getVideoUrl();
        String str = videoUrl == null ? "" : videoUrl;
        String videoUrl2 = gifBean.getVideoUrl();
        if (videoUrl2 == null) {
            videoUrl2 = "";
        }
        fVar.setDataSource(new gn.e(str, videoUrl2, 0, null, null, 28, null));
        this.f45862a.prepare();
        this.f45862a.play();
        this.f45862a.setLooping(z10);
    }

    private final void i(View view) {
        Integer height;
        Integer width;
        PhotoView photoView;
        FrameLayout frameLayout = view != null ? (FrameLayout) view.findViewById(R$id.video_container) : null;
        ViewParent parent = this.f45863b.getParent();
        if (parent instanceof FrameLayout) {
            FrameLayout frameLayout2 = (FrameLayout) parent;
            frameLayout2.removeView(this.f45863b);
            ViewParent parent2 = frameLayout2.getParent();
            if ((parent2 instanceof FrameLayout) && (photoView = (PhotoView) ((FrameLayout) parent2).findViewById(R$id.video_cover)) != null) {
                uf.c.k(photoView);
            }
        }
        this.f45863b.setId(R$id.player_view);
        Image image = this.f45866e;
        float fE = (image == null || (width = image.getWidth()) == null) ? y.e() : width.intValue();
        Image image2 = this.f45866e;
        float fC = (image2 == null || (height = image2.getHeight()) == null) ? y.c() : height.intValue();
        float fE2 = y.e();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) fE2, (int) ((fC / fE) * fE2));
        layoutParams.gravity = 17;
        this.f45863b.setLayoutParams(layoutParams);
        if (frameLayout != null) {
            frameLayout.addView(this.f45863b);
        }
    }

    @Override
    public void c(boolean z10, int i10, View view) {
    }

    public final void f(int i10, Image image, View view) {
        String videoUrl;
        this.f45864c = i10;
        this.f45865d = view;
        this.f45866e = image;
        GifBean gifBean = image != null ? image.getGifBean() : null;
        if (gifBean == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
            return;
        }
        h(gifBean, view, true);
    }

    public void g() {
        e(this.f45865d);
    }
}
