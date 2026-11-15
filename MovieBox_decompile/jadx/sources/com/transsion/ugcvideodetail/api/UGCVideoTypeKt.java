package com.transsion.ugcvideodetail.api;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import cm.f;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$string;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCategory;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class UGCVideoTypeKt {

    private static String f53934a;

    private static Map f53935b;

    private static final Lazy f53936c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(UGCVideoTypeKt.b());
        }
    });

    public static final int b() {
        return lj.a.b(12);
    }

    private static final Map c() {
        Map map = null;
        ConfigBean configBeanD = f.d(f.f17019c.a(), "sa_ugc_category_icon_config", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            return null;
        }
        if (Intrinsics.c(value, f53934a)) {
            return f53935b;
        }
        try {
            Object objE = o.e(value, new TypeToken<Map<String, ? extends String>>() {
            }.getType());
            Intrinsics.g(objE, "fromJson(...)");
            Map map2 = (Map) objE;
            f53934a = value;
            f53935b = map2;
            map = map2;
        } catch (Throwable unused) {
        }
        return map;
    }

    private static final int d() {
        return ((Number) f53936c.getValue()).intValue();
    }

    public static final int e(String str) {
        if (Intrinsics.c(str, UGCVideoType.MOVIE.getValue())) {
            return R$drawable.ic_tag_movie;
        }
        if (Intrinsics.c(str, UGCVideoType.TV.getValue())) {
            return R$drawable.ic_tag_tv;
        }
        if (Intrinsics.c(str, UGCVideoType.MUSIC.getValue())) {
            return R$drawable.ic_tag_music;
        }
        if (Intrinsics.c(str, UGCVideoType.EDUCATION.getValue())) {
            return R$drawable.ic_tag_edu;
        }
        if (Intrinsics.c(str, UGCVideoType.SHORT_TV.getValue())) {
            return R$drawable.ic_tag_short_tv;
        }
        if (Intrinsics.c(str, UGCVideoType.SPORT.getValue())) {
            return R$drawable.ic_tag_sport;
        }
        if (Intrinsics.c(str, UGCVideoType.ROOM.getValue())) {
            return R$drawable.ic_tag_room;
        }
        if (Intrinsics.c(str, UGCVideoType.POST.getValue())) {
            return R$drawable.ic_tag_room;
        }
        if (Intrinsics.c(str, UGCVideoType.NOVEL.getValue())) {
            return R$drawable.ic_tag_novel;
        }
        if (Intrinsics.c(str, UGCVideoType.LIVE.getValue())) {
            return R$drawable.ic_tag_live;
        }
        if (Intrinsics.c(str, UGCVideoType.KIDS.getValue())) {
            return R$drawable.ic_tag_kids;
        }
        return Intrinsics.c(str, UGCVideoType.RECREATION.getValue()) ? R$drawable.ic_tag_breakdown : R$drawable.ic_tag_default;
    }

    private static final String f(UGCVideo uGCVideo) {
        Map mapC = c();
        if (mapC == null) {
            return null;
        }
        UGCVideoCategory cateLev4 = uGCVideo.getCateLev4();
        Integer id2 = cateLev4 != null ? cateLev4.getId() : null;
        UGCVideoCategory cateLev3 = uGCVideo.getCateLev3();
        Integer id3 = cateLev3 != null ? cateLev3.getId() : null;
        UGCVideoCategory cateLev2 = uGCVideo.getCateLev2();
        Integer id4 = cateLev2 != null ? cateLev2.getId() : null;
        UGCVideoCategory cateLev1 = uGCVideo.getCateLev1();
        Iterator it = CollectionsKt.p(id2, id3, id4, cateLev1 != null ? cateLev1.getId() : null).iterator();
        while (it.hasNext()) {
            String str = (String) mapC.get(String.valueOf(((Number) it.next()).intValue()));
            if (str != null) {
                return str;
            }
        }
        return null;
    }

    public static final int g(String str) {
        if (Intrinsics.c(str, UGCVideoType.MOVIE.getValue())) {
            return R$string.ugc_video_movie;
        }
        if (Intrinsics.c(str, UGCVideoType.TV.getValue())) {
            return R$string.ugc_video_tv_shows;
        }
        if (Intrinsics.c(str, UGCVideoType.MUSIC.getValue())) {
            return R$string.ugc_video_music;
        }
        if (Intrinsics.c(str, UGCVideoType.EDUCATION.getValue())) {
            return R$string.ugc_video_education;
        }
        if (Intrinsics.c(str, UGCVideoType.SHORT_TV.getValue())) {
            return R$string.ugc_video_short_tv;
        }
        if (Intrinsics.c(str, UGCVideoType.SPORT.getValue())) {
            return R$string.ugc_video_sports;
        }
        if (Intrinsics.c(str, UGCVideoType.ROOM.getValue())) {
            return R$string.ugc_video_buzzbox;
        }
        if (Intrinsics.c(str, UGCVideoType.POST.getValue())) {
            return R$string.ugc_video_buzzbox;
        }
        if (Intrinsics.c(str, UGCVideoType.NOVEL.getValue())) {
            return R$string.ugc_video_novel;
        }
        if (Intrinsics.c(str, UGCVideoType.LIVE.getValue())) {
            return R$string.ugc_video_live;
        }
        if (Intrinsics.c(str, UGCVideoType.KIDS.getValue())) {
            return R$string.ugc_video_kids;
        }
        return Intrinsics.c(str, UGCVideoType.RECREATION.getValue()) ? R$string.ugc_video_recreation : R$string.ugc_video_video;
    }

    public static final void h(ImageView imageView, UGCVideo ugcVideo, Integer num) {
        Intrinsics.h(imageView, "imageView");
        Intrinsics.h(ugcVideo, "ugcVideo");
        int iE = e(ugcVideo.getCategory());
        String strF = f(ugcVideo);
        if (strF == null || strF.length() == 0) {
            imageView.setImageResource(iE);
            return;
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.width = num != null ? num.intValue() : d();
        layoutParams.height = num != null ? num.intValue() : d();
        imageView.setLayoutParams(layoutParams);
        ni.f.a aVar = ni.f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.m(context).g(strF).i(iE).d(imageView);
    }

    public static void i(ImageView imageView, UGCVideo uGCVideo, Integer num, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num = null;
        }
        h(imageView, uGCVideo, num);
    }

    public static final void j(ImageView imageView, Integer num, Integer num2, Integer num3, Integer num4, String str) {
        String str2;
        Intrinsics.h(imageView, "imageView");
        int iE = e(str);
        Map mapC = c();
        Iterator it = CollectionsKt.p(num4, num3, num2, num).iterator();
        do {
            str2 = null;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = ((Number) it.next()).intValue();
            if (mapC != null) {
                str2 = (String) mapC.get(String.valueOf(iIntValue));
            }
        } while (str2 == null);
        if (str2 == null || str2.length() == 0) {
            imageView.setImageResource(iE);
            return;
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.width = d();
        layoutParams.height = d();
        imageView.setLayoutParams(layoutParams);
        ni.f.a aVar = ni.f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.m(context).g(str2).i(iE).d(imageView);
    }
}
