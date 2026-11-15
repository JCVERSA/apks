package com.transsion.postdetail.control;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import com.transsion.baselib.report.k;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.f;
import com.transsion.player.shorttv.preload.q;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.ui.adapter.i;
import com.transsion.postdetail.ui.view.ShortTvImmVideoItemView;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import gn.e;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a extends SubjectVideoPagerChangeControl {

    public static final C0619a f46838o = new C0619a(null);

    public static final class C0619a {
        public C0619a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Subject subject) {
            String url;
            ShortTVItem shortTVFirstEp;
            Media video;
            Video videoAddress = (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
            if (subject == null || !subject.getBuiltIn()) {
                if (videoAddress != null) {
                    return videoAddress.getUrl();
                }
                return null;
            }
            if (videoAddress == null || (url = videoAddress.getUrl()) == null) {
                return null;
            }
            if (!StringsKt.W(url, "main/", false, 2, null)) {
                return url;
            }
            String absolutePath = DownloadEsHelper.f57201m.a().g().getAbsolutePath();
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String str = absolutePath + "/" + (title + ".mp4");
            videoAddress.setUrl(str);
            return str;
        }

        private C0619a() {
        }
    }

    public class b {

        public static final int[] f46839a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f46839a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Fragment fragment, i iVar, f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        super(fragment, iVar, fVar, oRPlayerView, pagerLayoutManager);
        Intrinsics.h(fragment, "fragment");
    }

    @Override
    public void e(boolean z10, int i10, View view) {
        super.e(z10, i10, view);
        if (view instanceof ShortTvImmVideoItemView) {
            ((ShortTvImmVideoItemView) view).onPlayerReset();
        }
    }

    @Override
    public void g(List datas) {
        f fVarK;
        f fVarK2;
        Media video;
        Intrinsics.h(datas, "datas");
        super.g(datas);
        Iterator it = datas.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Subject subject = (Subject) it.next();
            ShortTVItem shortTVFirstEp = subject.getShortTVFirstEp();
            Video videoAddress = (shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String url = videoAddress != null ? videoAddress.getUrl() : null;
            Integer width = videoAddress != null ? videoAddress.getWidth() : null;
            Integer height = videoAddress != null ? videoAddress.getHeight() : null;
            Integer duration = videoAddress != null ? videoAddress.getDuration() : null;
            wf.a.C0922a.f(c0922a, "ShortTvImmVideoPlayer", "play url=" + url + "  width:" + width + ",height:" + height + ", duration: " + duration + ", builtIn = " + Boolean.valueOf(subject.getBuiltIn()), false, 4, null);
            String strA = f46838o.a(subject);
            if (strA != null && (fVarK2 = k()) != null) {
                ShortTVItem shortTVFirstEp2 = subject.getShortTVFirstEp();
                boolean zAddDataSource = fVarK2.addDataSource(new e(shortTVFirstEp2 != null ? shortTVFirstEp2.getId() : null, strA, 0, null, null, 28, null));
                if (!z10) {
                    z10 = zAddDataSource;
                }
            }
        }
        if (!z10 || (fVarK = k()) == null) {
            return;
        }
        fVarK.prepare();
    }

    @Override
    public void n(int i10) {
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f46839a[event.ordinal()] == 1) {
            k.f42210a.t(this);
            v(null);
            j().getLifecycle().d(this);
            f fVarK = k();
            if (fVarK != null) {
                fVarK.release();
            }
        }
    }

    @Override
    protected void q(int i10, View view) {
        super.q(i10, view);
    }

    @Override
    public void s(int i10) {
    }

    @Override
    public void t(Subject item, Video video) {
        Intrinsics.h(item, "item");
        Intrinsics.h(video, "video");
    }

    @Override
    protected void u() {
    }

    @Override
    protected void w() {
        f fVarK = k();
        if (fVarK != null) {
            fVarK.pause();
        }
    }

    @Override
    protected void x(ShortTvImmVideoItemView view, Subject subject) {
        ShortTVItem shortTVFirstEp;
        Media video;
        Intrinsics.h(view, "view");
        Video videoAddress = (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvImmVideoPlayer", "play url=" + (videoAddress != null ? videoAddress.getUrl() : null) + "  width:" + (videoAddress != null ? videoAddress.getWidth() : null) + ",height:" + (videoAddress != null ? videoAddress.getHeight() : null) + ", duration: " + (videoAddress != null ? videoAddress.getDuration() : null) + ", builtIn = " + (subject != null ? Boolean.valueOf(subject.getBuiltIn()) : null), false, 4, null);
        String strA = f46838o.a(subject);
        if (strA == null) {
            f fVarK = k();
            if (fVarK != null) {
                fVarK.pause();
                return;
            }
            return;
        }
        f fVarK2 = k();
        if (fVarK2 != null) {
            fVarK2.seekTo(q.f46539a.G(strA), 0L);
        }
        f fVarK3 = k();
        if (fVarK3 != null) {
            fVarK3.play();
        }
        view.setVideoUrl(strA);
    }
}
