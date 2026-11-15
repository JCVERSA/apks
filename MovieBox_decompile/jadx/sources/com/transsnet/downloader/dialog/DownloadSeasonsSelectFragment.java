package com.transsnet.downloader.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsnet.downloader.R$anim;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.SeasonListBean;
import com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0019\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J)\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00106\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010(¨\u00069"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadSeasonsSelectFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lbx/j0;", "<init>", "()V", "", "season", "", "M0", "(I)V", "N0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "seasonList", "O0", "(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)V", "Landroid/view/LayoutInflater;", "inflater", "J0", "(Landroid/view/LayoutInflater;)Lbx/j0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "initViewData", "transit", "", "enter", "nextAnim", "Landroid/view/animation/Animation;", "onCreateAnimation", "(IZI)Landroid/view/animation/Animation;", "l", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "m", "Ljava/lang/Integer;", "subjectType", "n", "Z", "dialogStyle", "Lcom/transsnet/downloader/adapter/s;", "o", "Lcom/transsnet/downloader/adapter/s;", "seasonAdapter", "", TtmlNode.TAG_P, "J", "lastClickTime", CampaignEx.JSON_KEY_AD_Q, "curSeason", CampaignEx.JSON_KEY_AD_R, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadSeasonsSelectFragment extends DownloadReDetectorBaseFragment<bx.j0> {

    public static final Companion INSTANCE = new Companion(null);

    private ResourcesSeasonList seasonList;

    private Integer subjectType;

    private boolean dialogStyle = true;

    private com.transsnet.downloader.adapter.s seasonAdapter;

    private long lastClickTime;

    private Integer curSeason;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadSeasonsSelectFragment a(ResourcesSeasonList resourcesSeasonList, Integer num, boolean z10) {
            DownloadSeasonsSelectFragment downloadSeasonsSelectFragment = new DownloadSeasonsSelectFragment();
            downloadSeasonsSelectFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_dialog_style", Boolean.valueOf(z10)), TuplesKt.a("extra_subject_id_type", num)));
            downloadSeasonsSelectFragment.O0(resourcesSeasonList);
            return downloadSeasonsSelectFragment;
        }

        private Companion() {
        }
    }

    public static final void K0(DownloadSeasonsSelectFragment downloadSeasonsSelectFragment, View view) {
        downloadSeasonsSelectFragment.N0();
    }

    public static final void L0(DownloadSeasonsSelectFragment downloadSeasonsSelectFragment, BaseQuickAdapter adapter, View view, int i10) {
        SeasonListBean seasonListBean;
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsnet.downloader.bean.SeasonListBean");
        SeasonListBean seasonListBean2 = (SeasonListBean) item;
        if (downloadSeasonsSelectFragment.lastClickTime == 0 || System.currentTimeMillis() - downloadSeasonsSelectFragment.lastClickTime > 1000) {
            downloadSeasonsSelectFragment.lastClickTime = System.currentTimeMillis();
            com.transsnet.downloader.adapter.s sVar = downloadSeasonsSelectFragment.seasonAdapter;
            int i11 = -1;
            if (sVar != null && (data2 = sVar.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    SeasonListBean seasonListBean3 = (SeasonListBean) it.next();
                    Integer num = downloadSeasonsSelectFragment.curSeason;
                    int season = seasonListBean3.getSeason();
                    if (num != null && num.intValue() == season) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0) {
                com.transsnet.downloader.adapter.s sVar2 = downloadSeasonsSelectFragment.seasonAdapter;
                if (i11 < ((sVar2 == null || (data = sVar2.getData()) == null) ? 0 : data.size())) {
                    com.transsnet.downloader.adapter.s sVar3 = downloadSeasonsSelectFragment.seasonAdapter;
                    if (sVar3 != null && (seasonListBean = (SeasonListBean) sVar3.f0(i11)) != null) {
                        seasonListBean.setSelected(false);
                    }
                    com.transsnet.downloader.adapter.s sVar4 = downloadSeasonsSelectFragment.seasonAdapter;
                    if (sVar4 != null) {
                        sVar4.notifyItemChanged(i11, Boolean.FALSE);
                    }
                }
            }
            seasonListBean2.setSelected(true);
            downloadSeasonsSelectFragment.curSeason = Integer.valueOf(seasonListBean2.getSeason());
            com.transsnet.downloader.adapter.s sVar5 = downloadSeasonsSelectFragment.seasonAdapter;
            if (sVar5 != null) {
                sVar5.notifyItemChanged(i10, Boolean.TRUE);
            }
            downloadSeasonsSelectFragment.M0(seasonListBean2.getSeason());
            downloadSeasonsSelectFragment.N0();
        }
    }

    private final void M0(int season) {
        androidx.p009lifecycle.b0 b0VarZ;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel == null || (b0VarZ = viewModel.z()) == null) {
            return;
        }
        b0VarZ.q(Integer.valueOf(season));
    }

    private final void N0() {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel == null || (b0VarP = viewModel.p()) == null) {
            return;
        }
        b0VarP.q(2);
    }

    @Override
    public bx.j0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.j0 j0VarC = bx.j0.c(inflater);
        Intrinsics.g(j0VarC, "inflate(...)");
        return j0VarC;
    }

    public final void O0(ResourcesSeasonList seasonList) {
        this.seasonList = seasonList;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        List<ResourcesSeason> seasons;
        AppCompatTextView appCompatTextView;
        List<ResourcesSeason> seasons2;
        AppCompatTextView appCompatTextView2;
        List<ResourcesSeason> seasons3;
        int i10;
        androidx.p009lifecycle.b0 b0VarH;
        if (this.curSeason == null) {
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            if (viewModel == null || (b0VarH = viewModel.h()) == null || (i10 = (Integer) b0VarH.f()) == null) {
                i10 = 1;
            }
            this.curSeason = i10;
        }
        bx.j0 j0Var = (bx.j0) getMViewBinding();
        if (j0Var != null) {
            if (!this.dialogStyle) {
                j0Var.f16099b.setBackground(new DrawableCreator.Builder().setSolidColor(requireActivity().getResources().getColor(R$color.gray_dark_00)).build());
            }
            j0Var.f16099b.getLayoutParams().height = o0();
            j0Var.f16102e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadSeasonsSelectFragment.K0(this.f56548a, view);
                }
            });
            ResourcesSeasonList resourcesSeasonList = this.seasonList;
            if (resourcesSeasonList == null || (seasons3 = resourcesSeasonList.getSeasons()) == null || seasons3.size() != 1) {
                AppCompatTextView tvAllEpisodes = j0Var.f16104g;
                Intrinsics.g(tvAllEpisodes, "tvAllEpisodes");
                uf.c.h(tvAllEpisodes);
                AppCompatTextView tvTitle = j0Var.f16105h;
                Intrinsics.g(tvTitle, "tvTitle");
                uf.c.k(tvTitle);
            } else {
                AppCompatTextView tvAllEpisodes2 = j0Var.f16104g;
                Intrinsics.g(tvAllEpisodes2, "tvAllEpisodes");
                uf.c.k(tvAllEpisodes2);
                AppCompatTextView tvTitle2 = j0Var.f16105h;
                Intrinsics.g(tvTitle2, "tvTitle");
                uf.c.h(tvTitle2);
            }
            Integer num = this.subjectType;
            int value = SubjectType.EDUCATION.getValue();
            String string = null;
            if (num != null && num.intValue() == value) {
                bx.j0 j0Var2 = (bx.j0) getMViewBinding();
                if (j0Var2 != null && (appCompatTextView2 = j0Var2.f16104g) != null) {
                    appCompatTextView2.setText(Utils.a().getString(R$string.download_series_all_lessons));
                }
                AppCompatTextView appCompatTextView3 = j0Var.f16105h;
                Context context = getContext();
                if (context != null) {
                    int i11 = R$string.download_video_detail_units;
                    ResourcesSeasonList resourcesSeasonList2 = this.seasonList;
                    string = context.getString(i11, String.valueOf((resourcesSeasonList2 == null || (seasons2 = resourcesSeasonList2.getSeasons()) == null) ? 1 : seasons2.size()));
                }
                appCompatTextView3.setText(string);
            } else {
                bx.j0 j0Var3 = (bx.j0) getMViewBinding();
                if (j0Var3 != null && (appCompatTextView = j0Var3.f16104g) != null) {
                    appCompatTextView.setText(Utils.a().getString(R$string.download_series_all_episodes));
                }
                AppCompatTextView appCompatTextView4 = j0Var.f16105h;
                Context context2 = getContext();
                if (context2 != null) {
                    int i12 = R$string.download_video_detail_seasons;
                    ResourcesSeasonList resourcesSeasonList3 = this.seasonList;
                    string = context2.getString(i12, String.valueOf((resourcesSeasonList3 == null || (seasons = resourcesSeasonList3.getSeasons()) == null) ? 1 : seasons.size()));
                }
                appCompatTextView4.setText(string);
            }
            RecyclerView recyclerView = j0Var.f16103f;
            Context context3 = getContext();
            recyclerView.setLayoutManager((context3 == null || !com.transsion.baseui.util.b.a(context3)) ? new NpaLinearLayoutManager(requireContext(), 1, false) : new NpaGridLayoutManager(requireContext(), 2));
            RecyclerView recyclerView2 = j0Var.f16103f;
            com.transsnet.downloader.adapter.s sVar = new com.transsnet.downloader.adapter.s(this.subjectType);
            this.seasonAdapter = sVar;
            sVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                    DownloadSeasonsSelectFragment.L0(this.f56549a, baseQuickAdapter, view, i13);
                }
            });
            recyclerView2.setAdapter(sVar);
        }
        ResourcesSeasonList resourcesSeasonList4 = this.seasonList;
        if (resourcesSeasonList4 != null) {
            ArrayList arrayList = new ArrayList();
            List<ResourcesSeason> seasons4 = resourcesSeasonList4.getSeasons();
            if (seasons4 != null) {
                for (ResourcesSeason resourcesSeason : seasons4) {
                    int se2 = resourcesSeason.getSe();
                    Integer num2 = this.curSeason;
                    arrayList.add(new SeasonListBean(se2, num2 != null && num2.intValue() == resourcesSeason.getSe()));
                }
            }
            com.transsnet.downloader.adapter.s sVar2 = this.seasonAdapter;
            if (sVar2 != null) {
                sVar2.n1(arrayList);
            }
        }
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.dialogStyle = arguments != null ? arguments.getBoolean("extra_dialog_style") : true;
        Bundle arguments2 = getArguments();
        this.subjectType = arguments2 != null ? Integer.valueOf(arguments2.getInt("extra_subject_id_type")) : null;
    }

    @Override
    public Animation onCreateAnimation(int transit, boolean enter, int nextAnim) {
        return enter ? AnimationUtils.loadAnimation(getActivity(), R$anim.enter_bottom_menu) : AnimationUtils.loadAnimation(getActivity(), R$anim.exit_bottom_menu);
    }

    @Override
    public void retryLoadData() {
    }
}
