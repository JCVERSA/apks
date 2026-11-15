package com.transsion.home.fragment.hashtag;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.home.R$id;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.hashtag.HashTagViewModel;
import com.transsion.home.hashtag.model.HashTagItem;
import com.transsion.home.hashtag.model.HashTagItemType;
import com.transsion.home.view.layoutmanager.OffsetGridLayoutManager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import qk.o;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u0000 P2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#'B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J+\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00103\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00101R\u0016\u00107\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00101R\u0016\u0010:\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R$\u0010F\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010HR\u0016\u0010O\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010=¨\u0006Q"}, d2 = {"Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqk/o;", "<init>", "()V", "", "z0", "showLoadingView", "v0", "G0", "J0", "u0", "r0", "L0", "", "tabId", "", "loadDuration", "ops", "E0", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lqk/o;", "lazyLoadData", "onResume", "onPause", "Lcom/transsion/home/adapter/hashtag/a;", "a", "Lcom/transsion/home/adapter/hashtag/a;", "adapter", "Lcom/transsion/home/hashtag/HashTagViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "t0", "()Lcom/transsion/home/hashtag/HashTagViewModel;", "viewModel", "", "c", "I", "spanCount", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "fromOptId", "f", "ugcVideoId", "g", "hashtagTitle", "h", "J", "firstLoadStartTimeMillis", "", "i", "Z", "hasRecordedFirstLoadDuration", "Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;", "j", "Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;", "getLoadDurationCallback", "()Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;", "F0", "(Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;)V", "loadDurationCallback", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "skeletonScreenView", "l", "mNoNetworkView", "m", "mNoResultView", "n", "tagsFullyInvisible", "o", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HashTagPageFragment extends BaseFragment<o> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f43861p = 8;

    private com.transsion.home.adapter.hashtag.a adapter;

    private String ugcVideoId;

    private long firstLoadStartTimeMillis;

    private boolean hasRecordedFirstLoadDuration;

    private b loadDurationCallback;

    private View skeletonScreenView;

    private View mNoNetworkView;

    private View mNoResultView;

    private boolean tagsFullyInvisible;

    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(HashTagViewModel.class), new Function0<x0>() {
        {
            super(0);
        }

        @Override
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() {
        {
            super(0);
        }

        @Override
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private int spanCount = 2;

    private String tabId = "";

    private String fromOptId = "";

    private String hashtagTitle = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HashTagPageFragment a(String tabId, String str, String hashtagTitle, String str2) {
            Intrinsics.h(tabId, "tabId");
            Intrinsics.h(hashtagTitle, "hashtagTitle");
            HashTagPageFragment hashTagPageFragment = new HashTagPageFragment();
            Bundle bundle = new Bundle();
            bundle.putString("arg_tab_id", tabId);
            bundle.putString("ugc_video_id", str2);
            bundle.putString("fromOptId", str);
            bundle.putString("hashtag_title", hashtagTitle);
            hashTagPageFragment.setArguments(bundle);
            return hashTagPageFragment;
        }

        private Companion() {
        }
    }

    public interface b {
        void a(String str, Long l10, String str2);
    }

    public static final class c implements rk.a {
        c() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            int size;
            HashTagItem hashTagItem;
            UGCVideo ugcVideo;
            Collection collectionL;
            String collectionId;
            com.transsion.home.adapter.hashtag.a aVar = HashTagPageFragment.this.adapter;
            if (aVar != null && (size = aVar.getData().size()) > 0) {
                int i11 = aVar.getItemViewType(0) == HashTagItemType.TAGS.ordinal() ? 1 : 0;
                int i12 = i10 - i11;
                if (i12 < 0 || i12 >= size - i11 || (hashTagItem = (HashTagItem) CollectionsKt.l0(aVar.getData(), i12)) == null || (ugcVideo = hashTagItem.getUgcVideo()) == null) {
                    return;
                }
                HashMap map = new HashMap();
                map.put("browse_duration", String.valueOf(j10));
                map.put("module_name", WebConstants.FIELD_ITEM);
                HashTagItem hashTagItem2 = (HashTagItem) CollectionsKt.k0(aVar.getData());
                List<UGCVideoHashTag> selectedTags = hashTagItem2 != null ? hashTagItem2.getSelectedTags() : null;
                if (selectedTags != null) {
                    collectionL = new ArrayList();
                    Iterator<T> it = selectedTags.iterator();
                    while (it.hasNext()) {
                        String tag = ((UGCVideoHashTag) it.next()).getTag();
                        if (tag != null) {
                            collectionL.add(tag);
                        }
                    }
                } else {
                    collectionL = CollectionsKt.l();
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("sort", HashTagPageFragment.this.tabId);
                linkedHashMap.put("selected_tags", collectionL);
                map.put("rank_category", com.blankj.utilcode.util.o.j(linkedHashMap));
                map.put("from_opt_id", HashTagPageFragment.this.fromOptId);
                map.put(CampaignEx.JSON_KEY_TITLE, HashTagPageFragment.this.hashtagTitle);
                UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
                if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                    collectionId = "";
                }
                map.put("belong_to_collection_id", collectionId);
                map.put("content_id", String.valueOf(ugcVideo.getUgcVideoId()));
                map.put("refer_subject_id", String.valueOf(ugcVideo.getSubjectId()));
                map.put("content_type", "ugc_video");
                map.put(RequestParameters.POSITION, String.valueOf(i12));
                map.put("ops", String.valueOf(ugcVideo.getOps()));
                com.transsion.baselib.helper.a.f42121a.e("/home/hashtag", map);
            }
        }
    }

    public static final class d implements com.transsion.home.adapter.hashtag.a.InterfaceC0596a {
        d() {
        }

        @Override
        public void a(UGCVideo uGCVideo, int i10) {
            String collectionId;
            Intrinsics.h(uGCVideo, "uGCVideo");
            gu.c.i(uGCVideo, null, null, 3, null);
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("rank_category", WebConstants.FIELD_ITEM);
            map.put("from_opt_id", HashTagPageFragment.this.fromOptId);
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            String subjectId = uGCVideo.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            String ops = uGCVideo.getOps();
            map.put("ops", ops != null ? ops : "");
            com.transsion.baselib.helper.a.f42121a.f("/home/hashtag", map);
        }

        @Override
        public void b(UGCVideoHashTag tag) {
            List<Object> data;
            HashTagItem hashTagItem;
            UGCVideo ugcVideo;
            String ops;
            Intrinsics.h(tag, "tag");
            HashTagPageFragment.this.t0().x(tag);
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("rank_category", "btn");
            map.put("from_opt_id", HashTagPageFragment.this.fromOptId);
            String tag2 = tag.getTag();
            String str = "";
            if (tag2 == null) {
                tag2 = "";
            }
            map.put("click_tag", tag2);
            String tagType = tag.getTagType();
            if (tagType == null) {
                tagType = "";
            }
            map.put("click_tag_type", tagType);
            com.transsion.home.adapter.hashtag.a aVar = HashTagPageFragment.this.adapter;
            if (aVar != null && (data = aVar.getData()) != null && (hashTagItem = (HashTagItem) CollectionsKt.k0(data)) != null && (ugcVideo = hashTagItem.getUgcVideo()) != null && (ops = ugcVideo.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            com.transsion.baselib.helper.a.f42121a.f("/home/hashtag", map);
        }
    }

    public static final class e extends RecyclerView.r {
        e() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
            HashTagPageFragment.this.r0();
        }
    }

    public static final class f extends GridLayoutManager.c {

        final RecyclerView f43879e;

        f(RecyclerView recyclerView) {
            this.f43879e = recyclerView;
        }

        @Override
        public int f(int i10) {
            RecyclerView.Adapter adapter = this.f43879e.getAdapter();
            Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemViewType(i10)) : null;
            return (numValueOf != null && numValueOf.intValue() == HashTagItemType.TAGS.ordinal()) ? 2 : 1;
        }
    }

    public static final Unit A0(final HashTagPageFragment hashTagPageFragment, RefreshBaseDto refreshBaseDto) {
        t6.f fVarH0;
        o mViewBinding;
        RecyclerView recyclerView;
        com.transsion.home.adapter.hashtag.a aVar;
        t6.f fVarH1;
        Long lValueOf;
        String ops;
        RecyclerView recyclerView2;
        UGCVideo ugcVideo;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        o mViewBinding2;
        SwipeRefreshLayout swipeRefreshLayout2;
        t6.f fVarH2;
        com.transsion.home.adapter.hashtag.a aVar2;
        t6.f fVarH3;
        List<Object> data2;
        SwipeRefreshLayout swipeRefreshLayout3;
        o mViewBinding3;
        SwipeRefreshLayout swipeRefreshLayout4;
        SwipeRefreshLayout swipeRefreshLayout5;
        List list;
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "observe data: filterId=" + hashTagPageFragment.tabId + ", isRefresh=" + (refreshBaseDto != null ? Boolean.valueOf(refreshBaseDto.getIsRefresh()) : null) + ", dataSize=" + ((refreshBaseDto == null || (list = (List) refreshBaseDto.getData()) == null) ? null : Integer.valueOf(list.size())) + ", code=" + (refreshBaseDto != null ? refreshBaseDto.getCode() : null), false, 4, null);
        o mViewBinding4 = hashTagPageFragment.getMViewBinding();
        if (mViewBinding4 != null && (swipeRefreshLayout5 = mViewBinding4.f69811f) != null) {
            swipeRefreshLayout5.setRefreshing(false);
        }
        if (refreshBaseDto == null) {
            return Unit.f64096a;
        }
        if (!Intrinsics.c(refreshBaseDto.getCode(), "0")) {
            if (refreshBaseDto.getIsRefresh()) {
                o mViewBinding5 = hashTagPageFragment.getMViewBinding();
                if (mViewBinding5 != null && (swipeRefreshLayout3 = mViewBinding5.f69811f) != null && swipeRefreshLayout3.isRefreshing() && (mViewBinding3 = hashTagPageFragment.getMViewBinding()) != null && (swipeRefreshLayout4 = mViewBinding3.f69811f) != null) {
                    swipeRefreshLayout4.setRefreshing(false);
                }
            } else {
                com.transsion.home.adapter.hashtag.a aVar3 = hashTagPageFragment.adapter;
                if (aVar3 != null && (fVarH2 = aVar3.h0()) != null && fVarH2.r() && (aVar2 = hashTagPageFragment.adapter) != null && (fVarH3 = aVar2.h0()) != null) {
                    fVarH3.v();
                }
            }
            com.transsion.home.adapter.hashtag.a aVar4 = hashTagPageFragment.adapter;
            if (aVar4 == null || (data2 = aVar4.getData()) == null || data2.size() != 0) {
                if (yg.l.f76264a.e()) {
                    fh.b.f60176a.d(R$string.str_ad_video_error_tips);
                } else {
                    fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
                }
                return Unit.f64096a;
            }
            if (yg.l.f76264a.e()) {
                hashTagPageFragment.J0();
            } else {
                hashTagPageFragment.G0();
            }
            return Unit.f64096a;
        }
        List list2 = (List) refreshBaseDto.getData();
        if (list2 != null) {
            if (refreshBaseDto.getIsRefresh()) {
                o mViewBinding6 = hashTagPageFragment.getMViewBinding();
                if (mViewBinding6 != null && (swipeRefreshLayout = mViewBinding6.f69811f) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding2 = hashTagPageFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding2.f69811f) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                com.transsion.home.adapter.hashtag.a aVar5 = hashTagPageFragment.adapter;
                if (aVar5 == null || (data = aVar5.getData()) == null || !data.isEmpty() || hashTagPageFragment.hasRecordedFirstLoadDuration || hashTagPageFragment.firstLoadStartTimeMillis <= 0) {
                    lValueOf = null;
                } else {
                    lValueOf = Long.valueOf(System.currentTimeMillis() - hashTagPageFragment.firstLoadStartTimeMillis);
                    hashTagPageFragment.hasRecordedFirstLoadDuration = true;
                }
                String str = hashTagPageFragment.tabId;
                HashTagItem hashTagItem = (HashTagItem) CollectionsKt.k0(list2);
                if (hashTagItem == null || (ugcVideo = hashTagItem.getUgcVideo()) == null || (ops = ugcVideo.getOps()) == null) {
                    ops = "";
                }
                hashTagPageFragment.E0(str, lValueOf, ops);
                com.transsion.home.adapter.hashtag.a aVar6 = hashTagPageFragment.adapter;
                if (aVar6 != null) {
                    aVar6.n1(list2);
                }
                if (list2.isEmpty()) {
                    hashTagPageFragment.J0();
                } else {
                    hashTagPageFragment.u0();
                }
                o mViewBinding7 = hashTagPageFragment.getMViewBinding();
                if (mViewBinding7 != null && (recyclerView2 = mViewBinding7.f69810e) != null) {
                    recyclerView2.post(new Runnable() {
                        @Override
                        public final void run() {
                            HashTagPageFragment.B0(this.f43911a);
                        }
                    });
                }
            } else {
                List list3 = list2;
                if (!list3.isEmpty()) {
                    com.transsion.home.adapter.hashtag.a aVar7 = hashTagPageFragment.adapter;
                    if (aVar7 != null) {
                        aVar7.q(list3);
                    }
                    hashTagPageFragment.u0();
                }
                com.transsion.home.adapter.hashtag.a aVar8 = hashTagPageFragment.adapter;
                if (aVar8 != null && (fVarH0 = aVar8.h0()) != null && fVarH0.r() && (mViewBinding = hashTagPageFragment.getMViewBinding()) != null && (recyclerView = mViewBinding.f69810e) != null) {
                    recyclerView.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            HashTagPageFragment.C0(this.f43912a);
                        }
                    }, 300L);
                }
            }
            if (!hashTagPageFragment.t0().q(hashTagPageFragment.tabId) && (aVar = hashTagPageFragment.adapter) != null && (fVarH1 = aVar.h0()) != null) {
                t6.f.u(fVarH1, false, 1, null);
            }
        }
        return Unit.f64096a;
    }

    public static final void B0(HashTagPageFragment hashTagPageFragment) {
        hashTagPageFragment.r0();
    }

    public static final void C0(HashTagPageFragment hashTagPageFragment) {
        t6.f fVarH0;
        com.transsion.home.adapter.hashtag.a aVar = hashTagPageFragment.adapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    public static final Unit D0(HashTagPageFragment hashTagPageFragment, Boolean bool) {
        if (Intrinsics.c(bool, Boolean.TRUE)) {
            hashTagPageFragment.showLoadingView();
        } else {
            hashTagPageFragment.v0();
        }
        return Unit.f64096a;
    }

    private final void E0(String tabId, Long loadDuration, String ops) {
        b bVar = this.loadDurationCallback;
        if (bVar != null) {
            bVar.a(tabId, loadDuration, ops);
        }
    }

    private final void G0() {
        ViewStub viewStub;
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "showNoNetworkView", false, 4, null);
        if (this.mNoNetworkView == null) {
            o mViewBinding = getMViewBinding();
            this.mNoNetworkView = (mViewBinding == null || (viewStub = mViewBinding.f69808c) == null) ? null : viewStub.inflate();
        }
        View view = this.mNoNetworkView;
        if (view != null) {
            uf.c.k(view);
            final NoNetworkBigView noNetworkBigView = (NoNetworkBigView) view.findViewById(R$id.state_view);
            if (noNetworkBigView != null) {
                NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
                noNetworkBigView.retry(new Function0() {
                    @Override
                    public final Object invoke() {
                        return HashTagPageFragment.H0(noNetworkBigView, this);
                    }
                });
                noNetworkBigView.goToSetting(new Function0() {
                    @Override
                    public final Object invoke() {
                        return HashTagPageFragment.I0();
                    }
                });
            }
            com.tn.lib.view.o.a("home_hashtag_page");
        }
        View view2 = this.skeletonScreenView;
        if (view2 != null) {
            uf.c.g(view2);
        }
        View view3 = this.mNoResultView;
        if (view3 != null) {
            uf.c.g(view3);
        }
    }

    public static final Unit H0(NoNetworkBigView noNetworkBigView, HashTagPageFragment hashTagPageFragment) {
        uf.c.g(noNetworkBigView);
        hashTagPageFragment.t0().A(hashTagPageFragment.tabId);
        com.tn.lib.view.o.b("home_hashtag_page");
        return Unit.f64096a;
    }

    public static final Unit I0() {
        com.tn.lib.view.o.c("home_hashtag_page");
        return Unit.f64096a;
    }

    private final void J0() {
        ViewStub viewStub;
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "showNoResultView", false, 4, null);
        if (this.mNoResultView == null) {
            o mViewBinding = getMViewBinding();
            this.mNoResultView = (mViewBinding == null || (viewStub = mViewBinding.f69809d) == null) ? null : viewStub.inflate();
        }
        final View view = this.mNoResultView;
        if (view != null) {
            uf.c.k(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_no_result);
            if (textView != null) {
                textView.setText(getString(com.transsion.home.R$string.no_filter_result));
            }
            View viewFindViewById = view.findViewById(R$id.tv_reset);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        HashTagPageFragment.K0(view, this, view2);
                    }
                });
            }
        }
        View view2 = this.skeletonScreenView;
        if (view2 != null) {
            uf.c.g(view2);
        }
        View view3 = this.mNoNetworkView;
        if (view3 != null) {
            uf.c.g(view3);
        }
    }

    public static final void K0(View view, HashTagPageFragment hashTagPageFragment, View view2) {
        uf.c.g(view);
        hashTagPageFragment.t0().A(hashTagPageFragment.tabId);
    }

    private final void L0() {
        TnTextView tnTextView;
        TnTextView tnTextView2;
        com.transsion.home.adapter.hashtag.a aVar = this.adapter;
        if (aVar == null || aVar.getData().isEmpty() || aVar.getItemViewType(0) != HashTagItemType.TAGS.ordinal()) {
            return;
        }
        HashTagItem hashTagItem = (HashTagItem) CollectionsKt.k0(aVar.getData());
        List<UGCVideoHashTag> selectedTags = hashTagItem != null ? hashTagItem.getSelectedTags() : null;
        List<UGCVideoHashTag> list = selectedTags;
        if (list == null || list.isEmpty()) {
            o mViewBinding = getMViewBinding();
            if (mViewBinding == null || (tnTextView = mViewBinding.f69812g) == null) {
                return;
            }
            uf.c.g(tnTextView);
            return;
        }
        String strS0 = CollectionsKt.s0(selectedTags, " · ", null, null, 0, null, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HashTagPageFragment.M0((UGCVideoHashTag) obj);
            }
        }, 30, null);
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "showSelectedTagsBar: tagsText=" + strS0, false, 4, null);
        o mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (tnTextView2 = mViewBinding2.f69812g) == null) {
            return;
        }
        tnTextView2.setText(strS0);
        uf.c.k(tnTextView2);
    }

    public static final CharSequence M0(UGCVideoHashTag it) {
        Intrinsics.h(it, "it");
        String title = it.getTitle();
        if (title != null) {
            return title;
        }
        String tag = it.getTag();
        return tag != null ? tag : "";
    }

    public final void r0() {
        com.transsion.home.adapter.hashtag.a aVar;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        RecyclerView recyclerView;
        o mViewBinding = getMViewBinding();
        RecyclerView.m layoutManager = (mViewBinding == null || (recyclerView = mViewBinding.f69810e) == null) ? null : recyclerView.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager == null || (aVar = this.adapter) == null) {
            return;
        }
        if (aVar.getData().isEmpty() || aVar.getItemViewType(0) != HashTagItemType.TAGS.ordinal()) {
            o mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (tnTextView = mViewBinding2.f69812g) != null) {
                uf.c.g(tnTextView);
            }
            this.tagsFullyInvisible = false;
            return;
        }
        boolean z10 = gridLayoutManager.findFirstVisibleItemPosition() > 0;
        if (z10 != this.tagsFullyInvisible) {
            this.tagsFullyInvisible = z10;
            if (z10) {
                L0();
                return;
            }
            o mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (tnTextView2 = mViewBinding3.f69812g) == null) {
                return;
            }
            uf.c.g(tnTextView2);
        }
    }

    private final void showLoadingView() {
        List<Object> data;
        View view;
        ViewStub viewStub;
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "showLoadingView", false, 4, null);
        if (this.skeletonScreenView == null) {
            o mViewBinding = getMViewBinding();
            this.skeletonScreenView = (mViewBinding == null || (viewStub = mViewBinding.f69807b) == null) ? null : viewStub.inflate();
        }
        com.transsion.home.adapter.hashtag.a aVar = this.adapter;
        if (aVar != null && (data = aVar.getData()) != null && data.isEmpty() && (view = this.skeletonScreenView) != null) {
            uf.c.k(view);
        }
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        View view2 = this.mNoNetworkView;
        if (view2 != null) {
            uf.c.g(view2);
        }
        View view3 = this.mNoResultView;
        if (view3 != null) {
            uf.c.g(view3);
        }
        View view4 = this.mNoResultView;
        if (view4 != null) {
            uf.c.g(view4);
        }
    }

    public final HashTagViewModel t0() {
        return (HashTagViewModel) this.viewModel.getValue();
    }

    private final void u0() {
        View view = this.skeletonScreenView;
        if (view != null) {
            uf.c.g(view);
        }
        View view2 = this.mNoNetworkView;
        if (view2 != null) {
            uf.c.g(view2);
        }
        View view3 = this.mNoResultView;
        if (view3 != null) {
            uf.c.g(view3);
        }
    }

    private final void v0() {
        View view = this.skeletonScreenView;
        if (view != null) {
            uf.c.g(view);
        }
    }

    public static final void w0(final HashTagPageFragment hashTagPageFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            hashTagPageFragment.t0().u(hashTagPageFragment.tabId);
            return;
        }
        fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
        o mViewBinding = hashTagPageFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69810e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                HashTagPageFragment.x0(this.f43910a);
            }
        }, 500L);
    }

    public static final void x0(HashTagPageFragment hashTagPageFragment) {
        t6.f fVarH0;
        com.transsion.home.adapter.hashtag.a aVar = hashTagPageFragment.adapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void y0(HashTagPageFragment hashTagPageFragment) {
        hashTagPageFragment.u0();
        rk.b bVar = m.f43915a;
        if (bVar != null) {
            bVar.e();
        }
        hashTagPageFragment.t0().A(hashTagPageFragment.tabId);
    }

    private final void z0() {
        t0().s(this.tabId).j(getViewLifecycleOwner(), new m.a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HashTagPageFragment.A0(this.f43908a, (RefreshBaseDto) obj);
            }
        }));
        t0().v(this.tabId).j(getViewLifecycleOwner(), new m.a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HashTagPageFragment.D0(this.f43909a, (Boolean) obj);
            }
        }));
    }

    public final void F0(b bVar) {
        this.loadDurationCallback = bVar;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        String string;
        String string2;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        RecyclerView recyclerView;
        t6.f fVarH0;
        t6.f fVarH1;
        t6.f fVarH2;
        String string3;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("arg_tab_id")) == null) {
            string = "";
        }
        this.tabId = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("fromOptId")) == null) {
            string2 = "";
        }
        this.fromOptId = string2;
        Bundle arguments3 = getArguments();
        this.ugcVideoId = arguments3 != null ? arguments3.getString("ugc_video_id") : null;
        Bundle arguments4 = getArguments();
        if (arguments4 != null && (string3 = arguments4.getString("hashtag_title")) != null) {
            str = string3;
        }
        this.hashtagTitle = str;
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "initView: filterId=" + this.tabId, false, 4, null);
        o mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f69810e) != null) {
            OffsetGridLayoutManager offsetGridLayoutManager = new OffsetGridLayoutManager(recyclerView.getContext(), this.spanCount, 1, false);
            offsetGridLayoutManager.d0(new f(recyclerView));
            recyclerView.setLayoutManager(offsetGridLayoutManager);
            rk.b bVar = new rk.b(0.6f, new c(), false, 4, null);
            bVar.l(2);
            m.f43915a = bVar;
            rk.b bVar2 = m.f43915a;
            Intrinsics.e(bVar2);
            recyclerView.addOnScrollListener(bVar2);
            com.transsion.home.adapter.hashtag.a aVar = new com.transsion.home.adapter.hashtag.a(new d(), m.f43915a);
            this.adapter = aVar;
            recyclerView.setAdapter(aVar);
            com.transsion.home.adapter.hashtag.a aVar2 = this.adapter;
            if (aVar2 != null && (fVarH2 = aVar2.h0()) != null) {
                fVarH2.z(true);
            }
            com.transsion.home.adapter.hashtag.a aVar3 = this.adapter;
            if (aVar3 != null && (fVarH1 = aVar3.h0()) != null) {
                fVarH1.y(true);
            }
            com.transsion.home.adapter.hashtag.a aVar4 = this.adapter;
            if (aVar4 != null && (fVarH0 = aVar4.h0()) != null) {
                fVarH0.D(new r6.f() {
                    @Override
                    public final void a() {
                        HashTagPageFragment.w0(this.f43904a);
                    }
                });
            }
            if (recyclerView.getItemDecorationCount() < 1) {
                recyclerView.addItemDecoration(new a(a0.a(0.0f), a0.a(4.0f), a0.a(8.0f), a0.a(8.0f)));
            }
            recyclerView.addOnScrollListener(new e());
        }
        o mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout2 = mViewBinding2.f69811f) != null) {
            swipeRefreshLayout2.setEnabled(true);
        }
        o mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (swipeRefreshLayout = mViewBinding3.f69811f) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    HashTagPageFragment.y0(this.f43907a);
                }
            });
        }
        z0();
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onPause() {
        super.onPause();
        rk.b bVar = m.f43915a;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    public void onResume() {
        com.transsion.home.adapter.hashtag.a aVar;
        List<Object> data;
        super.onResume();
        View view = this.mNoNetworkView;
        if (view == null || !uf.c.i(view) || !yg.l.f76264a.e() || (aVar = this.adapter) == null || (data = aVar.getData()) == null || !data.isEmpty()) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "HashTagPageFragment", "onResume: network recovered, auto refresh", false, 4, null);
        View view2 = this.mNoNetworkView;
        if (view2 != null) {
            uf.c.g(view2);
        }
        t0().A(this.tabId);
    }

    @Override
    public o getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        o oVarC = o.c(inflater);
        Intrinsics.g(oVarC, "inflate(...)");
        return oVarC;
    }
}
