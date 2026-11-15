package com.transsion.home.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.o;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003*+,B3\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\u000e2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R*\u0010\n\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001a\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006-"}, d2 = {"Lcom/transsion/home/adapter/e;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Lt6/i;", "", "data", "Lrk/b;", "exposureHelper", "", "showNumberTh", "isEducationList", "<init>", "(Ljava/util/List;Lrk/b;ZZ)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lrk/b;", "H", "Z", "Lcom/transsion/home/adapter/e$c;", "I", "Lcom/transsion/home/adapter/e$c;", "filmItemProvider", "Lcom/transsion/home/adapter/e$b;", "J", "Lcom/transsion/home/adapter/e$b;", "eduFilmItemProvider", AppMeasurementSdk.ConditionalUserProperty.VALUE, "K", "Q1", "()Z", "R1", "(Z)V", "L", "a", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class e extends BaseProviderMultiAdapter<UGCContent> implements i {
    public static final int M = 8;
    private static final String N = "FilmListAdapter";
    public static final int O = 1;
    public static final int P = 2;

    private final rk.b exposureHelper;

    private final boolean showNumberTh;

    private c filmItemProvider;

    private b eduFilmItemProvider;

    private boolean isEducationList;

    public static final class b extends BaseItemProvider {

        private final rk.b f43088e;

        private final boolean f43089f;

        private boolean f43090g;

        public b(rk.b bVar, boolean z10, boolean z11) {
            this.f43088e = bVar;
            this.f43089f = z10;
            this.f43090g = z11;
        }

        /* JADX WARN: Code duplicated, block: B:45:0x0102  */
        private final void A(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            String url;
            String thumbnail;
            UGCVideoHashTag uGCVideoHashTag;
            String title;
            String avatar;
            String nickname;
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
            ni.f.a aVar = ni.f.f67269a;
            ni.f.b bVarM = aVar.m(k());
            Cover cover = uGCVideo.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarI = bVarM.g(url).i(R$color.cl37);
            Cover cover2 = uGCVideo.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarI.l(thumbnail).d(shapeableImageView);
            int i10 = R$id.tv_title;
            String title2 = uGCVideo.getTitle();
            if (title2 == null) {
                title2 = "";
            }
            baseViewHolder.setText(i10, title2);
            baseViewHolder.setText(R$id.tv_views, j.c(uGCVideo.getWatchNum(), k()));
            boolean z10 = true;
            if (!this.f43090g || o.f62115a.i()) {
                baseViewHolder.setVisible(R$id.iv_res_post_type, true);
                baseViewHolder.setGone(R$id.iv_upload_user_icon, true);
                ((ImageView) baseViewHolder.getView(R$id.iv_res_post_type)).setImageResource(UGCVideoTypeKt.e(uGCVideo.getCategory()));
                if (o.f62115a.i()) {
                    Long publishTime = uGCVideo.getPublishTime();
                    long jLongValue = publishTime != null ? publishTime.longValue() : 0L;
                    if (jLongValue > 0) {
                        title = TimeUtilKt.j(jLongValue);
                    } else {
                        title = "";
                    }
                } else {
                    List<UGCVideoHashTag> hashTags = uGCVideo.getHashTags();
                    if (hashTags == null || (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) == null || (title = uGCVideoHashTag.getTitle()) == null) {
                        title = "";
                    }
                }
                if (title.length() == 0) {
                    baseViewHolder.setVisible(R$id.separator, false);
                    baseViewHolder.setText(R$id.tv_type, "");
                } else {
                    baseViewHolder.setVisible(R$id.separator, true);
                    baseViewHolder.setText(R$id.tv_type, title);
                }
            } else {
                baseViewHolder.setGone(R$id.iv_res_post_type, true);
                baseViewHolder.setVisible(R$id.iv_upload_user_icon, true);
                ni.f.b bVarM2 = aVar.m(k());
                UGCVideoCreator creator = uGCVideo.getCreator();
                if (creator == null || (avatar = creator.getAvatar()) == null) {
                    avatar = "";
                }
                bVarM2.g(avatar).i(R$drawable.icon_ugc_user_upload).d((ImageView) baseViewHolder.getView(R$id.iv_upload_user_icon));
                int i11 = R$id.tv_type;
                UGCVideoCreator creator2 = uGCVideo.getCreator();
                if (creator2 == null || (nickname = creator2.getNickname()) == null) {
                    nickname = "";
                }
                baseViewHolder.setText(i11, nickname);
            }
            if (o.f62115a.i()) {
                z(baseViewHolder, uGCVideo);
            }
            baseViewHolder.setText(R$id.tv_duration, uGCVideo.getTimeOrCount(k()));
            String corner = uGCVideo.getCorner();
            View view = baseViewHolder.getView(R$id.tag_audio);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_audio_tag);
            if (corner != null && !StringsKt.q0(corner)) {
                z10 = false;
            }
            view.setVisibility(z10 ? 8 : 0);
            String corner2 = uGCVideo.getCorner();
            textView.setText(corner2 != null ? corner2 : "");
        }

        private final void y(BaseViewHolder baseViewHolder) {
            int i10;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            View view = baseViewHolder.getView(R$id.tag_ranking);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_ranking);
            if (!this.f43089f) {
                view.setVisibility(8);
                return;
            }
            view.setVisibility(0);
            int i11 = layoutPosition + 1;
            textView.setText(String.valueOf(i11));
            if (i11 == 1) {
                i10 = R$drawable.bg_ranking_no1;
            } else if (i11 != 2) {
                i10 = i11 != 3 ? R$drawable.bg_ranking_normal : R$drawable.bg_ranking_no3;
            } else {
                i10 = R$drawable.bg_ranking_no2;
            }
            view.setBackgroundResource(i10);
        }

        private final void z(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            RecyclerView recyclerView = (RecyclerView) baseViewHolder.getViewOrNull(R$id.recyclerTag);
            if (recyclerView == null) {
                return;
            }
            List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
            List<UGCVideoHashTag> list = filteredHashTags;
            if (list == null || list.isEmpty()) {
                recyclerView.setAdapter(null);
                recyclerView.setVisibility(8);
                return;
            }
            recyclerView.setVisibility(0);
            if (recyclerView.getLayoutManager() == null) {
                recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
                recyclerView.setNestedScrollingEnabled(false);
            }
            Intrinsics.e(filteredHashTags);
            recyclerView.setAdapter(new com.transsion.home.adapter.operateUGC.adapter.f(filteredHashTags));
        }

        @Override
        public void b(BaseViewHolder holder, UGCContent data) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            String topicType = data.getTopicType();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, e.N, "convert: position=" + holder.getLayoutPosition() + ", topicType=" + topicType, false, 4, null);
            if (Intrinsics.c(topicType, "UGC_VIDEO")) {
                UGCVideo video = data.getVideo();
                if (video != null) {
                    A(holder, video);
                } else {
                    wf.a.C0922a.z(c0922a, e.N, "convert: UGC_VIDEO but video is null at position=" + holder.getLayoutPosition(), false, 4, null);
                }
            } else {
                wf.a.C0922a.z(c0922a, e.N, "convert: unsupported topicType=" + topicType + " at position=" + holder.getLayoutPosition(), false, 4, null);
            }
            y(holder);
        }

        public final void C(boolean z10) {
            this.f43090g = z10;
        }

        @Override
        public int l() {
            return 2;
        }

        @Override
        public int m() {
            return R$layout.ugc_item_edu_film_list;
        }
    }

    public static final class c extends BaseItemProvider {

        private final rk.b f43091e;

        private final boolean f43092f;

        private boolean f43093g;

        public c(rk.b bVar, boolean z10, boolean z11) {
            this.f43091e = bVar;
            this.f43092f = z10;
            this.f43093g = z11;
        }

        private final void y(BaseViewHolder baseViewHolder) {
            int i10;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            View view = baseViewHolder.getView(R$id.tag_ranking);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_ranking);
            if (!this.f43092f) {
                view.setVisibility(8);
                return;
            }
            view.setVisibility(0);
            int i11 = layoutPosition + 1;
            textView.setText(String.valueOf(i11));
            if (i11 == 1) {
                i10 = R$drawable.bg_ranking_no1;
            } else if (i11 != 2) {
                i10 = i11 != 3 ? R$drawable.bg_ranking_normal : R$drawable.bg_ranking_no3;
            } else {
                i10 = R$drawable.bg_ranking_no2;
            }
            view.setBackgroundResource(i10);
        }

        private final void z(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            String url;
            String thumbnail;
            String title;
            UGCVideoHashTag uGCVideoHashTag;
            String avatar;
            String nickname;
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
            ni.f.a aVar = ni.f.f67269a;
            ni.f.b bVarM = aVar.m(k());
            Cover cover = uGCVideo.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarI = bVarM.g(url).i(R$color.cl37);
            Cover cover2 = uGCVideo.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarI.l(thumbnail).d(shapeableImageView);
            int i10 = R$id.tv_title;
            String title2 = uGCVideo.getTitle();
            if (title2 == null) {
                title2 = "";
            }
            baseViewHolder.setText(i10, title2);
            baseViewHolder.setText(R$id.tv_views, j.c(uGCVideo.getWatchNum(), k()));
            boolean z10 = true;
            if (this.f43093g) {
                baseViewHolder.setGone(R$id.iv_res_post_type, true);
                baseViewHolder.setVisible(R$id.iv_upload_user_icon, true);
                ni.f.b bVarM2 = aVar.m(k());
                UGCVideoCreator creator = uGCVideo.getCreator();
                if (creator == null || (avatar = creator.getAvatar()) == null) {
                    avatar = "";
                }
                bVarM2.g(avatar).i(R$drawable.icon_ugc_user_upload).d((ImageView) baseViewHolder.getView(R$id.iv_upload_user_icon));
                int i11 = R$id.tv_type;
                UGCVideoCreator creator2 = uGCVideo.getCreator();
                if (creator2 == null || (nickname = creator2.getNickname()) == null) {
                    nickname = "";
                }
                baseViewHolder.setText(i11, nickname);
            } else {
                baseViewHolder.setVisible(R$id.iv_res_post_type, true);
                baseViewHolder.setGone(R$id.iv_upload_user_icon, true);
                UGCVideoTypeKt.i((ImageView) baseViewHolder.getView(R$id.iv_res_post_type), uGCVideo, null, 4, null);
                List<UGCVideoHashTag> hashTags = uGCVideo.getHashTags();
                if (hashTags == null || (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) == null || (title = uGCVideoHashTag.getTitle()) == null) {
                    title = "";
                }
                if (title.length() == 0) {
                    baseViewHolder.setVisible(R$id.separator, false);
                    baseViewHolder.setText(R$id.tv_type, "");
                } else {
                    baseViewHolder.setVisible(R$id.separator, true);
                    baseViewHolder.setText(R$id.tv_type, title);
                }
            }
            baseViewHolder.setText(R$id.tv_duration, uGCVideo.getTimeOrCount(k()));
            String corner = uGCVideo.getCorner();
            View view = baseViewHolder.getView(R$id.tag_audio);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_audio_tag);
            if (corner != null && !StringsKt.q0(corner)) {
                z10 = false;
            }
            view.setVisibility(z10 ? 8 : 0);
            String corner2 = uGCVideo.getCorner();
            textView.setText(corner2 != null ? corner2 : "");
        }

        @Override
        public void b(BaseViewHolder holder, UGCContent data) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            String topicType = data.getTopicType();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, e.N, "convert: position=" + holder.getLayoutPosition() + ", topicType=" + topicType, false, 4, null);
            if (Intrinsics.c(topicType, "UGC_VIDEO")) {
                UGCVideo video = data.getVideo();
                if (video != null) {
                    z(holder, video);
                } else {
                    wf.a.C0922a.z(c0922a, e.N, "convert: UGC_VIDEO but video is null at position=" + holder.getLayoutPosition(), false, 4, null);
                }
            } else {
                wf.a.C0922a.z(c0922a, e.N, "convert: unsupported topicType=" + topicType + " at position=" + holder.getLayoutPosition(), false, 4, null);
            }
            y(holder);
        }

        public final void B(boolean z10) {
            this.f43093g = z10;
        }

        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.ugc_item_film_list;
        }
    }

    public e(List list, rk.b bVar, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? false : z11);
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        rk.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bVar.h((LinearLayoutManager) layoutManager, bindingAdapterPosition, true);
        }
    }

    @Override
    protected int N1(List<? extends UGCContent> data, int position) {
        Intrinsics.h(data, "data");
        return o.f62115a.i() ? 2 : 1;
    }

    public final boolean getIsEducationList() {
        return this.isEducationList;
    }

    public final void R1(boolean z10) {
        this.isEducationList = z10;
        c cVar = this.filmItemProvider;
        if (cVar != null) {
            cVar.B(z10);
        }
        b bVar = this.eduFilmItemProvider;
        if (bVar != null) {
            bVar.C(z10);
        }
        notifyItemRangeChanged(0, getData().size());
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List<UGCContent> data, rk.b bVar, boolean z10, boolean z11) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
        this.isEducationList = z11;
        c cVar = new c(bVar, z10, z11);
        this.filmItemProvider = cVar;
        b bVar2 = new b(bVar, z10, z11);
        this.eduFilmItemProvider = bVar2;
        F1(cVar);
        F1(bVar2);
    }
}
