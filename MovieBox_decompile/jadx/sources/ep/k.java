package ep;

import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.web.api.WebConstants;
import kotlin.jvm.internal.Intrinsics;

public final class k {

    public static final k f59780a = new k();

    private static boolean f59781b;

    private static boolean f59782c;

    private static String f59783d;

    private static String f59784e;

    private static String f59785f;

    private static boolean f59786g;

    private static String f59787h;

    private k() {
    }

    public static void i(k kVar, String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        kVar.h(str, str2, str3, z10);
    }

    public static void k(k kVar, PostSubjectItem postSubjectItem, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        kVar.j(postSubjectItem, str, str2, z10);
    }

    public final boolean a() {
        return f59781b;
    }

    public final boolean b() {
        return f59782c;
    }

    public final String c() {
        return f59787h;
    }

    public final String d() {
        return f59783d;
    }

    public final String e() {
        return f59784e;
    }

    public final boolean f() {
        return f59786g;
    }

    public final String g() {
        return f59785f;
    }

    public final void h(String str, String str2, String str3, boolean z10) {
        f59783d = str;
        f59784e = str2;
        f59785f = str3;
        if (!f59781b || z10) {
            ij.k.p(TheRouter.c("/room/home"));
        } else {
            ij.k.p(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_COMMUNITY).K("topTab", "Community"));
        }
    }

    public final void j(PostSubjectItem item, String str, String str2, boolean z10) {
        Intrinsics.h(item, "item");
        f59784e = str;
        f59785f = str2;
        Media media = item.getMedia();
        String mediaType = media != null ? media.getMediaType() : null;
        MediaType mediaType2 = MediaType.VIDEO;
        if (Intrinsics.c(mediaType, mediaType2.getValue())) {
            io.b bVar = (io.b) TheRouter.d(io.b.class, new Object[0]);
            if (bVar != null) {
                bVar.i(item);
            }
            Media media2 = item.getMedia();
            Navigator navigatorK = TheRouter.c(Intrinsics.c(media2 != null ? media2.getMediaType() : null, mediaType2.getValue()) ? "/post/detailVideo" : "/post/detail").K(WebConstants.PAGE_FROM, str2).J("item_object", item).K("id", item.getPostId()).K("rec_ops", item.getOps()).K("item_type", item.getItemType());
            Media media3 = item.getMedia();
            ij.k.p(navigatorK.K("media_type", media3 != null ? media3.getMediaType() : null).z("is_build_in", item.getBuiltIn()));
            return;
        }
        Media media4 = item.getMedia();
        if (!Intrinsics.c(media4 != null ? media4.getMediaType() : null, MediaType.IMAGE.getValue())) {
            h(item.getPostId(), str, str2, z10);
            return;
        }
        f59786g = true;
        f59787h = item.getPostId();
        if (!f59781b || z10) {
            ij.k.p(TheRouter.c("/room/home"));
        } else {
            ij.k.p(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_COMMUNITY).K("topTab", "Community"));
        }
    }

    public final void l(boolean z10) {
        f59781b = z10;
    }

    public final void m(boolean z10) {
        f59782c = z10;
    }

    public final void n(String str) {
        f59787h = str;
    }

    public final void o(String str) {
        f59783d = str;
    }

    public final void p(String str) {
        f59784e = str;
    }

    public final void q(boolean z10) {
        f59786g = z10;
    }

    public final void r(String str) {
        f59785f = str;
    }
}
