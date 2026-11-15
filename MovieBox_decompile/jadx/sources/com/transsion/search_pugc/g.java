package com.transsion.search_pugc;

import android.content.Context;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.w;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.bean.SearchSuggestItem;
import com.transsion.search_pugc.bean.SearchTab;
import com.transsion.search_pugc.bean.SecondTab;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final b f50469h = new b(null);

    private static final Map f50470i = new LinkedHashMap();

    private static final Lazy f50471j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return g.d();
        }
    });

    private final u f50472a;

    private final Map f50473b;

    private final String f50474c;

    private String f50475d;

    private final String f50476e;

    private String f50477f;

    private String f50478g;

    private static final class a implements u {

        public static final a f50479a;

        private static final w f50480b;

        static {
            a aVar = new a();
            f50479a = aVar;
            f50480b = new w(aVar);
        }

        private a() {
        }

        @Override
        public Lifecycle getLifecycle() {
            return f50480b;
        }
    }

    public static final class b {

        public static final class a implements androidx.p009lifecycle.f {
            a() {
            }

            @Override
            public void onCreate(u uVar) {
                androidx.p009lifecycle.e.a(this, uVar);
            }

            @Override
            public void onDestroy(u owner) {
                Intrinsics.h(owner, "owner");
                g.f50470i.remove(owner);
            }

            @Override
            public void onPause(u uVar) {
                androidx.p009lifecycle.e.c(this, uVar);
            }

            @Override
            public void onResume(u uVar) {
                androidx.p009lifecycle.e.d(this, uVar);
            }

            @Override
            public void onStart(u uVar) {
                androidx.p009lifecycle.e.e(this, uVar);
            }

            @Override
            public void onStop(u uVar) {
                androidx.p009lifecycle.e.f(this, uVar);
            }
        }

        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final g c() {
            return (g) g.f50471j.getValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final g a(Context context) {
            if (context != 0) {
                g gVarB = context instanceof u ? g.f50469h.b((u) context) : g.f50469h.c();
                if (gVarB != null) {
                    return gVarB;
                }
            }
            return c();
        }

        public final g b(u uVar) {
            g gVar = (g) g.f50470i.get(uVar);
            return gVar == null ? c() : gVar;
        }

        public final g d(u lifecycleOwner) {
            Intrinsics.h(lifecycleOwner, "lifecycleOwner");
            Map map = g.f50470i;
            Object gVar = map.get(lifecycleOwner);
            if (gVar == null) {
                gVar = new g(lifecycleOwner, null);
                lifecycleOwner.getLifecycle().a(new a());
                map.put(lifecycleOwner, gVar);
            }
            return (g) gVar;
        }

        private b() {
        }
    }

    public g(u uVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(uVar);
    }

    public static final g d() {
        return new g(a.f50479a);
    }

    private final HashMap h() {
        HashMap map = new HashMap();
        map.put("search_id", this.f50476e);
        map.put("sug_source", this.f50475d);
        return map;
    }

    public final void A(SearchSuggestItem searchSuggestItem, Integer num, String keyWord, String str) {
        String word;
        Intrinsics.h(keyWord, "keyWord");
        HashMap mapH = h();
        mapH.put("keyword", keyWord);
        if (searchSuggestItem == null || (word = searchSuggestItem.getWord()) == null) {
            word = "";
        }
        mapH.put(CampaignEx.JSON_KEY_TITLE, word);
        mapH.put(RequestParameters.POSITION, String.valueOf(num));
        if (str == null) {
            str = "";
        }
        mapH.put("ops", str);
        qi.h.f69682a.z("/ugc_search/search_suggest", mapH);
    }

    public final void B(SearchSuggestItem searchSuggestItem, int i10, String keyWord, String str) {
        String word;
        Intrinsics.h(keyWord, "keyWord");
        HashMap mapH = h();
        mapH.put("keyword", keyWord);
        if (searchSuggestItem == null || (word = searchSuggestItem.getWord()) == null) {
            word = "";
        }
        mapH.put(CampaignEx.JSON_KEY_TITLE, word);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        if (str == null) {
            str = "";
        }
        mapH.put("ops", str);
        qi.h.f69682a.o("/ugc_search/search_suggest", mapH);
    }

    public final void C(String str, SearchTab searchTab, String str2) {
        String name;
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        if (searchTab == null || (name = searchTab.getName()) == null) {
            name = "";
        }
        mapH.put("page_tab_name", name);
        mapH.put("module_name", "result_tab_click");
        mapH.put("search_from", String.valueOf(this.f50477f));
        mapH.put("content_type", "ugc_video");
        if (str2 == null) {
            str2 = "";
        }
        mapH.put("ops", str2);
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    public final void D(qi.b bVar) {
        if (bVar != null) {
            bVar.g().put("search_from", this.f50477f);
            bVar.g().put("keyword", this.f50478g);
        }
    }

    public final void E(String searchFrom, String keyword) {
        Intrinsics.h(searchFrom, "searchFrom");
        Intrinsics.h(keyword, "keyword");
        this.f50477f = searchFrom;
        this.f50478g = keyword;
    }

    public final void F(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f50475d = str;
    }

    public final String e() {
        return this.f50478g;
    }

    public final String f() {
        return this.f50474c;
    }

    public final qi.b g(String pageName) {
        Intrinsics.h(pageName, "pageName");
        qi.b bVar = new qi.b(pageName, false, 2, null);
        bVar.g().put("search_id", this.f50476e);
        bVar.g().put("sug_source", this.f50475d);
        return bVar;
    }

    public final void i(qi.b bVar) {
        Long l10;
        if (bVar == null || (l10 = (Long) this.f50473b.remove(bVar)) == null) {
            return;
        }
        bVar.g().put("load_duration", String.valueOf(System.currentTimeMillis() - l10.longValue()));
    }

    public final void j(qi.b bVar) {
        if (bVar != null) {
            Map map = this.f50473b;
            Object objValueOf = map.get(bVar);
            if (objValueOf == null) {
                objValueOf = Long.valueOf(System.currentTimeMillis());
                map.put(bVar, objValueOf);
            }
            ((Number) objValueOf).longValue();
        }
    }

    public final void k(UGCVideo uGCVideo, int i10, String str, SearchTab tab, SecondTab secondTab) {
        String ugcVideoId;
        String subjectId;
        String collectionId;
        String ops;
        UGCVideoBelongToCollection belongToCollection;
        Intrinsics.h(tab, "tab");
        HashMap mapH = h();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String strValueOf = String.valueOf(tab.getName());
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("content_type", "ugc_video");
        mapH.put("search_from", String.valueOf(this.f50477f));
        mapH.put("module_name", WebConstants.FIELD_ITEM);
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        if (uGCVideo == null || (subjectId = uGCVideo.getSubjectId()) == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        if (uGCVideo == null || (belongToCollection = uGCVideo.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        if (uGCVideo != null && (ops = uGCVideo.getOps()) != null) {
            str2 = ops;
        }
        mapH.put("ops", str2);
        com.transsion.baselib.helper.a.f42121a.e("/ugc_search/search_result", mapH);
    }

    public final void l(UGCVideo uGCVideo, int i10, String str, SearchTab tab, SecondTab secondTab) {
        String ugcVideoId;
        String subjectId;
        String collectionId;
        String ops;
        UGCVideoBelongToCollection belongToCollection;
        Intrinsics.h(tab, "tab");
        HashMap mapH = h();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String strValueOf = String.valueOf(tab.getName());
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("content_type", "ugc_video");
        mapH.put("search_from", String.valueOf(this.f50477f));
        mapH.put("module_name", WebConstants.FIELD_ITEM);
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        if (uGCVideo == null || (subjectId = uGCVideo.getSubjectId()) == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        if (uGCVideo == null || (belongToCollection = uGCVideo.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        if (uGCVideo != null && (ops = uGCVideo.getOps()) != null) {
            str2 = ops;
        }
        mapH.put("ops", str2);
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    public final void m() {
        HashMap mapH = h();
        mapH.put("module_name", "history_delete");
        com.transsion.baselib.helper.a.f42121a.f(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void n(boolean z10) {
        HashMap mapH = h();
        mapH.put("isExpand", String.valueOf(z10));
        mapH.put("module_name", "history_expand");
        com.transsion.baselib.helper.a.f42121a.f(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void o(String str, int i10) {
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("module_name", "history_browse");
        mapH.put("content_type", "ugc_video");
        com.transsion.baselib.helper.a.f42121a.a(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void p(String keyWord, int i10) {
        Intrinsics.h(keyWord, "keyWord");
        HashMap mapH = h();
        mapH.put("keyword", keyWord);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("module_name", "history_click");
        mapH.put("content_type", "ugc_video");
        com.transsion.baselib.helper.a.f42121a.f(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void q(String str, int i10) {
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("module_name", "hot_word_browse");
        mapH.put("content_type", "ugc_video");
        com.transsion.baselib.helper.a.f42121a.e(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void r(String keyword, int i10) {
        Intrinsics.h(keyword, "keyword");
        HashMap mapH = h();
        mapH.put("keyword", keyword);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("module_name", "hot_word_click");
        mapH.put("content_type", "ugc_video");
        com.transsion.baselib.helper.a.f42121a.f(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void s(UGCVideo ugcVideo, int i10, String tabName, int i11) {
        String collectionId;
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(tabName, "tabName");
        HashMap mapH = h();
        mapH.put("module_name", "hot_rank_browse");
        String ugcVideoId = ugcVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String subjectId = ugcVideo.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        mapH.put("content_type", "ugc_video");
        mapH.put("page_tab_name", tabName);
        String ops = ugcVideo.getOps();
        mapH.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f42121a.a(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void t(UGCVideo ugcVideo, int i10, String tabName, int i11) {
        String collectionId;
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(tabName, "tabName");
        HashMap mapH = h();
        mapH.put("module_name", "hot_rank_click");
        String ugcVideoId = ugcVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String subjectId = ugcVideo.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        mapH.put("content_type", "ugc_video");
        mapH.put("page_tab_name", tabName);
        String ops = ugcVideo.getOps();
        mapH.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f42121a.f(SearchHotFragment.PAGE_NAME, mapH);
    }

    public final void u(UGCVideo ugcVideo, int i10, String str, SearchTab tab, SecondTab secondTab) {
        String collectionId;
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(tab, "tab");
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("content_type", "ugc_video");
        mapH.put("module_name", WebConstants.FIELD_ITEM);
        String ugcVideoId = ugcVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        String subjectId = ugcVideo.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        String strValueOf = String.valueOf(tab.getName());
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("search_from", String.valueOf(this.f50477f));
        String ops = ugcVideo.getOps();
        mapH.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void v(SearchResultItem item, int i10, long j10, String str, SearchTab searchTab, SecondTab secondTab) {
        String ugcVideoId;
        String subjectId;
        String collectionId;
        String ops;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId2;
        String referId;
        String title;
        String id2;
        Intrinsics.h(item, "item");
        HashMap mapH = h();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String strValueOf = String.valueOf(searchTab != null ? searchTab.getName() : null);
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("content_type", "ugc_video");
        mapH.put("search_from", String.valueOf(this.f50477f));
        String topicType = item.getTopicType();
        if (topicType != null) {
            switch (topicType.hashCode()) {
                case -1989652851:
                    if (topicType.equals("UGC_VIDEO")) {
                        mapH.put("module_name", WebConstants.FIELD_ITEM);
                        UGCVideo video = item.getVideo();
                        if (video == null || (ugcVideoId = video.getUgcVideoId()) == null) {
                            ugcVideoId = "";
                        }
                        mapH.put("content_id", ugcVideoId);
                        UGCVideo video2 = item.getVideo();
                        if (video2 == null || (subjectId = video2.getSubjectId()) == null) {
                            subjectId = "";
                        }
                        mapH.put("refer_subject_id", subjectId);
                        UGCVideo video3 = item.getVideo();
                        if (video3 == null || (belongToCollection = video3.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                            collectionId = "";
                        }
                        mapH.put("belong_to_collection_id", collectionId);
                        UGCVideo video4 = item.getVideo();
                        if (video4 != null && (ops = video4.getOps()) != null) {
                            str2 = ops;
                        }
                        mapH.put("ops", str2);
                    }
                    break;
                case 511113132:
                    if (topicType.equals("UGC_COLLECTION")) {
                        mapH.put("module_name", "collection");
                        UGCCollection collection = item.getCollection();
                        if (collection != null && (collectionId2 = collection.getCollectionId()) != null) {
                            str2 = collectionId2;
                        }
                        mapH.put("content_id", str2);
                        mapH.put("ops", item.getOps());
                    }
                    break;
                case 932115657:
                    if (topicType.equals("HASH_TAG")) {
                        mapH.put("module_name", "hashtag");
                        UGCVideoHashTag hashTag = item.getHashTag();
                        if (hashTag == null || (referId = hashTag.getReferId()) == null) {
                            referId = "";
                        }
                        mapH.put("content_id", referId);
                        UGCVideoHashTag hashTag2 = item.getHashTag();
                        if (hashTag2 != null && (title = hashTag2.getTitle()) != null) {
                            str2 = title;
                        }
                        mapH.put(CampaignEx.JSON_KEY_TITLE, str2);
                    }
                    break;
                case 2033770325:
                    if (topicType.equals("VERTICAL_RANK")) {
                        mapH.put("module_name", "verticalRank");
                        UGCVerticalRank verticalRank = item.getVerticalRank();
                        if (verticalRank != null && (id2 = verticalRank.getId()) != null) {
                            str2 = id2;
                        }
                        mapH.put("content_id", str2);
                        mapH.put("ops", item.getOps());
                    }
                    break;
            }
        }
        com.transsion.baselib.helper.a.f42121a.e("/ugc_search/search_result", mapH);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void w(SearchResultItem item, int i10, String str, SearchTab tab, SecondTab secondTab) {
        String ugcVideoId;
        String subjectId;
        String collectionId;
        String ops;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId2;
        String referId;
        String title;
        String id2;
        String ops2;
        Intrinsics.h(item, "item");
        Intrinsics.h(tab, "tab");
        HashMap mapH = h();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        String strValueOf = String.valueOf(tab.getName());
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("content_type", "ugc_video");
        mapH.put("search_from", String.valueOf(this.f50477f));
        String topicType = item.getTopicType();
        if (topicType != null) {
            switch (topicType.hashCode()) {
                case -1989652851:
                    if (topicType.equals("UGC_VIDEO")) {
                        mapH.put("module_name", WebConstants.FIELD_ITEM);
                        UGCVideo video = item.getVideo();
                        if (video == null || (ugcVideoId = video.getUgcVideoId()) == null) {
                            ugcVideoId = "";
                        }
                        mapH.put("content_id", ugcVideoId);
                        UGCVideo video2 = item.getVideo();
                        if (video2 == null || (subjectId = video2.getSubjectId()) == null) {
                            subjectId = "";
                        }
                        mapH.put("refer_subject_id", subjectId);
                        UGCVideo video3 = item.getVideo();
                        if (video3 == null || (belongToCollection = video3.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                            collectionId = "";
                        }
                        mapH.put("belong_to_collection_id", collectionId);
                        UGCVideo video4 = item.getVideo();
                        if (video4 != null && (ops = video4.getOps()) != null) {
                            str2 = ops;
                        }
                        mapH.put("ops", str2);
                    }
                    break;
                case 511113132:
                    if (topicType.equals("UGC_COLLECTION")) {
                        mapH.put("module_name", "collection");
                        UGCCollection collection = item.getCollection();
                        if (collection != null && (collectionId2 = collection.getCollectionId()) != null) {
                            str2 = collectionId2;
                        }
                        mapH.put("content_id", str2);
                        mapH.put("ops", item.getOps());
                    }
                    break;
                case 932115657:
                    if (topicType.equals("HASH_TAG")) {
                        mapH.put("module_name", "hashtag");
                        UGCVideoHashTag hashTag = item.getHashTag();
                        if (hashTag == null || (referId = hashTag.getReferId()) == null) {
                            referId = "";
                        }
                        mapH.put("content_id", referId);
                        UGCVideoHashTag hashTag2 = item.getHashTag();
                        if (hashTag2 != null && (title = hashTag2.getTitle()) != null) {
                            str2 = title;
                        }
                        mapH.put(CampaignEx.JSON_KEY_TITLE, str2);
                        mapH.put("ops", item.getOps());
                    }
                    break;
                case 2033770325:
                    if (topicType.equals("VERTICAL_RANK")) {
                        mapH.put("module_name", "verticalRank");
                        UGCVerticalRank verticalRank = item.getVerticalRank();
                        if (verticalRank == null || (id2 = verticalRank.getId()) == null) {
                            id2 = "";
                        }
                        mapH.put("content_id", id2);
                        UGCVideo video5 = item.getVideo();
                        if (video5 != null && (ops2 = video5.getOps()) != null) {
                            str2 = ops2;
                        }
                        mapH.put("ops", str2);
                        mapH.put("ops", item.getOps());
                    }
                    break;
            }
        }
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    public final void x(String searchResult, String str) {
        Intrinsics.h(searchResult, "searchResult");
        HashMap mapH = h();
        mapH.put("keyword", String.valueOf(this.f50478g));
        mapH.put("search_from", String.valueOf(this.f50477f));
        mapH.put("search_result", searchResult);
        if (str != null) {
            mapH.put("ops", str);
        }
        qi.h.f69682a.A(SearchHotFragment.PAGE_NAME, "search", mapH);
    }

    public final void y(UGCVideo ugcVideo, int i10, String str, SearchTab tab, SecondTab secondTab) {
        String collectionId;
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(tab, "tab");
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        mapH.put(RequestParameters.POSITION, String.valueOf(i10));
        mapH.put("content_type", "ugc_video");
        mapH.put("module_name", WebConstants.FIELD_ITEM);
        String ugcVideoId = ugcVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        mapH.put("content_id", ugcVideoId);
        String subjectId = ugcVideo.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        mapH.put("refer_subject_id", subjectId);
        UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        mapH.put("belong_to_collection_id", collectionId);
        String strValueOf = String.valueOf(tab.getName());
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("search_from", String.valueOf(this.f50477f));
        String ops = ugcVideo.getOps();
        mapH.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    public final void z(String str, SearchTab searchTab, SecondTab secondTab, String str2) {
        HashMap mapH = h();
        if (str == null) {
            str = "";
        }
        mapH.put("keyword", str);
        String strValueOf = String.valueOf(searchTab != null ? searchTab.getName() : null);
        if (secondTab != null) {
            strValueOf = ((Object) strValueOf) + "/" + secondTab.getTagValue();
        }
        mapH.put("page_tab_name", strValueOf);
        mapH.put("module_name", "result_second_tab_click");
        mapH.put("search_from", String.valueOf(this.f50477f));
        mapH.put("content_type", "ugc_video");
        if (str2 == null) {
            str2 = "";
        }
        mapH.put("ops", str2);
        com.transsion.baselib.helper.a.f42121a.f("/ugc_search/search_result", mapH);
    }

    private g(u uVar) {
        this.f50472a = uVar;
        this.f50473b = new LinkedHashMap();
        this.f50474c = qi.h.f69682a.h();
        this.f50475d = "mb_sug";
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.f50476e = string;
    }
}
