package com.transsion.postdetail.util;

import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final g f48074a = new g();

    private static boolean f48075b;

    private g() {
    }

    private final void a(PostSubjectItem postSubjectItem) {
        List<Image> image;
        Media media = postSubjectItem.getMedia();
        if (media == null || (image = media.getImage()) == null) {
            return;
        }
        Iterator<T> it = image.iterator();
        while (it.hasNext()) {
            String url = ((Image) it.next()).getUrl();
            if (url != null) {
                ni.f.a aVar = ni.f.f67269a;
                String strE = ni.f.a.e(aVar, url, aVar.c(), false, true, 4, null);
                wf.a.C0922a.r(wf.a.f74274a, "PostImage", new String[]{"3----preloadImage:" + strE}, false, 4, null);
                ni.f.a.j(aVar, strE, url, aVar.c(), null, 8, null);
            }
        }
    }

    private final void c(PostSubjectItem postSubjectItem) {
        List<Video> video;
        Video video2;
        FirstFrame firstFrame;
        String url;
        Media media = postSubjectItem.getMedia();
        if (media == null || (video = media.getVideo()) == null || (video2 = (Video) CollectionsKt.k0(video)) == null) {
            return;
        }
        Integer height = video2.getHeight();
        int iIntValue = height != null ? height.intValue() : 0;
        Integer width = video2.getWidth();
        boolean z10 = iIntValue > (width != null ? width.intValue() : 0);
        if (z10) {
            lj.a.b(280);
        } else {
            lj.a.b(162);
        }
        int iB = lj.a.b(z10 ? Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE : 280);
        Media media2 = postSubjectItem.getMedia();
        if (media2 == null || (firstFrame = media2.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        String strE = ni.f.a.e(aVar, url, iB, false, true, 4, null);
        wf.a.C0922a.r(wf.a.f74274a, "PostImage", new String[]{"4-----preloadVideoImage:" + strE}, false, 4, null);
        ni.f.a.j(aVar, strE, url, iB, null, 8, null);
    }

    public final void b(List dataList) {
        String avatar;
        String avatar2;
        Intrinsics.h(dataList, "dataList");
        Iterator it = dataList.iterator();
        while (it.hasNext()) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
            Group group = postSubjectItem.getGroup();
            if (group != null && (avatar2 = group.getAvatar()) != null) {
                ni.f.a aVar = ni.f.f67269a;
                String strE = ni.f.a.e(aVar, avatar2, lj.a.b(36), false, true, 4, null);
                wf.a.C0922a.r(wf.a.f74274a, "PostImage", new String[]{"1--preloadRoomAvatar:" + strE}, false, 4, null);
                ni.f.a.j(aVar, strE, avatar2, lj.a.b(36), null, 8, null);
            }
            User user = postSubjectItem.getUser();
            if (user != null && (avatar = user.getAvatar()) != null) {
                ni.f.a aVar2 = ni.f.f67269a;
                String strE2 = ni.f.a.e(aVar2, avatar, lj.a.b(16), false, true, 4, null);
                wf.a.C0922a.r(wf.a.f74274a, "PostImage", new String[]{"2---preloadUserAvatar:" + strE2}, false, 4, null);
                ni.f.a.j(aVar2, ni.f.a.e(aVar2, avatar, lj.a.b(16), false, true, 4, null), avatar, lj.a.b(16), null, 8, null);
            }
            Media media = postSubjectItem.getMedia();
            String mediaType = media != null ? media.getMediaType() : null;
            if (Intrinsics.c(mediaType, MediaType.IMAGE.getValue())) {
                f48074a.a(postSubjectItem);
            } else if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
                f48074a.c(postSubjectItem);
            }
        }
    }

    public final void d(boolean z10) {
        f48075b = z10;
    }
}
