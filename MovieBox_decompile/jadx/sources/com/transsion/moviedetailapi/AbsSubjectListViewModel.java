package com.transsion.moviedetailapi;

import android.app.Application;
import android.os.Bundle;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Link;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public abstract class AbsSubjectListViewModel extends androidx.p009lifecycle.b {

    public static final a f45725j = new a(null);

    private final Lazy f45726b;

    private final Lazy f45727c;

    private final Lazy f45728d;

    private final Lazy f45729e;

    private final Lazy f45730f;

    private final Lazy f45731g;

    private String f45732h;

    private PostRankType f45733i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsSubjectListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45726b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.L();
            }
        });
        this.f45727c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.G();
            }
        });
        this.f45728d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.j();
            }
        });
        this.f45729e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.k();
            }
        });
        this.f45730f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.D();
            }
        });
        this.f45731g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return AbsSubjectListViewModel.l();
            }
        });
        this.f45732h = "";
        this.f45733i = PostRankType.POST_RANK_TYPE_DEFAULT;
    }

    public static final b0 D() {
        return new b0();
    }

    public static final b0 G() {
        return new b0();
    }

    public static final tm.a L() {
        return (tm.a) kg.c.f63982e.a().h(tm.a.class);
    }

    public static final b0 j() {
        return new b0();
    }

    public static final b0 k() {
        return new b0();
    }

    public static final b0 l() {
        return new b0();
    }

    public final tm.a z() {
        return (tm.a) this.f45726b.getValue();
    }

    public abstract PostListSource A();

    public ProfileSubSource B() {
        return null;
    }

    public void C(String str, int i10) {
        k.d(u0.a(this), null, null, new AbsSubjectListViewModel$like$1(str, i10, this, null), 3, null);
    }

    public abstract void E(boolean z10);

    public abstract void F(Bundle bundle);

    public void H(PostSubjectItem postSubjectItem, int i10) {
        String subjectId;
        String value;
        String groupId;
        String subjectId2;
        String url;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        HashMap map = new HashMap();
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        Subject subject3 = postSubjectItem.getSubject();
        if (subject3 == null || (subjectId2 = subject3.getSubjectId()) == null) {
            subjectId2 = "";
        }
        map.put("subject_id", subjectId2);
        String content = postSubjectItem.getContent();
        if (content == null) {
            content = "";
        }
        map.put("link_url", content);
        Link link = postSubjectItem.getLink();
        if (link == null || (url = link.getUrl()) == null) {
            url = "";
        }
        map.put("link_url", url);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i10));
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f45732h);
        Map mapQ = q(this.f45733i.ordinal());
        if (mapQ != null) {
            for (Map.Entry entry : mapQ.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f42121a.e(w(this.f45733i.ordinal()), map);
    }

    public void I(PostSubjectItem postSubjectItem, int i10, String subPageName) {
        String subjectId;
        String value;
        String groupId;
        String subjectId2;
        String url;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(subPageName, "subPageName");
        HashMap map = new HashMap();
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        Subject subject3 = postSubjectItem.getSubject();
        if (subject3 == null || (subjectId2 = subject3.getSubjectId()) == null) {
            subjectId2 = "";
        }
        map.put("subject_id", subjectId2);
        String title = postSubjectItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        Link link = postSubjectItem.getLink();
        if (link == null || (url = link.getUrl()) == null) {
            url = "";
        }
        map.put("link_url", url);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i10));
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f45732h);
        map.put("module_name", WebConstants.FIELD_ITEM);
        map.put("subpage_name", subPageName);
        Map mapQ = q(this.f45733i.ordinal());
        if (mapQ != null) {
            for (Map.Entry entry : mapQ.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f42121a.f(w(this.f45733i.ordinal()), map);
    }

    public void J(PostSubjectItem postSubjectItem, int i10, String moduleName, String subPageName) {
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(moduleName, "moduleName");
        Intrinsics.h(subPageName, "subPageName");
        Link link = postSubjectItem.getLink();
        K(postSubjectItem, i10, moduleName, link != null ? link.getUrl() : null, subPageName);
    }

    public void K(PostSubjectItem postSubjectItem, int i10, String moduleName, String str, String str2) {
        String subjectId;
        String value;
        String value2;
        String groupId;
        String userId;
        Intrinsics.h(postSubjectItem, "postSubjectItem");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        if (str2 == null) {
            str2 = "";
        }
        map.put("subpage_name", str2);
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        map.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        String itemType = postSubjectItem.getItemType();
        if (itemType == null) {
            itemType = PostItemType.SUBJECT.getValue();
        }
        map.put("item_type", itemType);
        Media media2 = postSubjectItem.getMedia();
        if (media2 == null || (value2 = media2.getMediaType()) == null) {
            value2 = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value2);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        map.put("group_id", groupId);
        String title = postSubjectItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (str == null) {
            str = "";
        }
        map.put("link_url", str);
        String ops = postSubjectItem.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, this.f45732h);
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        map.put("avatar_user_id", userId);
        map.put("sequence", String.valueOf(i10));
        Map mapU = u(this.f45733i.ordinal());
        if (mapU != null) {
            for (Map.Entry entry : mapU.entrySet()) {
                String str3 = (String) entry.getKey();
                String str4 = (String) entry.getValue();
                if (str4 == null) {
                    str4 = "";
                }
                map.put(str3, str4);
            }
        }
        com.transsion.baselib.helper.a.f42121a.g(w(this.f45733i.ordinal()), map);
    }

    public final void M(PostRankType postRankType) {
        Intrinsics.h(postRankType, "<set-?>");
        this.f45733i = postRankType;
    }

    public final void N(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f45732h = str;
    }

    public final void m(String str) {
        k.d(u0.a(this), null, null, new AbsSubjectListViewModel$deletePost$1(str, this, null), 3, null);
    }

    public final LiveData n() {
        return o();
    }

    public final b0 o() {
        return (b0) this.f45728d.getValue();
    }

    public final b0 p() {
        return (b0) this.f45731g.getValue();
    }

    public Map q(int i10) {
        return null;
    }

    public final LiveData r() {
        return s();
    }

    protected final b0 s() {
        return (b0) this.f45730f.getValue();
    }

    public final PostRankType t() {
        return this.f45733i;
    }

    public Map u(int i10) {
        return null;
    }

    public final String v() {
        return this.f45732h;
    }

    public String w(int i10) {
        return "";
    }

    public final LiveData x() {
        return y();
    }

    public final b0 y() {
        return (b0) this.f45727c.getValue();
    }
}
