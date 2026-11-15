package com.transsion.onlinevideo.mangotv;

import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.EpisodesAdapter;
import com.transsion.onlinevideo.adapter.SessionAdapter;
import com.transsion.onlinevideo.adapter.VarietyShowAdapter;
import com.transsion.playercommon.widgets.BaseFullBottomSheetFragment;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CenterLayoutManager;
import defpackage.oc2;
import defpackage.wz5;
import java.util.List;

public class EpisodesWithSeriesExpandDialog extends BaseFullBottomSheetFragment {
    public int n = 0;
    public TextView o;
    public TranVideoDetail p;
    public RecyclerView q;
    public RecyclerView r;
    public VarietyShowAdapter s;
    public EpisodesAdapter t;
    public SessionAdapter u;
    public boolean v;
    public boolean w;
    public a x;
    public List y;
    public boolean z;

    public interface a {
        void a(List list, int i);
    }

    private void H(View view) {
        if (this.p == null || this.z) {
            return;
        }
        this.q = (RecyclerView) view.findViewById(R.id.rv_series);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_episodes);
        this.r = recyclerView;
        recyclerView.setVisibility(0);
        this.q.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        TranVideoDetail.VideoInfoBean videoInfo = this.p.getVideoInfo();
        this.v = videoInfo.getSerialCover() == 1;
        boolean z = this.p.getVideoSeries() != null && this.p.getVideoSeries().size() > 0;
        this.w = z;
        this.y = z ? PlayDetailDataManger.getEpisodes(videoInfo.getSeriesId()) : this.p.getVideoSerials();
        if (this.v) {
            this.r.setLayoutManager(new CenterLayoutManager(getContext(), 1, false));
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter(getContext(), true, this.p.getVideoInfo().getCategory());
            this.s = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.y);
            this.r.setAdapter(this.s);
            this.s.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.I(baseQuickAdapter, view2, i);
                }
            });
        } else {
            EpisodesAdapter episodesAdapter = new EpisodesAdapter(getContext(), true);
            this.t = episodesAdapter;
            episodesAdapter.setNewData(this.y);
            this.r.setLayoutManager(new GridLayoutManager(getContext(), 6));
            this.r.setAdapter(this.t);
            this.t.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.J(baseQuickAdapter, view2, i);
                }
            });
        }
        this.q.setVisibility(this.w ? 0 : 8);
        if (this.w) {
            SessionAdapter sessionAdapter = new SessionAdapter(getContext());
            this.u = sessionAdapter;
            sessionAdapter.setNewData(this.p.getVideoSeries());
            this.u.c(PlayDetailDataManger.getSeries(videoInfo.getSeriesId()));
            this.u.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.K(baseQuickAdapter, view2, i);
                }
            });
            this.q.setAdapter(this.u);
        }
        for (int i = 0; i < this.y.size(); i++) {
            if (PlayDetailDataManger.sCurrentSerialId == ((TranVideoDetail.VideoSerials) this.y.get(i)).getSerialId()) {
                this.r.scrollToPosition(i);
                return;
            }
        }
    }

    public void I(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        N(i, false);
    }

    public void J(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        N(i, false);
    }

    public void K(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        O(i);
    }

    public void L(BottomSheetBehavior bottomSheetBehavior, View view) {
        wz5.j();
        int i = this.n + 1;
        this.n = i;
        wz5.s("back", i);
        bottomSheetBehavior.setState(5);
    }

    public static EpisodesWithSeriesExpandDialog M(TranVideoDetail tranVideoDetail, a aVar) {
        EpisodesWithSeriesExpandDialog episodesWithSeriesExpandDialog = new EpisodesWithSeriesExpandDialog();
        episodesWithSeriesExpandDialog.p = tranVideoDetail;
        episodesWithSeriesExpandDialog.x = aVar;
        return episodesWithSeriesExpandDialog;
    }

    public int G() {
        return getResources().getDisplayMetrics().heightPixels - oc2.a(getContext(), 200.0f);
    }

    public void N(int i, boolean z) {
        a aVar = this.x;
        if (aVar != null) {
            aVar.a(z ? this.p.getVideoSerialsNotIntact() : this.y, i);
        }
        if (!this.v) {
            this.t.notifyDataSetChanged();
        } else {
            this.s.notifyDataSetChanged();
            this.r.scrollToPosition(i);
        }
    }

    public void O(int i) {
        SessionAdapter sessionAdapter = this.u;
        sessionAdapter.c(sessionAdapter.getData().get(i));
        this.u.notifyDataSetChanged();
        long seriesId = this.u.getData().get(i).getSeriesId();
        if (this.v) {
            this.s.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        } else {
            this.t.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        }
        this.q.scrollToPosition(i);
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_multi_episodes;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.z) {
            return;
        }
        wz5.j();
    }

    @Override
    public void onStart() {
        super.onStart();
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) getDialog();
        Window window = bottomSheetDialog.getWindow();
        int i = R.id.design_bottom_sheet;
        window.findViewById(i).setBackgroundDrawable(new ColorDrawable(0));
        FrameLayout frameLayout = (FrameLayout) bottomSheetDialog.getDelegate().findViewById(i);
        if (frameLayout != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) frameLayout.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).height = G();
            frameLayout.setLayoutParams(layoutParams);
            final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout);
            bottomSheetBehaviorFrom.setPeekHeight(getResources().getDisplayMetrics().heightPixels);
            bottomSheetBehaviorFrom.setState(3);
            ((ImageView) this.l.findViewById(R.id.episode_close)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.L(bottomSheetBehaviorFrom, view);
                }
            });
        }
    }

    @Override
    public void v(View view) {
        TextView textView = (TextView) view.findViewById(R.id.episode_name);
        this.o = textView;
        textView.setText(!this.z ? R.string.video_onlinevideo_episodes : R.string.video_onlinevideo_trivia);
        view.findViewById(R.id.root_episodes).setVisibility(0);
        H(view);
    }
}
