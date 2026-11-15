package xn;

import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.ui.adapter.e;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class a {

    private HashSet f75366a;

    private String f75367b;

    private String f75368c;

    public a(String page, String postId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(postId, "postId");
        this.f75367b = page;
        this.f75368c = postId;
    }

    public final void a(e adapter, int i10, long j10) {
        Boolean hasResource;
        Intrinsics.h(adapter, "adapter");
        if (i10 >= adapter.getData().size()) {
            return;
        }
        PostSubjectItem postSubjectItem = (PostSubjectItem) adapter.getItem(i10);
        if (this.f75366a == null) {
            this.f75366a = new HashSet();
        }
        HashMap map = new HashMap();
        HashSet hashSet = this.f75366a;
        String string = null;
        if (hashSet != null && hashSet.contains(postSubjectItem)) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String postId = postSubjectItem.getPostId();
            Media media = postSubjectItem.getMedia();
            wf.a.C0922a.f(c0922a, "reportExposure", "trendFragment position:" + i10 + ",videoId: + " + postId + "  mediaType: " + (media != null ? media.getMediaType() : null), false, 4, null);
            return;
        }
        HashSet hashSet2 = this.f75366a;
        if (hashSet2 != null) {
            hashSet2.add(postSubjectItem);
        }
        map.put("post_id", postSubjectItem.getPostId());
        map.put("origin_post_id", this.f75368c);
        map.put("sequence", String.valueOf(i10));
        map.put("item_type", postSubjectItem.getItemType());
        map.put("ops", postSubjectItem.getOps());
        Media media2 = postSubjectItem.getMedia();
        map.put("post_media_type", media2 != null ? media2.getMediaType() : null);
        Subject subject = postSubjectItem.getSubject();
        map.put("subject_id", subject != null ? subject.getSubjectId() : null);
        Group group = postSubjectItem.getGroup();
        map.put("group_id", group != null ? group.getGroupId() : null);
        map.put("browse_duration", String.valueOf(j10));
        Subject subject2 = postSubjectItem.getSubject();
        if (subject2 != null && (hasResource = subject2.getHasResource()) != null) {
            string = hasResource.toString();
        }
        map.put("has_resource", string);
        h.f69682a.z(this.f75367b, map);
    }

    public final void b(int i10, PostSubjectItem item) {
        Intrinsics.h(item, "item");
        HashMap map = new HashMap();
        map.put("post_id", item.getPostId());
        map.put("origin_post_id", this.f75368c);
        map.put("sequence", String.valueOf(i10));
        map.put("item_type", item.getItemType());
        map.put("ops", item.getOps());
        Media media = item.getMedia();
        map.put("post_media_type", media != null ? media.getMediaType() : null);
        Subject subject = item.getSubject();
        map.put("subject_id", subject != null ? subject.getSubjectId() : null);
        Group group = item.getGroup();
        map.put("group_id", group != null ? group.getGroupId() : null);
        h.f69682a.o(this.f75367b, map);
    }
}
