package com.transsion.home.adapter.trending.provider;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.noober.background.view.BLConstraintLayout;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.exposure.ExposureType;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.viewmodel.TrendingViewModel;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public final class RoomProvider extends BaseItemProvider {

    public static final a f43500p = new a(null);

    public static final int f43501q = 8;

    private static final String f43502r = "TrendingRoom";

    private static final String f43503s = "Trending";

    private static final String f43504t = "room_home_recommend";

    private static final ConfigBean f43505u = cm.f.f17019c.a().c("room_entrance_enable", true);

    private final BaseHomeSubFragment f43506e;

    private final TrendingViewModel f43507f;

    private final Lazy f43508g;

    private bj.b f43509h;

    private bj.b f43510i;

    private final String f43511j;

    private final Lazy f43512k;

    private final e f43513l;

    private final d f43514m;

    private final Lazy f43515n;

    private final Lazy f43516o;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u000f\u0010B\u001b\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\r\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "", "pageFrom", "Lep/l;", "trendingRoomsViewModel", "<init>", "(Ljava/lang/String;Lep/l;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "PostItemProvider", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PostAdapter extends BaseProviderMultiAdapter<PostSubjectItem> {
        public static final int G = 8;

        public static final class PostItemProvider extends BaseItemProvider {

            private final String f43517e;

            private final ep.l f43518f;

            private final int f43519g;

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lqk/d0;", "viewBinding", "<init>", "(Lqk/d0;)V", "a", "Lqk/d0;", "f", "()Lqk/d0;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            public static final class PostItemVH extends BaseViewHolder {

                private final qk.d0 viewBinding;

                /* JADX WARN: Illegal instructions before constructor call */
                public PostItemVH(qk.d0 viewBinding) {
                    Intrinsics.h(viewBinding, "viewBinding");
                    BLConstraintLayout root = viewBinding.getRoot();
                    Intrinsics.g(root, "getRoot(...)");
                    super(root);
                    this.viewBinding = viewBinding;
                }

                public final qk.d0 getViewBinding() {
                    return this.viewBinding;
                }
            }

            public PostItemProvider(String str, ep.l trendingRoomsViewModel) {
                Intrinsics.h(trendingRoomsViewModel, "trendingRoomsViewModel");
                this.f43517e = str;
                this.f43518f = trendingRoomsViewModel;
                this.f43519g = lj.a.b(112);
            }

            public static final void B(PostItemProvider postItemProvider, PostSubjectItem postSubjectItem, PostItemVH postItemVH, View view) {
                postItemProvider.E(postSubjectItem, postItemVH.getAdapterPosition());
            }

            public static final void C(PostSubjectItem postSubjectItem, View view) {
                Group group = postSubjectItem.getGroup();
                Navigator.x(TheRouter.c("/room/detail").K("id", group != null ? group.getGroupId() : null).z("need_start_room_home", false), view.getContext(), null, 2, null);
                com.transsion.room.helper.l.f49624a.c(RoomProvider.f43503s, RoomProvider.f43504t, postSubjectItem);
            }

            private final void E(PostSubjectItem postSubjectItem, int i10) {
                com.transsion.postdetail.helper.a.f46861a.x(this.f43517e, RoomProvider.f43503s, "", i10, WebConstants.FIELD_ITEM, postSubjectItem, (64 & 64) != 0 ? null : null);
                ep.k.k(ep.k.f59780a, postSubjectItem, postSubjectItem.getOps(), RoomProvider.f43503s, false, 8, null);
            }

            @Override
            public void b(BaseViewHolder helper, final PostSubjectItem item) {
                String title;
                Pair pair;
                String url;
                FirstFrame firstFrame;
                String thumbnail;
                Cover cover;
                Cover cover2;
                String avatar;
                CharSequence charSequence;
                List<Image> image;
                Image image2;
                List<Image> image3;
                Image image4;
                Intrinsics.h(helper, "helper");
                Intrinsics.h(item, "item");
                final PostItemVH postItemVH = (PostItemVH) helper;
                postItemVH.itemView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        RoomProvider.PostAdapter.PostItemProvider.B(this.f43637a, item, postItemVH, view);
                    }
                });
                String content = item.getContent();
                String str = "";
                if (content == null || content.length() == 0) {
                    title = item.getTitle();
                    if (title == null) {
                        title = "";
                    }
                } else {
                    title = item.getContent();
                }
                TnTextView tvTitle = postItemVH.getViewBinding().f69718g;
                Intrinsics.g(tvTitle, "tvTitle");
                tvTitle.setVisibility(title != null && title.length() > 0 ? 0 : 8);
                postItemVH.getViewBinding().f69718g.setText(title);
                AppCompatImageView ivVideoPlay = postItemVH.getViewBinding().f69716e;
                Intrinsics.g(ivVideoPlay, "ivVideoPlay");
                Media media = item.getMedia();
                String mediaType = media != null ? media.getMediaType() : null;
                MediaType mediaType2 = MediaType.VIDEO;
                ivVideoPlay.setVisibility(Intrinsics.c(mediaType, mediaType2.getValue()) ? 0 : 8);
                Media media2 = item.getMedia();
                String mediaType3 = media2 != null ? media2.getMediaType() : null;
                if (Intrinsics.c(mediaType3, MediaType.IMAGE.getValue())) {
                    Media media3 = item.getMedia();
                    String url2 = (media3 == null || (image3 = media3.getImage()) == null || (image4 = (Image) CollectionsKt.k0(image3)) == null) ? null : image4.getUrl();
                    Media media4 = item.getMedia();
                    pair = new Pair(url2, (media4 == null || (image = media4.getImage()) == null || (image2 = (Image) CollectionsKt.k0(image)) == null) ? null : image2.getThumbnail());
                } else if (Intrinsics.c(mediaType3, mediaType2.getValue())) {
                    Media media5 = item.getMedia();
                    if (media5 == null || (cover2 = media5.getCover()) == null || (url = cover2.getUrl()) == null) {
                        Media media6 = item.getMedia();
                        url = (media6 == null || (firstFrame = media6.getFirstFrame()) == null) ? null : firstFrame.getUrl();
                    }
                    Media media7 = item.getMedia();
                    if (media7 == null || (cover = media7.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                        thumbnail = "";
                    }
                    pair = new Pair(url, thumbnail);
                } else {
                    pair = null;
                }
                if (pair == null || (charSequence = (CharSequence) pair.getFirst()) == null || charSequence.length() == 0) {
                    ShapeableImageView ivCover = postItemVH.getViewBinding().f69714c;
                    Intrinsics.g(ivCover, "ivCover");
                    uf.c.g(ivCover);
                } else {
                    ShapeableImageView ivCover2 = postItemVH.getViewBinding().f69714c;
                    Intrinsics.g(ivCover2, "ivCover");
                    uf.c.k(ivCover2);
                    ni.f.b bVarM = ni.f.f67269a.m(k());
                    Object first = pair.getFirst();
                    Intrinsics.e(first);
                    ni.f.b bVarG = bVarM.g((String) first);
                    String str2 = (String) pair.getSecond();
                    if (str2 == null) {
                        str2 = "";
                    }
                    ni.f.b bVarL = bVarG.l(str2);
                    ShapeableImageView ivCover3 = postItemVH.getViewBinding().f69714c;
                    Intrinsics.g(ivCover3, "ivCover");
                    bVarL.d(ivCover3);
                }
                a aVar = RoomProvider.f43500p;
                if (!aVar.a()) {
                    TnTextView tnTextView = postItemVH.getViewBinding().f69717f;
                    Group group = item.getGroup();
                    tnTextView.setText(group != null ? group.getName() : null);
                    ni.f.b bVarM2 = ni.f.f67269a.m(k());
                    Group group2 = item.getGroup();
                    if (group2 != null && (avatar = group2.getAvatar()) != null) {
                        str = avatar;
                    }
                    ni.f.b bVarC = bVarM2.g(str).m(lj.a.b(24)).c(lj.a.b(24));
                    ShapeableImageView ivRoomCover = postItemVH.getViewBinding().f69715d;
                    Intrinsics.g(ivRoomCover, "ivRoomCover");
                    bVarC.d(ivRoomCover);
                    postItemVH.getViewBinding().f69719h.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            RoomProvider.PostAdapter.PostItemProvider.C(item, view);
                        }
                    });
                }
                postItemVH.getViewBinding().f69713b.setVisibility(aVar.a() ? 8 : 0);
                postItemVH.getViewBinding().getRoot().getLayoutParams().height = lj.a.b(aVar.a() ? 182 : Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE);
            }

            @Override
            public PostItemVH r(ViewGroup parent, int i10) {
                Intrinsics.h(parent, "parent");
                qk.d0 d0VarC = qk.d0.c(LayoutInflater.from(k()), parent, false);
                Intrinsics.g(d0VarC, "inflate(...)");
                return new PostItemVH(d0VarC);
            }

            @Override
            public int l() {
                return 1;
            }

            @Override
            public int m() {
                return R$layout.item_adapter_room_entrance_post;
            }
        }

        public static final class a extends BaseItemProvider {

            private final String f43521e;

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public static final void A(a aVar, BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem, View view) {
                com.transsion.postdetail.helper.a.f46861a.x(aVar.f43521e, RoomProvider.f43503s, "", baseViewHolder.getBindingAdapterPosition(), WebConstants.FIELD_ITEM, postSubjectItem, (64 & 64) != 0 ? null : null);
                qi.h.f69682a.o(RoomProvider.f43503s, MapsKt.m(TuplesKt.a(WebConstants.PAGE_FROM, aVar.f43521e), TuplesKt.a("module_name", "item_post_more")));
                ep.k.i(ep.k.f59780a, null, null, RoomProvider.f43503s, false, 11, null);
            }

            @Override
            public int l() {
                return 2;
            }

            @Override
            public int m() {
                return R$layout.item_adapter_room_entrance_post_more;
            }

            @Override
            public void b(final BaseViewHolder helper, final PostSubjectItem item) {
                Intrinsics.h(helper, "helper");
                Intrinsics.h(item, "item");
                helper.itemView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        RoomProvider.PostAdapter.a.A(this.f43634a, helper, item, view);
                    }
                });
                helper.getView(R$id.root_view).getLayoutParams().height = lj.a.b(RoomProvider.f43500p.a() ? 182 : Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE);
            }

            public a(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this((i10 & 1) != 0 ? null : str);
            }

            public a(String str) {
                this.f43521e = str;
            }
        }

        public PostAdapter(String str, ep.l lVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, lVar);
        }

        @Override
        protected int N1(List<? extends PostSubjectItem> data, int position) {
            Intrinsics.h(data, "data");
            return data.get(position).isMore() ? 2 : 1;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostAdapter(String str, ep.l trendingRoomsViewModel) {
            super(null, 1, null);
            Intrinsics.h(trendingRoomsViewModel, "trendingRoomsViewModel");
            F1(new PostItemProvider(str, trendingRoomsViewModel));
            F1(new a(str));
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, WebConstants.FIELD_ITEM, "", "F1", "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "E1", "(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;", "holder", "C1", "(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "F", "I", "coverSize", "RoomItemVH", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RoomAdapter extends BaseQuickAdapter {
        public static final int G = 8;

        private final int coverSize;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lqk/c0;", "viewBinding", "<init>", "(Lqk/c0;)V", "a", "Lqk/c0;", "f", "()Lqk/c0;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class RoomItemVH extends BaseViewHolder {

            private final qk.c0 viewBinding;

            /* JADX WARN: Illegal instructions before constructor call */
            public RoomItemVH(qk.c0 viewBinding) {
                Intrinsics.h(viewBinding, "viewBinding");
                ConstraintLayout root = viewBinding.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                super(root);
                this.viewBinding = viewBinding;
            }

            public final qk.c0 getViewBinding() {
                return this.viewBinding;
            }
        }

        public RoomAdapter() {
            super(R$layout.item_adapter_room_entrance_group, null, 2, null);
            this.coverSize = lj.a.b(52);
        }

        public static final void D1(RoomAdapter roomAdapter, RoomItem roomItem, View view) {
            Intrinsics.e(view);
            roomAdapter.F1(view, roomItem);
        }

        private final void F1(View view, RoomItem item) {
            item.setNewPostCount(0L);
            com.transsion.room.helper.l.f49624a.g(RoomProvider.f43503s, RoomProvider.f43504t, item);
            Navigator.x(TheRouter.c("/room/detail").K("id", item.getGroupId()).z("need_start_room_home", false), view.getContext(), null, 2, null);
        }

        @Override
        public void F(RoomItemVH holder, final RoomItem item) {
            String strD;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomProvider.RoomAdapter.D1(this.f43641a, item, view);
                }
            });
            holder.getViewBinding().f69707e.setText(item.getName());
            if (item.getUserCount() != null) {
                Long userCount = item.getUserCount();
                Intrinsics.e(userCount);
                strD = ij.k.d(userCount.longValue());
            } else {
                strD = "0";
            }
            holder.getViewBinding().f69706d.setText(strD);
            String avatar = item.getAvatar();
            if (avatar != null) {
                ni.f.b bVarC = ni.f.f67269a.m(getContext()).g(avatar).m(this.coverSize).c(this.coverSize);
                ShapeableImageView ivCover = holder.getViewBinding().f69705c;
                Intrinsics.g(ivCover, "ivCover");
                bVarC.d(ivCover);
            }
        }

        @Override
        public RoomItemVH y0(ViewGroup parent, int viewType) {
            Intrinsics.h(parent, "parent");
            qk.c0 c0VarC = qk.c0.c(LayoutInflater.from(getContext()), parent, false);
            Intrinsics.g(c0VarC, "inflate(...)");
            return new RoomItemVH(c0VarC);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            ConfigBean configBeanB = b();
            return Intrinsics.c(configBeanB != null ? configBeanB.getValue() : null, "true");
        }

        public final ConfigBean b() {
            return RoomProvider.f43505u;
        }

        private a() {
        }
    }

    public static final class b implements bj.a {

        final RoomAdapter f43523a;

        final RoomProvider f43524b;

        b(RoomAdapter roomAdapter, RoomProvider roomProvider) {
            this.f43523a = roomAdapter;
            this.f43524b = roomProvider;
        }

        @Override
        public void a(int i10, long j10, View view) {
            RoomAdapter roomAdapter = this.f43523a;
            RoomProvider roomProvider = this.f43524b;
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.r(wf.a.f74274a, RoomProvider.f43502r, new String[]{"1----------room report, position:" + i10 + ", duration:" + j10}, false, 4, null);
                RoomItem roomItem = (RoomItem) roomAdapter.f0(i10);
                if (roomItem != null) {
                    com.transsion.room.helper.l.f49624a.i(roomProvider.f43511j, RoomProvider.f43503s, i10, j10, roomItem);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class c implements bj.a {

        final PostAdapter f43525a;

        final RoomProvider f43526b;

        c(PostAdapter postAdapter, RoomProvider roomProvider) {
            this.f43525a = postAdapter;
            this.f43526b = roomProvider;
        }

        @Override
        public void a(int i10, long j10, View view) {
            PostAdapter postAdapter = this.f43525a;
            RoomProvider roomProvider = this.f43526b;
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.f(wf.a.f74274a, RoomProvider.f43502r, "2-------post report, position:" + i10 + ", duration:" + j10, false, 4, null);
                PostSubjectItem postSubjectItem = (PostSubjectItem) postAdapter.f0(i10);
                if (postSubjectItem != null && !CollectionsKt.b0(roomProvider.N(), postSubjectItem.getPostId())) {
                    String postId = postSubjectItem.getPostId();
                    if (postId != null) {
                        roomProvider.N().add(postId);
                    }
                    com.transsion.postdetail.helper.a.f46861a.v(roomProvider.f43511j, RoomProvider.f43503s, "", i10, j10, postSubjectItem, (64 & 64) != 0 ? null : null);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class d implements qx.b {
        d() {
        }

        @Override
        public void onLogin(UserInfo user) {
            Intrinsics.h(user, "user");
            TrendingViewModel trendingViewModel = RoomProvider.this.f43507f;
            if (trendingViewModel != null) {
                trendingViewModel.T(false);
            }
        }

        @Override
        public void onLogout() {
            TrendingViewModel trendingViewModel = RoomProvider.this.f43507f;
            if (trendingViewModel != null) {
                trendingViewModel.T(false);
            }
        }

        @Override
        public void onUpdateUserInfo(UserInfo userInfo) {
            qx.b.a.c(this, userInfo);
        }
    }

    public static final class e extends RecyclerView.r {
        e() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
        }
    }

    public static final class f extends RecyclerView.s {
        f() {
            m(0, 10);
        }
    }

    public static final class g extends RecyclerView.s {
        g() {
            m(0, 10);
        }
    }

    static final class h implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f43528a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43528a = function;
        }

        @Override
        public final Function a() {
            return this.f43528a;
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
            this.f43528a.invoke(obj);
        }
    }

    public RoomProvider(final BaseHomeSubFragment fragment, TrendingViewModel trendingViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f43506e = fragment;
        this.f43507f = trendingViewModel;
        this.f43508g = FragmentViewModelLazyKt.a(fragment, Reflection.b(ep.l.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = fragment.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = fragment.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.f43511j = qi.h.f69682a.h();
        this.f43512k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomProvider.S();
            }
        });
        this.f43513l = new e();
        this.f43514m = new d();
        this.f43515n = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomProvider.U();
            }
        });
        this.f43516o = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RoomProvider.T();
            }
        });
    }

    public static final Unit L(BaseViewHolder baseViewHolder, RecyclerView recyclerView, RoomAdapter roomAdapter, RecyclerView recyclerView2, PostAdapter postAdapter, RoomEntranceResponse roomEntranceResponse) {
        baseViewHolder.setText(R$id.main_operation_room_title, roomEntranceResponse.getTitle());
        List<RoomItem> groups = roomEntranceResponse.getGroups();
        if (groups == null || groups.isEmpty() || !f43500p.a()) {
            recyclerView.setVisibility(8);
        } else {
            recyclerView.setVisibility(0);
            roomAdapter.n1(roomEntranceResponse.getGroups());
        }
        List<PostSubjectItem> posts = roomEntranceResponse.getPosts();
        if (posts == null || posts.isEmpty()) {
            recyclerView2.setVisibility(8);
        } else {
            recyclerView2.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            List<PostSubjectItem> posts2 = roomEntranceResponse.getPosts();
            Intrinsics.e(posts2);
            arrayList.addAll(posts2);
            PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
            postSubjectItem.setMore(true);
            arrayList.add(postSubjectItem);
            postAdapter.n1(arrayList);
        }
        return Unit.f64096a;
    }

    public static final void M(View view) {
        com.transsion.room.helper.l lVar = com.transsion.room.helper.l.f49624a;
        String str = f43503s;
        lVar.f(str, f43504t);
        ep.k.i(ep.k.f59780a, null, null, str, false, 11, null);
    }

    public final HashSet N() {
        return (HashSet) this.f43512k.getValue();
    }

    private final f O() {
        return (f) this.f43516o.getValue();
    }

    private final g P() {
        return (g) this.f43515n.getValue();
    }

    private final ep.l Q() {
        return (ep.l) this.f43508g.getValue();
    }

    private final void R(RecyclerView recyclerView, RecyclerView recyclerView2, RoomAdapter roomAdapter, PostAdapter postAdapter) {
        recyclerView.clearOnScrollListeners();
        recyclerView2.clearOnScrollListeners();
        bj.b bVar = new bj.b(0.6f, new b(roomAdapter, this), false, 4, null);
        bVar.n(1);
        ExposureType exposureType = ExposureType.NEST_HORIZONTAL;
        bVar.o(exposureType);
        recyclerView.addOnScrollListener(bVar);
        this.f43509h = bVar;
        bj.b bVar2 = new bj.b(0.6f, new c(postAdapter, this), false, 4, null);
        bVar2.n(1);
        bVar2.o(exposureType);
        recyclerView2.addOnScrollListener(bVar2);
        this.f43510i = bVar2;
    }

    public static final HashSet S() {
        return new HashSet();
    }

    public static final f T() {
        return new f();
    }

    public static final g U() {
        return new g();
    }

    @Override
    public void b(final BaseViewHolder helper, OperateItem item) {
        androidx.p009lifecycle.b0 b0VarW;
        androidx.p009lifecycle.b0 b0VarW2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.main_operation_room_group_recycler);
        final RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.main_operation_room_post_recycler);
        ((TextView) helper.getView(R$id.main_operation_room_more_text)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RoomProvider.M(view);
            }
        });
        String title = item.getTitle();
        if (title != null && title.length() != 0) {
            ((TextView) helper.getView(R$id.main_operation_room_title)).setText(item.getTitle());
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), P())) {
            recyclerView.setRecycledViewPool(P());
        }
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        RecyclerView.m linearLayoutManager = new LinearLayoutManager(this.f43506e.getContext(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        final RoomAdapter roomAdapter = new RoomAdapter();
        recyclerView.setAdapter(roomAdapter);
        if (!Intrinsics.c(recyclerView2.getRecycledViewPool(), O())) {
            recyclerView2.setRecycledViewPool(O());
        }
        if (recyclerView2.getItemDecorationCount() == 0) {
            recyclerView2.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        RecyclerView.m linearLayoutManager2 = new LinearLayoutManager(this.f43506e.getContext(), 0, false);
        linearLayoutManager2.setItemPrefetchEnabled(true);
        recyclerView2.setLayoutManager(linearLayoutManager2);
        final PostAdapter postAdapter = new PostAdapter(this.f43511j, Q());
        recyclerView2.setAdapter(postAdapter);
        R(recyclerView, recyclerView2, roomAdapter, postAdapter);
        TrendingViewModel trendingViewModel = this.f43507f;
        if (trendingViewModel != null && (b0VarW2 = trendingViewModel.W()) != null) {
            b0VarW2.p(this.f43506e);
        }
        TrendingViewModel trendingViewModel2 = this.f43507f;
        if (trendingViewModel2 == null || (b0VarW = trendingViewModel2.W()) == null) {
            return;
        }
        b0VarW.j(this.f43506e, new h(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomProvider.L(helper, recyclerView, roomAdapter, recyclerView2, postAdapter, (RoomEntranceResponse) obj);
            }
        }));
    }

    @Override
    public int l() {
        return PostItemType.ROOM.ordinal();
    }

    @Override
    public int m() {
        return R$layout.post_list_item_room;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        return super.r(parent, i10);
    }

    @Override
    public void t(BaseViewHolder holder) {
        Unit unit;
        RecyclerView recyclerView;
        Intrinsics.h(holder, "holder");
        super.t(holder);
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            if (baseProviderMultiAdapterG == null || (recyclerView = baseProviderMultiAdapterG.getRecyclerView()) == null) {
                unit = null;
            } else {
                recyclerView.addOnScrollListener(this.f43513l);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void u(BaseViewHolder holder) {
        Unit unit;
        RecyclerView recyclerView;
        Intrinsics.h(holder, "holder");
        super.u(holder);
        wf.a.C0922a.v(wf.a.f74274a, f43502r, "room onViewDetachedFromWindow", false, 4, null);
        bj.b bVar = this.f43509h;
        if (bVar != null) {
            bVar.f();
        }
        bj.b bVar2 = this.f43510i;
        if (bVar2 != null) {
            bVar2.f();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            if (baseProviderMultiAdapterG == null || (recyclerView = baseProviderMultiAdapterG.getRecyclerView()) == null) {
                unit = null;
            } else {
                recyclerView.removeOnScrollListener(this.f43513l);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
