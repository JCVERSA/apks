package sm;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import yg.l;

public final class b extends RecyclerView.r {

    public static final a f72338e = new a(null);

    private static final Lazy f72339f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(b.j());
        }
    });

    private final float f72340a;

    private final Function1 f72341b;

    private final String f72342c;

    private boolean f72343d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return ((Number) b.f72339f.getValue()).intValue();
        }

        private a() {
        }
    }

    public b(float f10, Function1 getItemCallback) {
        String value;
        Boolean boolM1;
        Intrinsics.h(getItemCallback, "getItemCallback");
        this.f72340a = f10;
        this.f72341b = getItemCallback;
        this.f72342c = "ListVideoPreload";
        boolean zBooleanValue = false;
        ConfigBean configBeanC = cm.f.f17019c.a().c("feed_video_preload_switch", false);
        if (configBeanC != null && (value = configBeanC.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        this.f72343d = zBooleanValue;
    }

    private final float f(View view) {
        if (view == null) {
            return 0.0f;
        }
        int height = view.getHeight();
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            return (float) ((((double) rect.height()) * 1.0d) / ((double) height));
        }
        return 0.0f;
    }

    private final Video g(List list) {
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Video video = (Video) it.next();
                Integer definition = video.getDefinition();
                if (definition != null && definition.intValue() == 3) {
                    obj = video;
                }
            }
        }
        if (obj == null && list != null && (!list.isEmpty())) {
            obj = list.get(0);
        }
        return (Video) obj;
    }

    private final void h(PostSubjectItem postSubjectItem) {
        FirstFrame firstFrame;
        String url;
        Media media = postSubjectItem.getMedia();
        if (media == null || (firstFrame = media.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        a aVar2 = f72338e;
        ni.f.a.j(aVar, ni.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    private final void i(PostSubjectItem postSubjectItem) {
        String url;
        Media media = postSubjectItem.getMedia();
        Video videoG = g(media != null ? media.getVideo() : null);
        if (videoG == null || (url = videoG.getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f46433i.a().i(url);
    }

    public static final int j() {
        return y.e();
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        int iFindFirstVisibleItemPosition;
        int iFindLastVisibleItemPosition;
        Media media;
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i10);
        if (i10 != 0 || !this.f72343d || !l.f76264a.e()) {
            return;
        }
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition()) > (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition())) {
            return;
        }
        int i11 = iFindFirstVisibleItemPosition;
        while (true) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, this.f72342c, "on scroll idle, firstPosition = " + iFindFirstVisibleItemPosition + ", lastPosition = " + iFindLastVisibleItemPosition + ", position = " + i11, false, 4, null);
            try {
                PostSubjectItem postSubjectItem = (PostSubjectItem) this.f72341b.invoke(Integer.valueOf(i11));
                if (Intrinsics.c((postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getMediaType(), MediaType.VIDEO.getValue()) && !postSubjectItem.getBuiltIn()) {
                    View viewFindViewByPosition = linearLayoutManager.findViewByPosition(i11);
                    float f10 = f(viewFindViewByPosition);
                    float f11 = this.f72340a;
                    if (f11 > 0.6f) {
                        f11 = 0.6f;
                    }
                    if (f10 >= f11) {
                        String str = this.f72342c;
                        Subject subject = postSubjectItem.getSubject();
                        wf.a.C0922a.f(c0922a, str, "tryPreloadVideo, position = " + i11 + ", title = " + (subject != null ? subject.getTitle() : null), false, 4, null);
                        h(postSubjectItem);
                    }
                    if (f(viewFindViewByPosition) >= this.f72340a) {
                        String str2 = this.f72342c;
                        Subject subject2 = postSubjectItem.getSubject();
                        wf.a.C0922a.f(c0922a, str2, "tryPreloadVideo, position = " + i11 + ", title = " + (subject2 != null ? subject2.getTitle() : null), false, 4, null);
                        i(postSubjectItem);
                    }
                }
            } catch (Throwable unused) {
            }
            if (i11 == iFindLastVisibleItemPosition) {
                return;
            } else {
                i11++;
            }
        }
    }
}
