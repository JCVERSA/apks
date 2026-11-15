package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.bean.RoomCacheImage;
import com.transsion.postdetail.bean.RoomImageType;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.room.api.RoomHomeCacheEvent;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 O2\u00020\u0001:\u0001PB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J%\u0010\u000b\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b!\u0010\u0017J\u000f\u0010\"\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u0019\u0010)\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u001f\u00100\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u0014H\u0016¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0014¢\u0006\u0004\b2\u0010\u0017J\u0015\u00103\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b3\u0010*J\r\u00104\u001a\u00020\u0004¢\u0006\u0004\b4\u0010\u0003J\r\u00105\u001a\u00020\u0004¢\u0006\u0004\b5\u0010\u0003J\r\u00106\u001a\u00020\u0014¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0004H\u0016¢\u0006\u0004\b8\u0010\u0003J\u0017\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u001cH\u0016¢\u0006\u0004\b:\u0010\u001fJ\u000f\u0010;\u001a\u00020+H\u0016¢\u0006\u0004\b;\u0010-J\u000f\u0010<\u001a\u00020+H\u0016¢\u0006\u0004\b<\u0010-J\u000f\u0010=\u001a\u00020\u0014H\u0016¢\u0006\u0004\b=\u00107J\u000f\u0010>\u001a\u00020\u0014H\u0016¢\u0006\u0004\b>\u00107J\u000f\u0010?\u001a\u00020\u0010H\u0016¢\u0006\u0004\b?\u0010\u0012J\u000f\u0010@\u001a\u00020\u0014H\u0016¢\u0006\u0004\b@\u00107R\u001b\u0010F\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0018\u0010G\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010I\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010HR\u0018\u0010J\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010L\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010H¨\u0006Q"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "initRoomCacheData", "", "Lcom/transsion/postdetail/bean/RoomCacheImage;", "imageList", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "data", "preloadImage", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "bean", "getPreloadImages", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Ljava/util/List;", "", "getCacheFirstIndex", "()I", "getLastVisiblePosition", "", "isSaveInstance", "trySaveDataCache", "(Z)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "isLowInteractiveItem", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "hidden", "onHiddenChanged", "onResume", "initViewModel", "lazyLoadData", "lazyLoadWithoutNet", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "loadMoreCacheData", "deleteCacheRoom", "insertRoomCacheData", "updateCacheData", "hasInsertRoomCache", "()Z", "onDestroyView", "outState", "onSaveInstanceState", "pageName", "subpageName", "isSwipeRefreshEnable", "isNeedInsertPublishPost", "tabIndex", "isStaggeredPost", "Lep/l;", "trendingRoomsViewModel$delegate", "Lkotlin/Lazy;", "getTrendingRoomsViewModel", "()Lep/l;", "trendingRoomsViewModel", "insertPostId", "Ljava/lang/String;", "insertPostOps", "roomCacheData", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "curExposurePosition", "I", "pageFrom", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomPostExploreFragment extends RoomPostBaseFragment {

    public static final Companion INSTANCE = new Companion(null);
    public static final String SUBPAGE_NAME = "room_home_explore";
    private int curExposurePosition;
    private String insertPostId;
    private String insertPostOps;
    private String pageFrom;
    private PostSubjectBean roomCacheData;

    private final Lazy trendingRoomsViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ep.l.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostExploreFragment a(String str, String str2, String str3) {
            RoomPostExploreFragment roomPostExploreFragment = new RoomPostExploreFragment();
            roomPostExploreFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("post_id", str2), TuplesKt.a("ops", str3), TuplesKt.a("parent_type", str)));
            return roomPostExploreFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements ij.q {
        b() {
        }

        @Override
        public void a(int i10) {
            if (RoomPostExploreFragment.this.curExposurePosition < i10) {
                RoomPostExploreFragment.this.curExposurePosition = i10;
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47533a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47533a = function;
        }

        @Override
        public final Function a() {
            return this.f47533a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f47533a.invoke(obj);
        }
    }

    private final int getCacheFirstIndex() {
        com.transsion.postdetail.ui.adapter.f mAdapter;
        List<Object> data;
        List<Object> data2;
        com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
        List<Object> data3 = mAdapter2 != null ? mAdapter2.getData() : null;
        if (data3 == null || data3.isEmpty() || (mAdapter = getMAdapter()) == null || (data = mAdapter.getData()) == null) {
            return -1;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
            com.transsion.postdetail.ui.adapter.f mAdapter3 = getMAdapter();
            Integer numValueOf = (mAdapter3 == null || (data2 = mAdapter3.getData()) == null) ? null : Integer.valueOf(data2.indexOf(postSubjectItem));
            if (postSubjectItem.isRoomCacheListStart()) {
                if (numValueOf != null) {
                    return numValueOf.intValue();
                }
                return -1;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int getLastVisiblePosition() {
        RecyclerView recyclerView;
        wn.p pVar = (wn.p) getMViewBinding();
        RecyclerView.m layoutManager = (pVar == null || (recyclerView = pVar.f74519b) == null) ? null : recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
    }

    private final List<RoomCacheImage> getPreloadImages(PostSubjectBean bean) {
        List<Image> image;
        List<Image> image2;
        String avatar;
        String avatar2;
        ArrayList arrayList = new ArrayList();
        List<PostSubjectItem> items = bean.getItems();
        if (items != null) {
            for (PostSubjectItem postSubjectItem : items) {
                Group group = postSubjectItem.getGroup();
                if (group != null && (avatar2 = group.getAvatar()) != null) {
                    arrayList.add(new RoomCacheImage(avatar2, RoomImageType.ROOM_IMAGE.getValue(), 0));
                }
                User user = postSubjectItem.getUser();
                if (user != null && (avatar = user.getAvatar()) != null) {
                    arrayList.add(new RoomCacheImage(avatar, RoomImageType.AUTHOR_IMAGE.getValue(), 0));
                }
                Media media = postSubjectItem.getMedia();
                if (media != null && (image = media.getImage()) != null) {
                    for (Image image3 : image) {
                        Media media2 = postSubjectItem.getMedia();
                        if (media2 != null && (image2 = media2.getImage()) != null) {
                            if (image2.size() > 1) {
                                String url = image3.getUrl();
                                if (url != null) {
                                    arrayList.add(new RoomCacheImage(url, RoomImageType.POST_MORE.getValue(), image3.getWidth()));
                                }
                            } else {
                                String url2 = image3.getUrl();
                                if (url2 != null) {
                                    arrayList.add(new RoomCacheImage(url2, RoomImageType.POST_SINGLE.getValue(), image3.getWidth()));
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private final ep.l getTrendingRoomsViewModel() {
        return (ep.l) this.trendingRoomsViewModel.getValue();
    }

    private final void initRoomCacheData() {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0) {
            return;
        }
        this.roomCacheData = (PostSubjectBean) com.blankj.utilcode.util.o.d(string, PostSubjectBean.class);
    }

    public static final Unit initViewModel$lambda$1(RoomPostExploreFragment roomPostExploreFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostExploreFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostExploreFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostExploreFragment.insertPostOps);
        }
        roomPostExploreFragment.updateData(postSubjectBean);
        return Unit.f64096a;
    }

    public static final Unit initViewModel$lambda$5(RoomPostExploreFragment roomPostExploreFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostExploreFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostExploreFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostExploreFragment.insertPostOps);
        }
        if (postSubjectBean == null) {
            return Unit.f64096a;
        }
        List<PostSubjectItem> items2 = postSubjectBean.getItems();
        Iterator<PostSubjectItem> it = items2 != null ? items2.iterator() : null;
        if (it != null) {
            while (it.hasNext()) {
                if (it.next().isVideo()) {
                    it.remove();
                }
            }
        }
        PostSubjectItem postSubjectItem2 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem2.setRoomCacheListStart(true);
        PostSubjectItem postSubjectItem3 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem3.setRoomCacheListEnd(true);
        List<PostSubjectItem> items3 = postSubjectBean.getItems();
        if (items3 != null) {
            items3.add(0, postSubjectItem2);
        }
        List<PostSubjectItem> items4 = postSubjectBean.getItems();
        if (items4 != null) {
            items4.add(postSubjectItem3);
        }
        List<PostSubjectItem> items5 = postSubjectBean.getItems();
        if (items5 != null) {
            Iterator<T> it2 = items5.iterator();
            while (it2.hasNext()) {
                ((PostSubjectItem) it2.next()).setRoomCache(true);
            }
        }
        roomPostExploreFragment.preloadImage(roomPostExploreFragment.getPreloadImages(postSubjectBean), postSubjectBean);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$7(RoomPostExploreFragment roomPostExploreFragment, Pair pair) {
        RecyclerView recyclerView;
        qi.b logViewConfig;
        HashMap mapG;
        String str = pair != null ? (String) pair.getFirst() : null;
        if (str == null || str.length() == 0) {
            return Unit.f64096a;
        }
        ep.k kVar = ep.k.f59780a;
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            roomPostExploreFragment.pageFrom = kVar.g();
            kVar.r(null);
        }
        if (roomPostExploreFragment.pageFrom != null && (logViewConfig = roomPostExploreFragment.getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        androidx.p010savedstate.e parentFragment = roomPostExploreFragment.getParentFragment();
        ep.g gVar = parentFragment instanceof ep.g ? (ep.g) parentFragment : null;
        if (gVar != null) {
            gVar.z(roomPostExploreFragment.pageFrom);
        }
        roomPostExploreFragment.insertPostOps = (String) pair.getSecond();
        roomPostExploreFragment.insertPostId = str;
        RoomPostBaseFragment.loadData$default(roomPostExploreFragment, false, true, 1, null);
        wn.p pVar = (wn.p) roomPostExploreFragment.getMViewBinding();
        if (pVar != null && (recyclerView = pVar.f74519b) != null) {
            recyclerView.scrollToPosition(0);
        }
        roomPostExploreFragment.insertPostId = null;
        return Unit.f64096a;
    }

    private final boolean isLowInteractiveItem(PostSubjectItem item) {
        Long shareCount;
        Long commentCount;
        Long likeCount;
        Stat stat = item.getStat();
        long jLongValue = 0;
        long jLongValue2 = (stat == null || (likeCount = stat.getLikeCount()) == null) ? 0L : likeCount.longValue();
        Stat stat2 = item.getStat();
        long jLongValue3 = jLongValue2 + ((stat2 == null || (commentCount = stat2.getCommentCount()) == null) ? 0L : commentCount.longValue());
        Stat stat3 = item.getStat();
        if (stat3 != null && (shareCount = stat3.getShareCount()) != null) {
            jLongValue = shareCount.longValue();
        }
        return jLongValue3 + jLongValue < 10;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0102  */
    /* JADX WARN: Code duplicated, block: B:55:0x0130 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0184 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x018a A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0190 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01d9 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0200 A[SYNTHETIC] */
    private final void preloadImage(final List<RoomCacheImage> imageList, final PostSubjectBean data) {
        String strE;
        int iC;
        int i10;
        Integer width;
        try {
            Result.Companion companion = Result.INSTANCE;
            final Ref.IntRef intRef = new Ref.IntRef();
            for (RoomCacheImage roomCacheImage : imageList) {
                int type = roomCacheImage.getType();
                RoomImageType roomImageType = RoomImageType.ROOM_IMAGE;
                if (type == roomImageType.getValue()) {
                    strE = ni.f.a.e(ni.f.f67269a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(36), false, true, 4, null);
                } else if (type == RoomImageType.AUTHOR_IMAGE.getValue()) {
                    strE = ni.f.a.e(ni.f.f67269a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(16), false, true, 4, null);
                } else if (type == RoomImageType.POST_SINGLE.getValue()) {
                    ni.f.a aVar = ni.f.f67269a;
                    String url = roomCacheImage.getUrl();
                    Integer width2 = roomCacheImage.getWidth();
                    strE = ni.f.a.e(aVar, url, (width2 != null ? width2.intValue() : 0) > 540 ? com.transsion.usercenter.setting.labelsfeedback.a.b(240) : 540, false, true, 4, null);
                } else {
                    strE = type == RoomImageType.POST_MORE.getValue() ? ni.f.a.e(ni.f.f67269a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(180), false, true, 4, null) : ni.f.a.e(ni.f.f67269a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(240), false, true, 4, null);
                }
                final String str = strE;
                int type2 = roomCacheImage.getType();
                if (type2 == roomImageType.getValue()) {
                    iC = com.transsion.usercenter.setting.labelsfeedback.a.b(36);
                } else if (type2 == RoomImageType.AUTHOR_IMAGE.getValue()) {
                    iC = com.transsion.usercenter.setting.labelsfeedback.a.b(16);
                } else {
                    if (type2 == RoomImageType.POST_SINGLE.getValue()) {
                        Integer width3 = roomCacheImage.getWidth();
                        if ((width3 != null ? width3.intValue() : 0) > 540) {
                            iC = com.transsion.usercenter.setting.labelsfeedback.a.b(240);
                        } else {
                            i10 = 540;
                        }
                    } else if (type2 == RoomImageType.POST_MORE.getValue()) {
                        Integer width4 = roomCacheImage.getWidth();
                        if ((width4 != null ? width4.intValue() : 0) > 540) {
                            iC = com.transsion.usercenter.setting.labelsfeedback.a.b(240);
                        } else {
                            i10 = 540;
                        }
                    } else {
                        iC = ni.f.f67269a.c();
                    }
                    if (roomCacheImage.getType() == roomImageType.getValue()) {
                        ni.f.a aVar2 = ni.f.f67269a;
                        ni.f.a.j(aVar2, ni.f.a.e(aVar2, roomCacheImage.getUrl(), 180, false, true, 4, null), roomCacheImage.getUrl(), 180, null, 8, null);
                        ni.f.a.j(aVar2, ni.f.a.e(aVar2, roomCacheImage.getUrl(), 120, false, true, 4, null), roomCacheImage.getUrl(), 120, null, 8, null);
                    }
                    if (roomCacheImage.getType() != RoomImageType.POST_SINGLE.getValue()) {
                        width = roomCacheImage.getWidth();
                        if ((width != null ? width.intValue() : 0) > 540) {
                            ni.f.a aVar3 = ni.f.f67269a;
                            ni.f.a.j(aVar3, ni.f.a.e(aVar3, roomCacheImage.getUrl(), 540, false, true, 4, null), roomCacheImage.getUrl(), 540, null, 8, null);
                            ni.f.a.j(aVar3, ni.f.a.e(aVar3, roomCacheImage.getUrl(), 360, false, true, 4, null), roomCacheImage.getUrl(), 360, null, 8, null);
                        } else {
                            ni.f.a aVar4 = ni.f.f67269a;
                            ni.f.a.j(aVar4, ni.f.a.e(aVar4, roomCacheImage.getUrl(), 720, false, true, 4, null), roomCacheImage.getUrl(), 720, null, 8, null);
                        }
                    }
                    wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "preload url=" + str, false, 4, null);
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    ni.f.f67269a.i(str, roomCacheImage.getUrl(), i10, new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return RoomPostExploreFragment.preloadImage$lambda$10$lambda$9$lambda$8(intRef, imageList, data, this, jCurrentTimeMillis, str, ((Boolean) obj).booleanValue());
                        }
                    });
                }
                i10 = iC;
                if (roomCacheImage.getType() == roomImageType.getValue()) {
                    ni.f.a aVar5 = ni.f.f67269a;
                    ni.f.a.j(aVar5, ni.f.a.e(aVar5, roomCacheImage.getUrl(), 180, false, true, 4, null), roomCacheImage.getUrl(), 180, null, 8, null);
                    ni.f.a.j(aVar5, ni.f.a.e(aVar5, roomCacheImage.getUrl(), 120, false, true, 4, null), roomCacheImage.getUrl(), 120, null, 8, null);
                }
                if (roomCacheImage.getType() != RoomImageType.POST_SINGLE.getValue()) {
                    width = roomCacheImage.getWidth();
                    if ((width != null ? width.intValue() : 0) > 540) {
                        ni.f.a aVar6 = ni.f.f67269a;
                        ni.f.a.j(aVar6, ni.f.a.e(aVar6, roomCacheImage.getUrl(), 540, false, true, 4, null), roomCacheImage.getUrl(), 540, null, 8, null);
                        ni.f.a.j(aVar6, ni.f.a.e(aVar6, roomCacheImage.getUrl(), 360, false, true, 4, null), roomCacheImage.getUrl(), 360, null, 8, null);
                    } else {
                        ni.f.a aVar7 = ni.f.f67269a;
                        ni.f.a.j(aVar7, ni.f.a.e(aVar7, roomCacheImage.getUrl(), 720, false, true, 4, null), roomCacheImage.getUrl(), 720, null, 8, null);
                    }
                }
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "preload url=" + str, false, 4, null);
                final long jCurrentTimeMillis2 = System.currentTimeMillis();
                ni.f.f67269a.i(str, roomCacheImage.getUrl(), i10, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RoomPostExploreFragment.preloadImage$lambda$10$lambda$9$lambda$8(intRef, imageList, data, this, jCurrentTimeMillis2, str, ((Boolean) obj).booleanValue());
                    }
                });
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final Unit preloadImage$lambda$10$lambda$9$lambda$8(Ref.IntRef intRef, List list, PostSubjectBean postSubjectBean, RoomPostExploreFragment roomPostExploreFragment, long j10, String str, boolean z10) {
        if (z10) {
            int i10 = intRef.element + 1;
            intRef.element = i10;
            if (i10 == list.size()) {
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "count  =" + intRef.element, false, 4, null);
                com.transsion.baselib.report.launch.b.f42221a.b().putString("room_cache_data", com.blankj.utilcode.util.o.j(postSubjectBean));
                RoomHomeCacheEvent roomHomeCacheEvent = new RoomHomeCacheEvent(true);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = RoomHomeCacheEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, roomHomeCacheEvent, 0L);
                roomPostExploreFragment.roomCacheData = postSubjectBean;
                roomPostExploreFragment.updateRoomCacheData(roomPostExploreFragment.getLastVisiblePosition(), postSubjectBean);
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - j10;
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "预加载成功  url=" + str + " duration=" + jCurrentTimeMillis, false, 4, null);
        } else {
            intRef.element++;
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", str + " 预加载失败", false, 4, null);
        }
        return Unit.f64096a;
    }

    private final void trySaveDataCache(boolean isSaveInstance) {
        List<Object> data;
        List<Object> data2;
        List<Object> listSubList;
        String content;
        Group group;
        List<Object> data3;
        List<Object> data4;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
        Integer numValueOf = (mAdapter == null || (data4 = mAdapter.getData()) == null) ? null : Integer.valueOf(data4.size());
        wf.a.C0922a.f(c0922a, tag, "trySaveDataCache," + isSaveInstance + ", size:" + numValueOf + ", curExposurePosition:" + this.curExposurePosition, false, 4, null);
        com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
        if (mAdapter2 == null || (data = mAdapter2.getData()) == null) {
            return;
        }
        int size = data.size();
        int i10 = this.curExposurePosition;
        int i11 = size - i10 < 9 ? size - i10 : 9;
        if (i11 > 0 && size > i11) {
            String tag2 = getTAG();
            int i12 = size - i11;
            com.transsion.postdetail.ui.adapter.f mAdapter3 = getMAdapter();
            wf.a.C0922a.f(c0922a, tag2, "explore-trySaveDataCache, " + i12 + "， " + i11 + ", size:" + ((mAdapter3 == null || (data3 = mAdapter3.getData()) == null) ? null : Integer.valueOf(data3.size())), false, 4, null);
            com.transsion.postdetail.ui.adapter.f mAdapter4 = getMAdapter();
            if (mAdapter4 == null || (data2 = mAdapter4.getData()) == null || (listSubList = data2.subList(i12, size)) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listSubList.iterator();
            while (it.hasNext()) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
                if (!postSubjectItem.getBuiltIn() && !postSubjectItem.isRoomCache() && !isLowInteractiveItem(postSubjectItem)) {
                    arrayList.add(postSubjectItem);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String tag3 = getTAG();
            int size2 = arrayList.size();
            PostSubjectItem postSubjectItem2 = (PostSubjectItem) CollectionsKt.k0(arrayList);
            String name = (postSubjectItem2 == null || (group = postSubjectItem2.getGroup()) == null) ? null : group.getName();
            PostSubjectItem postSubjectItem3 = (PostSubjectItem) CollectionsKt.k0(arrayList);
            if (postSubjectItem3 != null) {
                String title = postSubjectItem3.getTitle();
                content = (title == null || title.length() == 0) ? postSubjectItem3.getContent() : postSubjectItem3.getTitle();
            } else {
                content = null;
            }
            wf.a.C0922a.f(c0922a2, tag3, "explore-trySaveDataCache, " + size2 + "，name:" + name + "，content:" + content, false, 4, null);
            String strJ = com.blankj.utilcode.util.o.j(new PostSubjectBean(arrayList, new Pager(Boolean.TRUE, "1", "", 0, 0), null, null));
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            int i13 = bVar.b().getInt("post_explore_net_cache_code", 0);
            int iHashCode = strJ.hashCode();
            if (i13 == iHashCode) {
                wf.a.C0922a.f(c0922a2, getTAG(), "explore-trySaveDataCache, HashCode same:" + iHashCode, false, 4, null);
                return;
            }
            wf.a.C0922a.f(c0922a2, getTAG(), "explore-SaveDataCache, oldCode:" + i13 + "，newCode:" + iHashCode, false, 4, null);
            bVar.b().putInt("post_explore_net_cache_code", iHashCode);
            bVar.b().putString("post_explore_net_cache", strJ);
        }
    }

    public final void deleteCacheRoom(PostSubjectItem item) {
        List<PostSubjectItem> items;
        PostSubjectBean postSubjectBean;
        List<PostSubjectItem> items2;
        List<PostSubjectItem> items3;
        List<PostSubjectItem> items4;
        List<PostSubjectItem> items5;
        List<PostSubjectItem> items6;
        Intrinsics.h(item, "item");
        PostSubjectBean postSubjectBean2 = this.roomCacheData;
        if (postSubjectBean2 == null || postSubjectBean2 == null || (items = postSubjectBean2.getItems()) == null || items.isEmpty() || (postSubjectBean = this.roomCacheData) == null || (items2 = postSubjectBean.getItems()) == null || !items2.contains(item) || item.isRoomCacheListStart() || item.isRoomCacheListEnd()) {
            return;
        }
        PostSubjectBean postSubjectBean3 = this.roomCacheData;
        if (postSubjectBean3 != null && (items6 = postSubjectBean3.getItems()) != null) {
            items6.remove(item);
        }
        PostSubjectBean postSubjectBean4 = this.roomCacheData;
        if (postSubjectBean4 == null || (items3 = postSubjectBean4.getItems()) == null) {
            return;
        }
        if (items3.size() < 4) {
            wf.a.C0922a.f(wf.a.f74274a, getTAG(), "手动缓存已全部曝光，清除本地手动缓存", false, 4, null);
            com.transsion.baselib.report.launch.b.f42221a.b().putString("room_cache_data", "");
            PostSubjectBean postSubjectBean5 = this.roomCacheData;
            if (postSubjectBean5 == null || (items5 = postSubjectBean5.getItems()) == null) {
                return;
            }
            items5.clear();
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        PostSubjectBean postSubjectBean6 = this.roomCacheData;
        wf.a.C0922a.f(c0922a, tag, "手动缓存已曝光部分，更改手动缓存 剩余：" + ((postSubjectBean6 == null || (items4 = postSubjectBean6.getItems()) == null) ? null : Integer.valueOf(items4.size())), false, 4, null);
        com.transsion.baselib.report.launch.b.f42221a.b().putString("room_cache_data", com.blankj.utilcode.util.o.j(this.roomCacheData));
    }

    public final boolean hasInsertRoomCache() {
        com.transsion.postdetail.ui.adapter.f mAdapter;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
        List<Object> data2 = mAdapter2 != null ? mAdapter2.getData() : null;
        if (data2 == null || data2.isEmpty() || (mAdapter = getMAdapter()) == null || (data = mAdapter.getData()) == null) {
            return false;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            if (((PostSubjectItem) it.next()).isRoomCacheListStart()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarZ;
        androidx.p009lifecycle.b0 b0VarY;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarY = mViewModel.y()) != null) {
            b0VarY.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostExploreFragment.initViewModel$lambda$1(this.f47642a, (PostSubjectBean) obj);
                }
            }));
        }
        RoomPostViewModel mViewModel2 = getMViewModel();
        if (mViewModel2 != null && (b0VarZ = mViewModel2.z()) != null) {
            b0VarZ.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostExploreFragment.initViewModel$lambda$5(this.f47648a, (PostSubjectBean) obj);
                }
            }));
        }
        getTrendingRoomsViewModel().b().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostExploreFragment.initViewModel$lambda$7(this.f47654a, (Pair) obj);
            }
        }));
        setOnNumNotExposureListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void insertRoomCacheData() {
        int cacheFirstIndex;
        RecyclerView recyclerView;
        com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
        RecyclerView.m layoutManager = null;
        List<Object> data = mAdapter != null ? mAdapter.getData() : null;
        if (data != null && !data.isEmpty() && !hasInsertRoomCache()) {
            updateCacheData();
            return;
        }
        if (!hasInsertRoomCache() || (cacheFirstIndex = getCacheFirstIndex()) <= 0) {
            return;
        }
        wn.p pVar = (wn.p) getMViewBinding();
        if (pVar != null && (recyclerView = pVar.f74519b) != null) {
            layoutManager = recyclerView.getLayoutManager();
        }
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(cacheFirstIndex, 0);
        }
    }

    @Override
    public boolean isNeedInsertPublishPost() {
        return true;
    }

    @Override
    public boolean isStaggeredPost() {
        return false;
    }

    @Override
    public boolean isSwipeRefreshEnable() {
        return false;
    }

    @Override
    public void lazyLoadData() {
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "lazyLoadData parentTypeName:" + getMParentTypeName(), false, 4, null);
        super.lazyLoadData();
    }

    @Override
    public void lazyLoadWithoutNet() {
        super.lazyLoadWithoutNet();
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null) {
            mViewModel.S();
        }
        RoomPostViewModel mViewModel2 = getMViewModel();
        if (mViewModel2 != null) {
            mViewModel2.T();
        }
        RoomPostViewModel mViewModel3 = getMViewModel();
        if (mViewModel3 != null) {
            mViewModel3.U();
        }
    }

    @Override
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        Context context = getContext();
        if (context != null) {
            if (isRefresh) {
                androidx.p010savedstate.e parentFragment = getParentFragment();
                if (parentFragment instanceof ep.g) {
                    ((ep.g) parentFragment).G();
                }
            }
            RoomPostViewModel mViewModel = getMViewModel();
            if (mViewModel != null) {
                mViewModel.D(context, isFirstLoad, isRefresh, getMPage(), 8, this.insertPostId);
            }
        }
    }

    public final void loadMoreCacheData(boolean isRefresh) {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0 || isRefresh) {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return;
            }
            RoomPostViewModel mViewModel = getMViewModel();
            if (mViewModel != null) {
                mViewModel.E(false, getMPage(), 30, "");
            }
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.insertPostId = arguments != null ? arguments.getString("post_id") : null;
        Bundle arguments2 = getArguments();
        this.insertPostOps = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        setMParentTypeName(arguments3 != null ? arguments3.getString("parent_type") : null);
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "Explore onCreate mParentTypeName:" + getMParentTypeName(), false, 4, null);
        initRoomCacheData();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        trySaveDataCache(false);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        ep.k kVar;
        String strD;
        super.onHiddenChanged(hidden);
        if (hidden || (strD = (kVar = ep.k.f59780a).d()) == null || strD.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingRoomsViewModel().b();
        String strD2 = kVar.d();
        Intrinsics.e(strD2);
        b0VarB.q(new Pair(strD2, kVar.e()));
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = kVar.g();
            kVar.r(null);
        }
        kVar.o(null);
        kVar.p(null);
    }

    @Override
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override
    public String onItemHeaderModuleName() {
        return "group";
    }

    @Override
    public void onResume() {
        super.onResume();
        ep.k kVar = ep.k.f59780a;
        String strD = kVar.d();
        if (strD == null || strD.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingRoomsViewModel().b();
        String strD2 = kVar.d();
        Intrinsics.e(strD2);
        b0VarB.q(new Pair(strD2, kVar.e()));
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = kVar.g();
            kVar.r(null);
        }
        kVar.o(null);
        kVar.p(null);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        trySaveDataCache(true);
    }

    @Override
    public String pageName() {
        return "room_home";
    }

    @Override
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.DEFAULT;
    }

    @Override
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override
    public int getMTabIndex() {
        return 0;
    }

    public final void updateCacheData() {
        PostSubjectBean postSubjectBean;
        List<PostSubjectItem> items;
        int lastVisiblePosition = getLastVisiblePosition();
        if (lastVisiblePosition <= 0 || (postSubjectBean = this.roomCacheData) == null || (items = postSubjectBean.getItems()) == null) {
            return;
        }
        int i10 = lastVisiblePosition + 1;
        com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
        if (i10 < (mAdapter != null ? mAdapter.getItemCount() : 0)) {
            com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
            if (mAdapter2 != null) {
                mAdapter2.o(i10, items);
                return;
            }
            return;
        }
        com.transsion.postdetail.ui.adapter.f mAdapter3 = getMAdapter();
        if (mAdapter3 != null) {
            mAdapter3.o(lastVisiblePosition, items);
        }
    }
}
