package sm;

import android.content.Context;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {
    public static final void b(String url) {
        Intrinsics.h(url, "url");
        ni.f.a aVar = ni.f.f67269a;
        final String strE = ni.f.a.e(aVar, url, aVar.c(), false, true, 4, null);
        wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "preload url=" + strE, false, 4, null);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        aVar.i(strE, url, aVar.c(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d.c(jCurrentTimeMillis, strE, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit c(long j10, String str, boolean z10) {
        if (z10) {
            long jCurrentTimeMillis = System.currentTimeMillis() - j10;
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "预加载成功 duration=" + jCurrentTimeMillis + " url=" + str, false, 4, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", str + " 预加载失败", false, 4, null);
        }
        return Unit.f64096a;
    }

    public static final void d(Context context, List list) {
        Cover cover;
        String url;
        List<Image> image;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
                Media media = postSubjectItem.getMedia();
                if (media != null && (image = media.getImage()) != null) {
                    Iterator<T> it2 = image.iterator();
                    while (it2.hasNext()) {
                        String url2 = ((Image) it2.next()).getUrl();
                        if (url2 != null && context != null) {
                            b(url2);
                        }
                    }
                }
                Media media2 = postSubjectItem.getMedia();
                if (media2 != null && (cover = media2.getCover()) != null && (url = cover.getUrl()) != null && context != null) {
                    b(url);
                }
            }
        }
    }
}
