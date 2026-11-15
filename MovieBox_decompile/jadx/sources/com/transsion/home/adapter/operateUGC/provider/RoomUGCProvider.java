package com.transsion.home.adapter.operateUGC.provider;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

public final class RoomUGCProvider extends BaseItemProvider {

    public static final a f43133h = new a(null);

    public static final int f43134i = 8;

    private final int f43135e;

    private final BaseHomeSubFragment f43136f;

    private final TrendingUGCViewModel f43137g;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\f\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "", "tabId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "<init>", "(ILcom/transsion/home/bean/OperateItem;)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "I", "PostItemProvider", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PostAdapter extends BaseProviderMultiAdapter<PostSubjectItem> {
        public static final int H = 8;

        private final int tabId;

        public static final class PostItemProvider extends BaseItemProvider {

            private final int f43138e;

            private final OperateItem f43139f;

            private final int f43140g;

            private final int f43141h;

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lqk/f0;", "viewBinding", "<init>", "(Lqk/f0;)V", "a", "Lqk/f0;", "f", "()Lqk/f0;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            public static final class PostItemVH extends BaseViewHolder {

                private final qk.f0 viewBinding;

                /* JADX WARN: Illegal instructions before constructor call */
                public PostItemVH(qk.f0 viewBinding) {
                    Intrinsics.h(viewBinding, "viewBinding");
                    BLConstraintLayout root = viewBinding.getRoot();
                    Intrinsics.g(root, "getRoot(...)");
                    super(root);
                    this.viewBinding = viewBinding;
                }

                public final qk.f0 getViewBinding() {
                    return this.viewBinding;
                }
            }

            public PostItemProvider(int i10, OperateItem operateItem) {
                this.f43138e = i10;
                this.f43139f = operateItem;
                int iE = (com.blankj.utilcode.util.y.e() - lj.a.b(40)) / 3;
                this.f43140g = iE;
                this.f43141h = (iE * 150) / 107;
            }

            public static final void A(PostItemProvider postItemProvider, PostSubjectItem postSubjectItem, PostItemVH postItemVH, View view) {
                postItemProvider.C(postSubjectItem, postItemVH.getAdapterPosition());
            }

            private final void C(PostSubjectItem postSubjectItem, int i10) {
                D(i10, this.f43139f, postSubjectItem);
                ep.k.k(ep.k.f59780a, postSubjectItem, postSubjectItem.getOps(), "UgcTrending", false, 8, null);
            }

            private final void D(int i10, OperateItem operateItem, PostSubjectItem postSubjectItem) {
                String userId;
                String groupId;
                String subjectId;
                String string;
                String value;
                String ops;
                Integer subjectType;
                String postId = postSubjectItem.getPostId();
                String str = "";
                if (postId == null) {
                    postId = "";
                }
                Pair pairA = TuplesKt.a("post_id", postId);
                Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i10));
                Pair pairA3 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
                Pair pairA4 = TuplesKt.a("is_cache_post", String.valueOf(postSubjectItem.isRoomCache()));
                User user = postSubjectItem.getUser();
                if (user == null || (userId = user.getUserId()) == null) {
                    userId = "";
                }
                Pair pairA5 = TuplesKt.a("user_id", userId);
                Group group = postSubjectItem.getGroup();
                if (group == null || (groupId = group.getGroupId()) == null) {
                    groupId = "";
                }
                Pair pairA6 = TuplesKt.a("group_id", groupId);
                Subject subject = postSubjectItem.getSubject();
                if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                    subjectId = "";
                }
                Pair pairA7 = TuplesKt.a("subject_id", subjectId);
                Subject subject2 = postSubjectItem.getSubject();
                if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
                    string = "";
                }
                Pair pairA8 = TuplesKt.a("subject_type", string);
                Pair pairA9 = TuplesKt.a("builtin", postSubjectItem.getBuiltIn() ? "1" : "0");
                Media media = postSubjectItem.getMedia();
                if (media == null || (value = media.getMediaType()) == null) {
                    value = MediaType.TEXT.getValue();
                }
                Pair pairA10 = TuplesKt.a("post_media_type", value);
                Pair pairA11 = TuplesKt.a("tabId", String.valueOf(this.f43138e));
                if (operateItem == null || (ops = operateItem.getOps()) == null) {
                    String ops2 = postSubjectItem.getOps();
                    if (ops2 != null) {
                        str = ops2;
                    }
                } else {
                    str = ops;
                }
                Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, pairA11, TuplesKt.a("ops", str));
                if (operateItem != null) {
                    sk.b.a(operateItem, mapM);
                }
                qi.h.f69682a.o("UgcTrending", mapM);
            }

            @Override
            public PostItemVH r(ViewGroup parent, int i10) {
                Intrinsics.h(parent, "parent");
                qk.f0 f0VarC = qk.f0.c(LayoutInflater.from(k()), parent, false);
                Intrinsics.g(f0VarC, "inflate(...)");
                ShapeableImageView ivCover = f0VarC.f69732b;
                Intrinsics.g(ivCover, "ivCover");
                ViewGroup.LayoutParams layoutParams = ivCover.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                }
                layoutParams.height = this.f43141h;
                ivCover.setLayoutParams(layoutParams);
                return new PostItemVH(f0VarC);
            }

            @Override
            public int l() {
                return 1;
            }

            @Override
            public int m() {
                return R$layout.item_ugc_vertical_content;
            }

            /* JADX WARN: Code duplicated, block: B:61:0x00ea  */
            /* JADX WARN: Code duplicated, block: B:70:0x0119  */
            /* JADX WARN: Code duplicated, block: B:79:0x0138  */
            /* JADX WARN: Code duplicated, block: B:81:0x014b  */
            @Override
            public void b(BaseViewHolder helper, final PostSubjectItem item) {
                String title;
                Pair pair;
                FirstFrame firstFrame;
                String thumbnail;
                Cover cover;
                Cover cover2;
                String url;
                String str;
                Media media;
                int iIntValue;
                List<Video> video;
                Video video2;
                Integer duration;
                String str2;
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
                        RoomUGCProvider.PostAdapter.PostItemProvider.A(this.f43150a, item, postItemVH, view);
                    }
                });
                String content = item.getContent();
                String str3 = "";
                if (content == null || content.length() == 0) {
                    title = item.getTitle();
                    if (title == null) {
                        title = "";
                    }
                } else {
                    title = item.getContent();
                }
                postItemVH.getViewBinding().f69735e.setText(title);
                Media media2 = item.getMedia();
                Pair pair2 = null;
                thumbnail = null;
                thumbnail = null;
                String thumbnail2 = null;
                url = null;
                String url2 = null;
                String mediaType = media2 != null ? media2.getMediaType() : null;
                if (!Intrinsics.c(mediaType, MediaType.IMAGE.getValue())) {
                    if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
                        Media media3 = item.getMedia();
                        if (media3 == null || (cover2 = media3.getCover()) == null || (url = cover2.getUrl()) == null) {
                            Media media4 = item.getMedia();
                            if (media4 != null && (firstFrame = media4.getFirstFrame()) != null) {
                                url2 = firstFrame.getUrl();
                            }
                        } else {
                            url2 = url;
                        }
                        Media media5 = item.getMedia();
                        if (media5 == null || (cover = media5.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                            thumbnail = "";
                        }
                        pair = new Pair(url2, thumbnail);
                    }
                    ni.f.b bVarM = ni.f.f67269a.m(k());
                    if (pair2 != null || (str = (String) pair2.getFirst()) == null) {
                        str = "";
                    }
                    ni.f.b bVarM2 = bVarM.g(str).m(this.f43140g);
                    if (pair2 != null && (str2 = (String) pair2.getSecond()) != null) {
                        str3 = str2;
                    }
                    ni.f.b bVarL = bVarM2.l(str3);
                    ShapeableImageView ivCover = postItemVH.getViewBinding().f69732b;
                    Intrinsics.g(ivCover, "ivCover");
                    bVarL.d(ivCover);
                    if (item.isVideo()) {
                        postItemVH.getViewBinding().f69734d.setText(Utils.a().getString(R$string.pic));
                        return;
                    }
                    media = item.getMedia();
                    if (media != null || (video = media.getVideo()) == null || (video2 = (Video) CollectionsKt.k0(video)) == null || (duration = video2.getDuration()) == null) {
                        iIntValue = 0;
                    } else {
                        iIntValue = duration.intValue();
                    }
                    postItemVH.getViewBinding().f69734d.setText(TimeUtilKt.a(Integer.valueOf(iIntValue)));
                }
                Media media6 = item.getMedia();
                String url3 = (media6 == null || (image3 = media6.getImage()) == null || (image4 = (Image) CollectionsKt.k0(image3)) == null) ? null : image4.getUrl();
                Media media7 = item.getMedia();
                if (media7 != null && (image = media7.getImage()) != null && (image2 = (Image) CollectionsKt.k0(image)) != null) {
                    thumbnail2 = image2.getThumbnail();
                }
                pair = new Pair(url3, thumbnail2);
                pair2 = pair;
                ni.f.b bVarM3 = ni.f.f67269a.m(k());
                if (pair2 != null) {
                    str = "";
                } else {
                    str = "";
                }
                ni.f.b bVarM4 = bVarM3.g(str).m(this.f43140g);
                if (pair2 != null) {
                    str3 = str2;
                }
                ni.f.b bVarL2 = bVarM4.l(str3);
                ShapeableImageView ivCover2 = postItemVH.getViewBinding().f69732b;
                Intrinsics.g(ivCover2, "ivCover");
                bVarL2.d(ivCover2);
                if (item.isVideo()) {
                    postItemVH.getViewBinding().f69734d.setText(Utils.a().getString(R$string.pic));
                    return;
                }
                media = item.getMedia();
                if (media != null) {
                    iIntValue = 0;
                } else {
                    iIntValue = 0;
                }
                postItemVH.getViewBinding().f69734d.setText(TimeUtilKt.a(Integer.valueOf(iIntValue)));
            }
        }

        public PostAdapter(int i10, OperateItem operateItem) {
            super(null, 1, null);
            this.tabId = i10;
            F1(new PostItemProvider(i10, operateItem));
        }

        @Override
        protected int N1(List<? extends PostSubjectItem> data, int position) {
            Intrinsics.h(data, "data");
            return data.get(position).isMore() ? 2 : 1;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f43143a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43143a = function;
        }

        @Override
        public final Function a() {
            return this.f43143a;
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
            this.f43143a.invoke(obj);
        }
    }

    public RoomUGCProvider(int i10, BaseHomeSubFragment fragment, TrendingUGCViewModel trendingUGCViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f43135e = i10;
        this.f43136f = fragment;
        this.f43137g = trendingUGCViewModel;
    }

    public static final Unit D(RoomUGCProvider roomUGCProvider, OperateItem operateItem) {
        roomUGCProvider.I(operateItem);
        ep.k.i(ep.k.f59780a, null, null, "UgcTrending", false, 11, null);
        return Unit.f64096a;
    }

    public static final void E(Function0 function0, View view) {
        function0.invoke();
    }

    public static final void F(Function0 function0, View view) {
        function0.invoke();
    }

    public static final Unit G(OperateItem operateItem, BaseViewHolder baseViewHolder, PostAdapter postAdapter, RoomUGCProvider roomUGCProvider, RoomEntranceResponse roomEntranceResponse) {
        operateItem.setTitle(roomEntranceResponse.getTitle());
        baseViewHolder.setText(R$id.tvProviderVerticalTitle, roomEntranceResponse.getTitle());
        List<PostSubjectItem> posts = roomEntranceResponse.getPosts();
        if (posts == null || posts.isEmpty()) {
            View itemView = baseViewHolder.itemView;
            Intrinsics.g(itemView, "itemView");
            uf.c.g(itemView);
        } else {
            View itemView2 = baseViewHolder.itemView;
            Intrinsics.g(itemView2, "itemView");
            uf.c.k(itemView2);
            ArrayList arrayList = new ArrayList();
            List<PostSubjectItem> posts2 = roomEntranceResponse.getPosts();
            Intrinsics.e(posts2);
            arrayList.addAll(posts2);
            postAdapter.n1(arrayList);
            int i10 = 0;
            for (Object obj : arrayList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                roomUGCProvider.J(i10, operateItem, (PostSubjectItem) obj);
                i10 = i11;
            }
        }
        return Unit.f64096a;
    }

    private final void H(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        Pair pairA3 = TuplesKt.a("tabId", String.valueOf(this.f43135e));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title));
        sk.b.a(operateItem, mapM);
        qi.h.f69682a.z("UgcTrending", mapM);
    }

    private final void I(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        Pair pairA3 = TuplesKt.a("tabId", String.valueOf(this.f43135e));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title));
        sk.b.a(operateItem, mapM);
        qi.h.f69682a.o("UgcTrending", mapM);
    }

    private final void J(int i10, OperateItem operateItem, PostSubjectItem postSubjectItem) {
        String userId;
        String groupId;
        String subjectId;
        String string;
        String value;
        String ops;
        Integer subjectType;
        String postId = postSubjectItem.getPostId();
        String str = "";
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i10));
        Pair pairA3 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        Pair pairA4 = TuplesKt.a("is_cache_post", String.valueOf(postSubjectItem.isRoomCache()));
        User user = postSubjectItem.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA5 = TuplesKt.a("user_id", userId);
        Group group = postSubjectItem.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        Pair pairA6 = TuplesKt.a("group_id", groupId);
        Subject subject = postSubjectItem.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA7 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = postSubjectItem.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA8 = TuplesKt.a("subject_type", string);
        Pair pairA9 = TuplesKt.a("builtin", postSubjectItem.getBuiltIn() ? "1" : "0");
        Media media = postSubjectItem.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        Pair pairA10 = TuplesKt.a("post_media_type", value);
        Pair pairA11 = TuplesKt.a("tabId", String.valueOf(this.f43135e));
        if (operateItem == null || (ops = operateItem.getOps()) == null) {
            String ops2 = postSubjectItem.getOps();
            if (ops2 != null) {
                str = ops2;
            }
        } else {
            str = ops;
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, pairA11, TuplesKt.a("ops", str));
        if (operateItem != null) {
            sk.b.a(operateItem, mapM);
        }
        qi.h.f69682a.z("UgcTrending", mapM);
    }

    @Override
    public void b(final BaseViewHolder helper, final OperateItem item) {
        androidx.p009lifecycle.b0 b0VarB;
        androidx.p009lifecycle.b0 b0VarB2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return RoomUGCProvider.D(this.f43230a, item);
            }
        };
        ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RoomUGCProvider.E(function0, view);
            }
        });
        ((TextView) helper.getView(R$id.tvProviderVerticalMore)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RoomUGCProvider.F(function0, view);
            }
        });
        H(item);
        String title = item.getTitle();
        if (title != null && title.length() != 0) {
            ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setText(item.getTitle());
        }
        final PostAdapter postAdapter = new PostAdapter(this.f43135e, item);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.rvProviderVerticalPost);
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.a(lj.a.b(8), 0, 0, 0));
        }
        recyclerView.setAdapter(postAdapter);
        TrendingUGCViewModel trendingUGCViewModel = this.f43137g;
        if (trendingUGCViewModel != null && (b0VarB2 = trendingUGCViewModel.B()) != null) {
            b0VarB2.p(this.f43136f);
        }
        TrendingUGCViewModel trendingUGCViewModel2 = this.f43137g;
        if (trendingUGCViewModel2 == null || (b0VarB = trendingUGCViewModel2.B()) == null) {
            return;
        }
        b0VarB.j(this.f43136f, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomUGCProvider.G(item, helper, postAdapter, this, (RoomEntranceResponse) obj);
            }
        }));
    }

    @Override
    public int l() {
        return PostItemType.ROOM.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_vertical_content;
    }
}
