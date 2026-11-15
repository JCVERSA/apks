package com.transsion.search_pugc.constant;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import androidx.core.content.b;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.search.R$color;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import ij.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;

public abstract class a {
    public static final Navigator c(Navigator navigator, String str) {
        Navigator navigatorK;
        Intrinsics.h(navigator, "<this>");
        return (str == null || (navigatorK = navigator.K("ops", str)) == null) ? navigator : navigatorK;
    }

    public static final SpannableString d(String str, Context context, String str2) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(context, "context");
        SpannableString spannableString = new SpannableString(str);
        if (str2 != null && !StringsKt.q0(str2)) {
            int color = b.getColor(context, R$color.color_keyword);
            List<String> listSplit = new Regex("\\s+").split(StringsKt.n1(str2).toString(), 0);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listSplit) {
                if (!StringsKt.q0((String) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return spannableString;
            }
            for (MatchResult matchResult : Regex.findAll$default(new Regex(CollectionsKt.s0(arrayList, "[\\s\\p{Punct}]+", null, null, 0, null, new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return com.transsion.search_pugc.constant.a.e((String) obj2);
                }
            }, 30, null), RegexOption.IGNORE_CASE), str, 0, 2, null)) {
                spannableString.setSpan(new ForegroundColorSpan(color), matchResult.b().getFirst(), matchResult.b().getLast() + 1, 33);
            }
        }
        return spannableString;
    }

    public static final CharSequence e(String it) {
        Intrinsics.h(it, "it");
        return Regex.INSTANCE.c(it);
    }

    public static final void f(UGCVerticalRank uGCVerticalRank, String str) {
        UGCVideo uGCVideo;
        Intrinsics.h(uGCVerticalRank, "<this>");
        Navigator navigatorK = TheRouter.c("/home/ugc_film_list").K("filmType", uGCVerticalRank.getId()).K("filmListTitle", uGCVerticalRank.getTitle());
        List<UGCVideo> videos = uGCVerticalRank.getVideos();
        navigatorK.K("videoType", (videos == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) ? null : uGCVideo.getCategory());
        k.p(c(navigatorK, str));
    }

    public static final void g(UGCVideo uGCVideo, final boolean z10) {
        Intrinsics.h(uGCVideo, "<this>");
        hu.b.a(uGCVideo, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return com.transsion.search_pugc.constant.a.i(z10, (Navigator) obj);
            }
        });
    }

    public static void h(UGCVideo uGCVideo, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        g(uGCVideo, z10);
    }

    public static final Navigator i(boolean z10, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.z("ugc_without_history", z10);
    }

    public static final String j(long j10) {
        long j11 = 60;
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j10 / j11), Long.valueOf(j10 % j11)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public static final List k(List list) {
        Intrinsics.h(list, "<this>");
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new ResultCollectItemWrapper((UGCVideo) it.next(), ResultCollectItemWrapper.Type.DATA));
        }
        return arrayList;
    }

    public static final String l(String str) {
        Intrinsics.h(str, "<this>");
        try {
            int i10 = Integer.parseInt(str);
            if (i10 < 1000) {
                str = String.valueOf(i10);
            } else if (i10 < 1000000) {
                String str2 = String.format("%.1fk", Arrays.copyOf(new Object[]{Double.valueOf(((double) i10) / 1000.0d)}, 1));
                Intrinsics.g(str2, "format(...)");
                str = StringsKt.J0(str2, ".0");
            } else if (i10 < 1000000000) {
                String str3 = String.format("%.1fM", Arrays.copyOf(new Object[]{Double.valueOf(((double) i10) / 1000000.0d)}, 1));
                Intrinsics.g(str3, "format(...)");
                str = StringsKt.J0(str3, ".0");
            } else {
                str = "999M+";
            }
        } catch (NumberFormatException unused) {
        }
        return str;
    }
}
