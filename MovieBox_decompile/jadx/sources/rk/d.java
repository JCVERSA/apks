package rk;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class d {

    public static final a f71252c = new a(null);

    public static final int f71253d = 8;

    private HashSet f71254a;

    private String f71255b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void e(a aVar, int i10, int i11, OperateItem operateItem, UGCVideo uGCVideo, Map map, int i12, Object obj) {
            if ((i12 & 16) != 0) {
                map = null;
            }
            aVar.d(i10, i11, operateItem, uGCVideo, map);
        }

        public static void g(a aVar, int i10, int i11, OperateItem operateItem, UGCVideo uGCVideo, Map map, int i12, Object obj) {
            if ((i12 & 16) != 0) {
                map = null;
            }
            aVar.f(i10, i11, operateItem, uGCVideo, map);
        }

        public final void a(int i10, int i11, OperateItem operateItem, BannerData bannerData) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            if (bannerData != null) {
                sk.b.b(bannerData, map);
            }
            sk.b.a(operateItem, map);
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("tabId", String.valueOf(i10));
            h.f69682a.z(SubTabFragment.INSTANCE.a(i10), map);
        }

        public final void b(int i10, int i11, OperateItem operateItem, BannerData bannerData) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            if (bannerData != null) {
                sk.b.b(bannerData, map);
            }
            sk.b.a(operateItem, map);
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("tabId", String.valueOf(i10));
            h.f69682a.o(SubTabFragment.INSTANCE.a(i10), map);
        }

        public final void c(int i10, OperateItem operateItem, int i11) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo != null) {
                sk.b.e(feedsUGCVideo, map);
            }
            OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
            if (originalOperateItem != null) {
                sk.b.a(originalOperateItem, map);
            }
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            map.put("card_type", Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_GRID.getValue()) ? "grid" : "big");
            h.f69682a.o(SubTabFragment.INSTANCE.a(i11), map);
        }

        public final void d(int i10, int i11, OperateItem operateItem, UGCVideo uGCVideo, Map map) {
            OperateItem originalOperateItem;
            HashMap map2 = new HashMap();
            if (uGCVideo != null) {
                sk.b.e(uGCVideo, map2);
            }
            if (operateItem != null) {
                sk.b.a(operateItem, map2);
            }
            if (operateItem != null && (originalOperateItem = operateItem.getOriginalOperateItem()) != null) {
                sk.b.a(originalOperateItem, map2);
            }
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    map2.put((String) entry.getKey(), (String) entry.getValue());
                }
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            map2.put(RequestParameters.POSITION, String.valueOf(i11));
            map2.put("tabId", String.valueOf(i10));
            h.f69682a.z(SubTabFragment.INSTANCE.a(i10), map2);
        }

        public final void f(int i10, int i11, OperateItem operateItem, UGCVideo uGCVideo, Map map) {
            HashMap map2 = new HashMap();
            if (uGCVideo != null) {
                sk.b.e(uGCVideo, map2);
            }
            if (operateItem != null) {
                sk.b.a(operateItem, map2);
            }
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    map2.put((String) entry.getKey(), (String) entry.getValue());
                }
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            map2.put(RequestParameters.POSITION, String.valueOf(i11));
            map2.put("tabId", String.valueOf(i10));
            h.f69682a.o(SubTabFragment.INSTANCE.a(i10), map2);
        }

        private a() {
        }
    }

    public d(String page) {
        Intrinsics.h(page, "page");
        this.f71254a = new HashSet();
        this.f71255b = page;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x015a  */
    public final void a(OperateItem operateItem, int i10, long j10) {
        String string;
        List<UGCContent> contentList;
        String ugcVideoId;
        if (operateItem == null) {
            return;
        }
        String type = operateItem.getType();
        PostItemType postItemType = PostItemType.TRENDING_FEES_GRID;
        if (Intrinsics.c(type, postItemType.getValue()) || Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_BIG.getValue())) {
            HashSet hashSet = this.f71254a;
            UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
            if (CollectionsKt.b0(hashSet, feedsUGCVideo != null ? feedsUGCVideo.getUgcVideoId() : null)) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                UGCVideo feedsUGCVideo2 = operateItem.getFeedsUGCVideo();
                wf.a.C0922a.f(c0922a, "reportExposure", "trendFragment position:" + i10 + ",subjectId: + " + (feedsUGCVideo2 != null ? feedsUGCVideo2.getUgcVideoId() : null) + "}", false, 4, null);
                return;
            }
            UGCVideo feedsUGCVideo3 = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo3 != null && (ugcVideoId = feedsUGCVideo3.getUgcVideoId()) != null && ugcVideoId.length() > 0) {
                HashSet hashSet2 = this.f71254a;
                UGCVideo feedsUGCVideo4 = operateItem.getFeedsUGCVideo();
                String ugcVideoId2 = feedsUGCVideo4 != null ? feedsUGCVideo4.getUgcVideoId() : null;
                Intrinsics.e(ugcVideoId2);
                hashSet2.add(ugcVideoId2);
            }
            if (operateItem.getOriginalOperateItem() == null) {
                HashMap map = new HashMap();
                UGCVideo feedsUGCVideo5 = operateItem.getFeedsUGCVideo();
                if (feedsUGCVideo5 != null) {
                    sk.b.e(feedsUGCVideo5, map);
                }
                map.put("module_name", WebConstants.FIELD_ITEM);
                if (j10 > 0) {
                    map.put("browse_duration", String.valueOf(j10));
                }
                map.put(RequestParameters.POSITION, String.valueOf(i10));
                map.put("card_type", Intrinsics.c(operateItem.getType(), postItemType.getValue()) ? "grid" : "big");
                h.f69682a.z(this.f71255b, map);
                return;
            }
            HashMap map2 = new HashMap();
            UGCVideo feedsUGCVideo6 = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo6 != null) {
                sk.b.e(feedsUGCVideo6, map2);
            }
            OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
            if (originalOperateItem != null) {
                sk.b.a(originalOperateItem, map2);
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            if (j10 > 0) {
                map2.put("browse_duration", String.valueOf(j10));
            }
            OperateItem originalOperateItem2 = operateItem.getOriginalOperateItem();
            if (originalOperateItem2 == null || (contentList = originalOperateItem2.getContentList()) == null) {
                string = "0";
            } else {
                Iterator<UGCContent> it = contentList.iterator();
                int i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    UGCVideo video = it.next().getVideo();
                    String ugcVideoId3 = video != null ? video.getUgcVideoId() : null;
                    UGCVideo feedsUGCVideo7 = operateItem.getFeedsUGCVideo();
                    if (Intrinsics.c(ugcVideoId3, feedsUGCVideo7 != null ? feedsUGCVideo7.getUgcVideoId() : null)) {
                        break;
                    } else {
                        i11++;
                    }
                }
                string = Integer.valueOf(i11).toString();
                if (string == null) {
                    string = "0";
                }
            }
            map2.put(RequestParameters.POSITION, string);
            map2.put("card_type", Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_GRID.getValue()) ? "grid" : "big");
            h.f69682a.z(this.f71255b, map2);
        }
    }
}
