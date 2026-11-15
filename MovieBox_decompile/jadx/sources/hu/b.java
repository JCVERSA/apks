package hu;

import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import ij.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {
    public static final void a(UGCVideo uGCVideo, Function1 function1) {
        Navigator navigator;
        Intrinsics.h(uGCVideo, "<this>");
        Navigator navigatorK = TheRouter.c("/ugc_video/detail").K("id", uGCVideo.getUgcVideoId()).K("ugcCategory", uGCVideo.getCategory());
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        Navigator navigatorK2 = navigatorK.K("collection_id", belongToCollection != null ? belongToCollection.getCollectionId() : null).K("videoStyle", uGCVideo.getVideoStyle());
        if (function1 != null && (navigator = (Navigator) function1.invoke(navigatorK2)) != null) {
            navigatorK2 = navigator;
        }
        k.p(navigatorK2);
    }

    public static void b(UGCVideo uGCVideo, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = null;
        }
        a(uGCVideo, function1);
    }
}
