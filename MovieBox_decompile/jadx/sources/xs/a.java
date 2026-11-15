package xs;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class a {

    public static final a f75393a = new a();

    private a() {
    }

    public static void b(a aVar, String str, ShorttvModel.UGCVideo uGCVideo, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        aVar.a(str, uGCVideo, str2, str3);
    }

    public final void a(String moduleName, ShorttvModel.UGCVideo uGCVideo, String str, String str2) {
        String title;
        String subjectId;
        String ugcVideoId;
        ShorttvModel.UGCVideoCollection belongToCollection;
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", moduleName);
        if (uGCVideo == null || (title = uGCVideo.getTitle()) == null) {
            title = "";
        }
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title);
        if (str != null) {
            linkedHashMap.put("page_tab_name", str);
        }
        String collectionId = null;
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null));
        if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null) {
            collectionId = belongToCollection.getCollectionId();
        }
        linkedHashMap.put("belong_to_collection_id", String.valueOf(collectionId));
        if (uGCVideo == null || (subjectId = uGCVideo.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("refer_subject_id", subjectId);
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            ugcVideoId = "";
        }
        linkedHashMap.put("content_id", ugcVideoId);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("ops", str2);
        linkedHashMap.put("content_type", "ugc_video");
        h.f69682a.o("/ugc_shorts/detail", linkedHashMap);
    }

    public final void c(ShorttvModel.UGCVideoHasTag uGCVideoHasTag, int i10, String str) {
        String title;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "hashtag");
        if (uGCVideoHasTag == null || (title = uGCVideoHasTag.getTitle()) == null) {
            title = "";
        }
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title);
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("ops", str);
        linkedHashMap.put("content_type", "ugc_video");
        h.f69682a.o("/ugc_shorts/detail", linkedHashMap);
    }

    public final void d(long j10, ShorttvModel.UGCVideo uGCVideo, String pageTabName, String ops) {
        String ugcVideoId;
        String subjectId;
        ShorttvModel.UGCVideoCollection belongToCollection;
        Intrinsics.h(pageTabName, "pageTabName");
        Intrinsics.h(ops, "ops");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        linkedHashMap.put("module_name", WebConstants.FIELD_ITEM);
        linkedHashMap.put("page_tab_name", pageTabName);
        String collectionId = null;
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null));
        linkedHashMap.put("ops", ops);
        if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null) {
            collectionId = belongToCollection.getCollectionId();
        }
        linkedHashMap.put("belong_to_collection_id", String.valueOf(collectionId));
        String str = "";
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            ugcVideoId = "";
        }
        linkedHashMap.put("content_id", ugcVideoId);
        if (uGCVideo != null && (subjectId = uGCVideo.getSubjectId()) != null) {
            str = subjectId;
        }
        linkedHashMap.put("refer_subject_id", str);
        linkedHashMap.put("content_type", "ugc_video");
        h.f69682a.z("/ugc_shorts/detail", linkedHashMap);
    }
}
