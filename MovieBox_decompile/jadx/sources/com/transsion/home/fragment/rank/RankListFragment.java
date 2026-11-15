package com.transsion.home.fragment.rank;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.R$string;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$mipmap;
import com.transsion.home.bean.RankAllData;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.RankAllViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.usercenter.R$color;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import qk.t;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002!\u001bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\t¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR$\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/home/fragment/rank/RankListFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqk/t;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "e0", "(Landroid/view/LayoutInflater;)Lqk/t;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Lcom/transsion/home/bean/RankAllData;", "data", "k0", "(Lcom/transsion/home/bean/RankAllData;)V", "errorView", "j0", "(Landroid/view/View;)V", "startLoading", "hideLoading", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "a", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "viewModel", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "mMainAdapter", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "headerView", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RankListFragment extends BaseFragment<t> {

    private RankAllViewModel viewModel;

    private BaseQuickAdapter mMainAdapter;

    private TextView headerView;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/transsion/home/fragment/rank/RankListFragment$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lt6/i;", "<init>", "()V", "", "seconds", "", "E1", "(I)Ljava/lang/String;", WebConstants.FIELD_ITEM, "pos", "", "I1", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", RequestParameters.POSITION, "H1", "G1", "F1", "(I)I", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter implements t6.i {
        public static final int F = 8;

        public a() {
            super(R$layout.item_movie_rank_education_subject, null, 2, null);
        }

        public static final void D1(a aVar, Subject subject, int i10, View view) {
            aVar.I1(subject, i10);
        }

        private final String E1(int seconds) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(seconds / 3600), Integer.valueOf((seconds % 3600) / 60), Integer.valueOf(seconds % 60)}, 3));
            Intrinsics.g(str, "format(...)");
            return str;
        }

        private final int F1(int pos) {
            if (pos == 0) {
                return R$mipmap.ic_rank_01;
            }
            if (pos != 1) {
                return pos != 2 ? R$mipmap.ic_rank_defalut : R$mipmap.ic_rank_03;
            }
            return R$mipmap.ic_rank_02;
        }

        private final void G1(Subject item, int position) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            sk.b.d(item, linkedHashMap);
            linkedHashMap.put("event_type", "rank_item_browse");
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
            qi.h.f69682a.z("rank_all_page", linkedHashMap);
        }

        private final void H1(Subject item, int position) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            sk.b.d(item, linkedHashMap);
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
            linkedHashMap.put("event_type", "rank_item_click");
            linkedHashMap.put("click_type", "poster_click");
            qi.h.f69682a.o("rank_all_page", linkedHashMap);
        }

        private final void I1(Subject item, int pos) {
            zk.h.f(item, "rank_all");
            H1(item, pos);
        }

        @Override
        public void F(BaseViewHolder holder, final Subject item) {
            String url;
            String thumbnail;
            String strValueOf;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            ImageView imageView = (ImageView) holder.getView(R$id.rank_item_image);
            ni.f.a aVar = ni.f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(imageView);
            final int iE = ij.k.e(getData(), item);
            AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getViewOrNull(R$id.rank_item_rank_tag);
            if (appCompatImageView != null) {
                appCompatImageView.setImageResource(F1(iE));
            }
            if (iE > 2) {
                if (iE < 9) {
                    strValueOf = "0" + (iE + 1);
                } else {
                    strValueOf = String.valueOf(iE + 1);
                }
                holder.setText(R$id.rank_item_tag_rank, strValueOf);
            } else {
                holder.setText(R$id.rank_item_tag_rank, "");
            }
            TextView textView = (TextView) holder.getView(R$id.rank_item_rank_duration);
            Integer durationSeconds = item.getDurationSeconds();
            textView.setText(E1(durationSeconds != null ? durationSeconds.intValue() : 0));
            TextView textView2 = (TextView) holder.getView(R$id.rank_item_title);
            textView2.setText(item.getTitle());
            textView2.setGravity(sk.a.d());
            ((TextView) holder.getView(R$id.rank_item_des)).setText(item.getViewers() + " students");
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RankListFragment.a.D1(this.f44045a, item, iE, view);
                }
            });
            G1(item, iE);
        }

        @Override
        public t6.f b(BaseQuickAdapter baseQuickAdapter) {
            return t6.h.a(this, baseQuickAdapter);
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\fJ'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0019\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/transsion/home/fragment/rank/RankListFragment$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lt6/i;", "<init>", "()V", WebConstants.FIELD_ITEM, "", "pos", "", "M1", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", "N1", RequestParameters.POSITION, "", NativeComponentConstants.KEY_COMPONENT_TYPE, "K1", "(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V", "J1", "I1", "(I)I", "subject", "Lcom/transsnet/downloader/widget/DownloadView;", "downloadView", "L1", "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V", "holder", "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends BaseQuickAdapter implements t6.i {
        public static final int F = 8;

        public b() {
            super(R$layout.item_movie_rank_subject, null, 2, null);
        }

        public static final void F1(TextView textView, TextView textView2, Subject subject) {
            textView.setMaxLines(textView2.getLineCount() > 1 ? 2 : 3);
            textView.setText(subject.getDescription());
        }

        public static final void G1(b bVar, Subject subject, int i10, View view) {
            bVar.N1(subject, i10);
        }

        public static final void H1(b bVar, Subject subject, int i10, View view) {
            bVar.M1(subject, i10);
        }

        private final int I1(int pos) {
            if (pos == 0) {
                return R$mipmap.ic_rank_01;
            }
            if (pos != 1) {
                return pos != 2 ? R$mipmap.ic_rank_defalut : R$mipmap.ic_rank_03;
            }
            return R$mipmap.ic_rank_02;
        }

        private final void J1(Subject item, int position) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            sk.b.d(item, linkedHashMap);
            linkedHashMap.put("event_type", "rank_item_browse");
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
            qi.h.f69682a.z("rank_all_page", linkedHashMap);
        }

        private final void K1(Subject item, int position, String type) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            sk.b.d(item, linkedHashMap);
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
            linkedHashMap.put("event_type", "rank_item_click");
            linkedHashMap.put("click_type", type);
            qi.h.f69682a.o("rank_all_page", linkedHashMap);
        }

        private final void L1(Subject subject, DownloadView downloadView) {
            if (!(subject != null ? Intrinsics.c(subject.getHasResource(), Boolean.TRUE) : false)) {
                uf.c.h(downloadView);
                return;
            }
            uf.c.k(downloadView);
            if (ij.t.f62121a.b()) {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType == null || subjectType.intValue() != value) {
                    downloadView.setShowPlayType();
                    return;
                }
            }
            DownloadView.setShowType$default(downloadView, subject.getSubjectId(), null, null, false, R$string.download_movie, 14, null);
        }

        private final void M1(Subject item, int pos) {
            K1(item, pos, zk.h.g(item, "rank_all_page", getContext(), "rank_all"));
        }

        private final void N1(Subject item, int pos) {
            zk.h.f(item, "rank_all");
            K1(item, pos, "poster_click");
        }

        @Override
        public void F(BaseViewHolder holder, final Subject item) {
            String url;
            String thumbnail;
            String strValueOf;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            ImageView imageView = (ImageView) holder.getView(R$id.rank_item_image);
            ni.f.a aVar = ni.f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(imageView);
            final int iE = ij.k.e(getData(), item);
            AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getViewOrNull(R$id.rank_item_rank_tag);
            if (appCompatImageView != null) {
                appCompatImageView.setImageResource(I1(iE));
            }
            holder.setText(R$id.rank_item_corner, item.getCorner());
            if (iE > 2) {
                if (iE < 9) {
                    strValueOf = "0" + (iE + 1);
                } else {
                    strValueOf = String.valueOf(iE + 1);
                }
                holder.setText(R$id.rank_item_tag_rank, strValueOf);
            } else {
                holder.setText(R$id.rank_item_tag_rank, "");
            }
            final TextView textView = (TextView) holder.getView(R$id.rank_item_title);
            final TextView textView2 = (TextView) holder.getView(R$id.rank_item_des);
            textView.setText(item.getTitle());
            textView.setGravity(sk.a.d());
            textView.post(new Runnable() {
                @Override
                public final void run() {
                    RankListFragment.b.F1(textView2, textView, item);
                }
            });
            L1(item, (DownloadView) holder.getView(R$id.rank_item_download));
            holder.setText(R$id.rank_item_imdb, item.getImdbRate());
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RankListFragment.b.G1(this.f44051a, item, iE, view);
                }
            });
            holder.getView(R$id.rank_item_download).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RankListFragment.b.H1(this.f44054a, item, iE, view);
                }
            });
            J1(item, iE);
        }

        @Override
        public t6.f b(BaseQuickAdapter baseQuickAdapter) {
            return t6.h.a(this, baseQuickAdapter);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f44021a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44021a = function;
        }

        @Override
        public final Function a() {
            return this.f44021a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f44021a.invoke(obj);
        }
    }

    public static final void f0(final RankListFragment rankListFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            RankAllViewModel rankAllViewModel = rankListFragment.viewModel;
            if (rankAllViewModel != null) {
                rankAllViewModel.l();
                return;
            }
            return;
        }
        fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
        t mViewBinding = rankListFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69853b) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                RankListFragment.g0(this.f44044a);
            }
        }, 500L);
    }

    public static final void g0(RankListFragment rankListFragment) {
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = rankListFragment.mMainAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final Unit h0(final RankListFragment rankListFragment, final RankAllData rankAllData) {
        ConstraintLayout root;
        t6.f fVarH0;
        if (rankAllData == null) {
            BaseQuickAdapter baseQuickAdapter = rankListFragment.mMainAdapter;
            if (baseQuickAdapter != null && (fVarH0 = baseQuickAdapter.h0()) != null) {
                fVarH0.v();
            }
        } else {
            BaseQuickAdapter baseQuickAdapter2 = rankListFragment.mMainAdapter;
            if (baseQuickAdapter2 != null) {
                List<Subject> subjects = rankAllData.getSubjects();
                baseQuickAdapter2.q(subjects != null ? subjects : new ArrayList<>());
            }
            t mViewBinding = rankListFragment.getMViewBinding();
            if (mViewBinding != null && (root = mViewBinding.getRoot()) != null) {
                root.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        RankListFragment.i0(this.f44042a, rankAllData);
                    }
                }, 300L);
            }
        }
        return Unit.f64096a;
    }

    public static final void i0(RankListFragment rankListFragment, RankAllData rankAllData) {
        BaseQuickAdapter baseQuickAdapter;
        t6.f fVarH0;
        t6.f fVarH1;
        BaseQuickAdapter baseQuickAdapter2;
        t6.f fVarH2;
        BaseQuickAdapter baseQuickAdapter3 = rankListFragment.mMainAdapter;
        if (baseQuickAdapter3 != null && (fVarH1 = baseQuickAdapter3.h0()) != null && fVarH1.r() && (baseQuickAdapter2 = rankListFragment.mMainAdapter) != null && (fVarH2 = baseQuickAdapter2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager = rankAllData.getPager();
        if ((pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false) || (baseQuickAdapter = rankListFragment.mMainAdapter) == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        t6.f.u(fVarH0, false, 1, null);
    }

    @Override
    public t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (RankAllViewModel) new v0(activity).a(RankAllViewModel.class);
        }
        t tVarC = t.c(inflater);
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }

    @Override
    public void hideLoading() {
        ConstraintLayout constraintLayout;
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f69854c) == null) {
            return;
        }
        uf.c.h(constraintLayout);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Bundle arguments;
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        this.mMainAdapter = HomeTabId.INSTANCE.h((parentFragment == null || (arguments = parentFragment.getArguments()) == null) ? null : Integer.valueOf(arguments.getInt("tabId")), true) ? new a() : new b();
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69853b) == null) {
            return;
        }
        recyclerView.setAdapter(this.mMainAdapter);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setItemAnimator(null);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(0.0f, 16.0f, 0.0f, 5, null));
        }
    }

    public final void j0(View errorView) {
        Intrinsics.h(errorView, "errorView");
        BaseQuickAdapter baseQuickAdapter = this.mMainAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.n1(null);
        }
        BaseQuickAdapter baseQuickAdapter2 = this.mMainAdapter;
        if (baseQuickAdapter2 != null) {
            baseQuickAdapter2.Y0(errorView);
        }
    }

    public final void k0(RankAllData data) {
        t6.f fVarH0;
        RecyclerView recyclerView;
        t6.f fVarH1;
        t6.f fVarH2;
        Pager pager;
        BaseQuickAdapter baseQuickAdapter = this.mMainAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.n1(data != null ? data.getSubjects() : null);
        }
        TextView textView = this.headerView;
        if (textView == null) {
            TextView textView2 = new TextView(getContext());
            textView2.setText(data != null ? data.getTitle() : null);
            textView2.setPadding(a0.a(12.0f), a0.a(16.0f), a0.a(12.0f), 0);
            textView2.setTextSize(2, 16.0f);
            textView2.setTextColor(androidx.core.content.b.getColor(textView2.getContext(), R$color.pair_text_191F2B));
            textView2.setMaxLines(2);
            textView2.setGravity(sk.a.d());
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setTypeface(Typeface.create("ans-serif", 1));
            BaseQuickAdapter baseQuickAdapter2 = this.mMainAdapter;
            if (baseQuickAdapter2 != null) {
                BaseQuickAdapter.y(baseQuickAdapter2, textView2, 0, 0, 6, null);
            }
            this.headerView = textView2;
        } else if (textView != null) {
            textView.setText(data != null ? data.getTitle() : null);
        }
        if ((data == null || (pager = data.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
            BaseQuickAdapter baseQuickAdapter3 = this.mMainAdapter;
            if (baseQuickAdapter3 != null && (fVarH2 = baseQuickAdapter3.h0()) != null) {
                fVarH2.z(true);
            }
            BaseQuickAdapter baseQuickAdapter4 = this.mMainAdapter;
            if (baseQuickAdapter4 != null && (fVarH1 = baseQuickAdapter4.h0()) != null) {
                fVarH1.y(true);
            }
        } else {
            BaseQuickAdapter baseQuickAdapter5 = this.mMainAdapter;
            if (baseQuickAdapter5 != null && (fVarH0 = baseQuickAdapter5.h0()) != null) {
                t6.f.u(fVarH0, false, 1, null);
            }
        }
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69853b) == null) {
            return;
        }
        recyclerView.scrollToPosition(0);
    }

    @Override
    public void lazyLoadData() {
        b0 b0VarI;
        t6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mMainAdapter;
        if (baseQuickAdapter != null && (fVarH0 = baseQuickAdapter.h0()) != null) {
            fVarH0.D(new r6.f() {
                @Override
                public final void a() {
                    RankListFragment.f0(this.f44040a);
                }
            });
        }
        RankAllViewModel rankAllViewModel = this.viewModel;
        if (rankAllViewModel == null || (b0VarI = rankAllViewModel.i()) == null) {
            return;
        }
        b0VarI.j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RankListFragment.h0(this.f44041a, (RankAllData) obj);
            }
        }));
    }

    @Override
    public void startLoading() {
        ConstraintLayout constraintLayout;
        t mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f69854c) == null) {
            return;
        }
        uf.c.k(constraintLayout);
    }
}
