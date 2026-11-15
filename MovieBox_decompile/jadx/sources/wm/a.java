package wm;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.video.NineGridItemView;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.f;
import com.transsion.player.ui.ORPlayerView;
import gn.e;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0925a f74298i = new C0925a(null);

    private final f f74299a;

    private final ORPlayerView f74300b;

    private int f74302d;

    private PostSubjectItem f74303e;

    private View f74304f;

    private boolean f74305g;

    private int f74301c = -1;

    private final Map f74306h = new LinkedHashMap();

    public static final class C0925a {
        public C0925a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0925a() {
        }
    }

    public a(f fVar, ORPlayerView oRPlayerView) {
        this.f74299a = fVar;
        this.f74300b = oRPlayerView;
    }

    private final void A(NineGridItemView nineGridItemView) {
        ShapeableImageView shapeableImageView = nineGridItemView != null ? (ShapeableImageView) nineGridItemView.findViewById(R$id.video_cover) : null;
        FrameLayout frameLayout = nineGridItemView != null ? (FrameLayout) nineGridItemView.findViewById(R$id.video_container) : null;
        ORPlayerView oRPlayerView = this.f74300b;
        ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
        if (parent instanceof FrameLayout) {
            FrameLayout frameLayout2 = (FrameLayout) parent;
            frameLayout2.removeView(this.f74300b);
            ViewParent parent2 = frameLayout2.getParent();
            if (parent2 instanceof FrameLayout) {
                FrameLayout frameLayout3 = (FrameLayout) parent2;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) frameLayout3.findViewById(R$id.video_cover);
                if (shapeableImageView2 != null) {
                    uf.c.k(shapeableImageView2);
                }
                AppCompatImageView appCompatImageView = (AppCompatImageView) frameLayout3.findViewById(R$id.label_gif);
                if (appCompatImageView != null) {
                    uf.c.k(appCompatImageView);
                }
            }
        }
        ORPlayerView oRPlayerView2 = this.f74300b;
        if (oRPlayerView2 != null) {
            oRPlayerView2.setId(R$id.player_view);
        }
        ORPlayerView oRPlayerView3 = this.f74300b;
        if (oRPlayerView3 != null) {
            oRPlayerView3.setLayoutParams(new FrameLayout.LayoutParams(shapeableImageView != null ? shapeableImageView.getWidth() : 0, shapeableImageView != null ? shapeableImageView.getHeight() : 0));
        }
        if (frameLayout != null) {
            frameLayout.addView(this.f74300b);
        }
        if (nineGridItemView != null) {
            nineGridItemView.requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004c  */
    private final int c(Media media) {
        List<Image> image;
        boolean z10;
        String videoUrl;
        List<Image> image2;
        if (((media == null || (image2 = media.getImage()) == null) ? 0 : image2.size()) <= 0 || media == null || (image = media.getImage()) == null) {
            return -1;
        }
        int i10 = 0;
        for (Object obj : image) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            GifBean gifBean = ((Image) obj).getGifBean();
            if (gifBean != null && (videoUrl = gifBean.getVideoUrl()) != null) {
                z10 = videoUrl.length() > 0;
            }
            if (z10) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    private final NineGridItemView d(Media media, View view) {
        List<Image> image;
        String videoUrl;
        if (media == null || (image = media.getImage()) == null) {
            return null;
        }
        int i10 = 0;
        for (Object obj : image) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            GifBean gifBean = ((Image) obj).getGifBean();
            if (gifBean != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0) {
                NineGridItemView nineGridItemViewK = k(view, i10);
                if (o(nineGridItemViewK)) {
                    this.f74302d = i10;
                    return nineGridItemViewK;
                }
            }
            i10 = i11;
        }
        return null;
    }

    private final int g(Media media) {
        List<Image> image;
        Image image2;
        GifBean gifBean;
        String videoUrl;
        List<Image> image3;
        int size = (media == null || (image3 = media.getImage()) == null) ? 0 : image3.size();
        if (size > 0) {
            for (int i10 = size - 1; -1 < i10; i10--) {
                if (media != null && (image = media.getImage()) != null && (image2 = image.get(i10)) != null && (gifBean = image2.getGifBean()) != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0) {
                    return i10;
                }
            }
        }
        return -1;
    }

    private final int i(Media media, int i10) {
        List<Image> image;
        GifBean gifBean;
        String videoUrl;
        if (i10 == g(media)) {
            return c(media);
        }
        if (media == null || (image = media.getImage()) == null) {
            return -1;
        }
        int i11 = 0;
        for (Object obj : image) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            Image image2 = (Image) obj;
            if (i10 < i11 && (gifBean = image2.getGifBean()) != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0) {
                return i11;
            }
            i11 = i12;
        }
        return -1;
    }

    private final String j(Media media, int i10) {
        List<Image> image;
        Image image2;
        GifBean gifBean;
        List<Image> image3;
        int i11 = i(media, i10);
        int size = (media == null || (image3 = media.getImage()) == null) ? 0 : image3.size();
        if (i11 < 0 || i11 >= size || i11 == this.f74302d || media == null || (image = media.getImage()) == null || (image2 = image.get(i11)) == null || (gifBean = image2.getGifBean()) == null) {
            return null;
        }
        return gifBean.getVideoUrl();
    }

    private final NineGridItemView k(View view, int i10) {
        NineGridVideoView nineGridVideoView = view != null ? (NineGridVideoView) view.findViewById(R$id.nine_grid) : null;
        int childCount = nineGridVideoView != null ? nineGridVideoView.getChildCount() : 0;
        if (i10 >= 0 && i10 < childCount) {
            View childAt = nineGridVideoView != null ? nineGridVideoView.getChildAt(i10) : null;
            if (childAt instanceof NineGridItemView) {
                return (NineGridItemView) childAt;
            }
        }
        return null;
    }

    private final void m(NineGridItemView nineGridItemView) {
        AppCompatImageView appCompatImageView;
        ShapeableImageView shapeableImageView;
        if (nineGridItemView != null && (shapeableImageView = (ShapeableImageView) nineGridItemView.findViewById(R$id.video_cover)) != null) {
            uf.c.g(shapeableImageView);
        }
        if (nineGridItemView == null || (appCompatImageView = (AppCompatImageView) nineGridItemView.findViewById(R$id.label_gif)) == null) {
            return;
        }
        uf.c.h(appCompatImageView);
    }

    private final void t(GifBean gifBean, NineGridItemView nineGridItemView, boolean z10) {
        if (nineGridItemView == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ItemChangeListener", "play url = " + gifBean.getVideoUrl(), false, 4, null);
        A(nineGridItemView);
        f fVar = this.f74299a;
        if (fVar != null) {
            String videoUrl = gifBean.getVideoUrl();
            String str = videoUrl == null ? "" : videoUrl;
            String videoUrl2 = gifBean.getVideoUrl();
            if (videoUrl2 == null) {
                videoUrl2 = "";
            }
            fVar.setDataSource(new e(str, videoUrl2, 0, null, null, 28, null));
        }
        f fVar2 = this.f74299a;
        if (fVar2 != null) {
            fVar2.prepare();
        }
        f fVar3 = this.f74299a;
        if (fVar3 != null) {
            fVar3.play();
        }
        f fVar4 = this.f74299a;
        if (fVar4 != null) {
            fVar4.setLooping(z10);
        }
    }

    private final void u(Media media) {
        int iE = e(media) - 1;
        for (int i10 = 0; i10 < iE; i10++) {
            String strJ = j(media, this.f74302d + i10);
            if (strJ != null && strJ.length() > 0) {
                ORPlayerPreloadManager.f46433i.a().j(strJ, com.transsion.ninegridview.a.f45792h.a().l());
            }
        }
    }

    private final void z(View view) {
        ORPlayerView oRPlayerView = view != null ? (ORPlayerView) view.findViewById(R$id.player_view) : null;
        ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
        if (parent instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) parent;
            frameLayout.removeView(oRPlayerView);
            ViewParent parent2 = frameLayout.getParent();
            if (parent2 instanceof FrameLayout) {
                FrameLayout frameLayout2 = (FrameLayout) parent2;
                ShapeableImageView shapeableImageView = (ShapeableImageView) frameLayout2.findViewById(R$id.video_cover);
                if (shapeableImageView != null) {
                    uf.c.k(shapeableImageView);
                }
                AppCompatImageView appCompatImageView = (AppCompatImageView) frameLayout2.findViewById(R$id.label_gif);
                if (appCompatImageView != null) {
                    uf.c.k(appCompatImageView);
                }
            }
        }
    }

    public final void a() {
        this.f74301c = -1;
        this.f74302d = 0;
        this.f74303e = null;
        this.f74304f = null;
        ORPlayerPreloadManager.f46433i.a().c();
    }

    public final int b() {
        return this.f74301c;
    }

    public final int e(Media media) {
        List<Image> image;
        GifBean gifBean;
        String videoUrl;
        int i10 = 0;
        if (Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.IMAGE.getValue()) && (image = media.getImage()) != null) {
            for (Image image2 : image) {
                if (image2.getGifBean() != null && (gifBean = image2.getGifBean()) != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0) {
                    i10++;
                }
            }
        }
        return i10;
    }

    public final int f() {
        return this.f74302d;
    }

    public final float h(NineGridVideoView nineGridView, Media media) {
        List<Image> image;
        Image image2;
        List<Image> image3;
        Intrinsics.h(nineGridView, "nineGridView");
        int size = (media == null || (image3 = media.getImage()) == null) ? 0 : image3.size();
        float f10 = 0.0f;
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = i(media, i10);
            if (i11 < 0 || i11 >= size) {
                break;
            }
            GifBean gifBean = (media == null || (image = media.getImage()) == null || (image2 = image.get(i11)) == null) ? null : image2.getGifBean();
            if (gifBean != null && gifBean.getVideoUrl() != null) {
                NineGridItemView nineGridItemViewK = k(nineGridView, i11);
                if (nineGridItemViewK == null) {
                    return f10;
                }
                float fL = l(nineGridItemViewK);
                if (f10 < fL) {
                    f10 = fL;
                }
            }
        }
        return f10;
    }

    public final float l(View view) {
        Intrinsics.h(view, "view");
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return 0.0f;
        }
        return (rect.height() * 1.0f) / (view.getHeight() * 1.0f);
    }

    public final boolean n() {
        f fVar = this.f74299a;
        if (fVar != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    public final boolean o(View view) {
        if (view == null) {
            return false;
        }
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            if ((rect.height() * 1.0f) / (view.getHeight() * 1.0f) > 0.5f) {
                return true;
            }
        }
        return false;
    }

    public void p() {
        m(k(this.f74304f, this.f74302d));
    }

    public void q() {
        String videoUrl;
        List<Image> image;
        Image image2;
        List<Image> image3;
        PostSubjectItem postSubjectItem = this.f74303e;
        Media media = postSubjectItem != null ? postSubjectItem.getMedia() : null;
        int size = (media == null || (image3 = media.getImage()) == null) ? 0 : image3.size();
        int iE = e(media);
        while (size > 0) {
            int i10 = i(media, this.f74302d);
            this.f74302d = i10;
            if (i10 < 0 || i10 >= size) {
                return;
            }
            GifBean gifBean = (media == null || (image = media.getImage()) == null || (image2 = image.get(this.f74302d)) == null) ? null : image2.getGifBean();
            if (gifBean != null && (videoUrl = gifBean.getVideoUrl()) != null) {
                NineGridItemView nineGridItemViewK = k(this.f74304f, this.f74302d);
                if (o(nineGridItemViewK) || this.f74305g) {
                    t(gifBean, nineGridItemViewK, size == 1);
                    this.f74306h.put(videoUrl, Boolean.TRUE);
                    return;
                }
                this.f74306h.put(videoUrl, Boolean.FALSE);
            }
            if (!this.f74306h.containsValue(Boolean.TRUE) && this.f74306h.size() >= iE) {
                this.f74301c = -1;
                f fVar = this.f74299a;
                if (fVar == null || !fVar.isPlaying()) {
                    return;
                }
                this.f74299a.pause();
                return;
            }
        }
    }

    public void r() {
        f fVar = this.f74299a;
        if (fVar != null && fVar.isPlaying()) {
            this.f74299a.pause();
            z(this.f74304f);
        }
        a();
    }

    public void s(PostSubjectItem postSubjectItem, View view, int i10) {
        String videoUrl;
        Image image;
        this.f74304f = view;
        GifBean gifBean = null;
        Media media = postSubjectItem != null ? postSubjectItem.getMedia() : null;
        ORPlayerPreloadManager.f46433i.a().h();
        this.f74306h.clear();
        if (Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.IMAGE.getValue())) {
            List<Image> image2 = media.getImage();
            int size = image2 != null ? image2.size() : 0;
            NineGridItemView nineGridItemViewD = d(postSubjectItem.getMedia(), view);
            int i11 = this.f74302d;
            if (i11 < 0 || i11 >= size) {
                return;
            }
            List<Image> image3 = media.getImage();
            if (image3 != null && (image = image3.get(this.f74302d)) != null) {
                gifBean = image.getGifBean();
            }
            if (gifBean == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
                return;
            }
            t(gifBean, nineGridItemViewD, e(media) == 1);
            this.f74301c = i10;
            this.f74303e = postSubjectItem;
            if (size > 1) {
                u(media);
            }
        }
    }

    public final void v(Media media) {
        List<Image> image;
        Image image2;
        GifBean gifBean;
        List<Image> image3;
        int iC = c(media);
        int size = (media == null || (image3 = media.getImage()) == null) ? 0 : image3.size();
        if (iC < 0 || iC >= size) {
            return;
        }
        String videoUrl = (media == null || (image = media.getImage()) == null || (image2 = image.get(iC)) == null || (gifBean = image2.getGifBean()) == null) ? null : gifBean.getVideoUrl();
        if (videoUrl == null || videoUrl.length() <= 0) {
            return;
        }
        ORPlayerPreloadManager.f46433i.a().j(videoUrl, com.transsion.ninegridview.a.f45792h.a().l());
    }

    public final void w() {
        s(this.f74303e, this.f74304f, this.f74301c);
    }

    public final void x(int i10) {
        this.f74301c = i10;
    }

    public final void y(boolean z10) {
        this.f74305g = z10;
    }
}
