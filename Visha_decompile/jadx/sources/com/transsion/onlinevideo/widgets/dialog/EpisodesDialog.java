package com.transsion.onlinevideo.widgets.dialog;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.EpisodesAdapter;
import com.transsion.onlinevideo.adapter.SessionAdapter;
import com.transsion.onlinevideo.adapter.VarietyShowAdapter;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.BaseVideoControllerDialog;
import com.transsion.widgets.CenterLayoutManager;
import java.util.List;

public class EpisodesDialog extends BaseVideoControllerDialog {
    public TranVideoDetail l;
    public RecyclerView m;
    public RecyclerView n;
    public RecyclerView o;
    public VarietyShowAdapter p;
    public VarietyShowAdapter q;
    public EpisodesAdapter r;
    public SessionAdapter s;
    public boolean t;
    public boolean u;
    public boolean v;
    public TranVideoDetail.VideoSerials w;
    public a x;
    public List y;
    public boolean z;

    public interface a {
        void a(List list, int i);
    }

    public static EpisodesDialog L(TranVideoDetail tranVideoDetail, boolean z, a aVar) {
        EpisodesDialog episodesDialog = new EpisodesDialog();
        episodesDialog.l = tranVideoDetail;
        episodesDialog.x = aVar;
        episodesDialog.z = z;
        return episodesDialog;
    }

    public final void F(View view) {
        if (this.z || this.l == null) {
            return;
        }
        this.m = (RecyclerView) view.findViewById(R.id.rv_series);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_episodes);
        this.n = recyclerView;
        recyclerView.setVisibility(0);
        this.m.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.n.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        TranVideoDetail.VideoInfoBean videoInfo = this.l.getVideoInfo();
        this.t = videoInfo.getSerialCover() == 1;
        boolean z = this.l.getVideoSeries() != null && this.l.getVideoSeries().size() > 0;
        this.u = z;
        this.y = z ? PlayDetailDataManger.getEpisodes(videoInfo.getSeriesId()) : this.l.getVideoSerials();
        if (this.t) {
            this.n.setLayoutManager(new CenterLayoutManager(getContext(), 1, false));
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter(getContext(), true, true);
            this.p = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.y);
            this.n.setAdapter(this.p);
            this.p.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.H(baseQuickAdapter, view2, i);
                }
            });
        } else {
            EpisodesAdapter episodesAdapter = new EpisodesAdapter(getContext(), true, true);
            this.r = episodesAdapter;
            episodesAdapter.setNewData(this.y);
            this.n.setLayoutManager(new GridLayoutManager(getContext(), 6));
            this.n.setAdapter(this.r);
            this.r.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.I(baseQuickAdapter, view2, i);
                }
            });
        }
        this.m.setVisibility(this.u ? 0 : 8);
        if (this.u) {
            SessionAdapter sessionAdapter = new SessionAdapter(getContext());
            this.s = sessionAdapter;
            sessionAdapter.setNewData(this.l.getVideoSeries());
            this.s.c(PlayDetailDataManger.getSeries(videoInfo.getSeriesId()));
            this.s.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.J(baseQuickAdapter, view2, i);
                }
            });
            this.m.setAdapter(this.s);
        }
        for (int i = 0; i < this.y.size(); i++) {
            if (PlayDetailDataManger.sCurrentSerialId == ((TranVideoDetail.VideoSerials) this.y.get(i)).getSerialId()) {
                this.n.smoothScrollToPosition(i);
                return;
            }
        }
    }

    public final void G(View view) {
        if (!this.z || this.l == null) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_trivia);
        this.o = recyclerView;
        recyclerView.setVisibility(0);
        this.o.setLayoutManager(new CenterLayoutManager(getContext(), 1, false));
        boolean z = this.l.getVideoSerialsNotIntact() != null && this.l.getVideoSerialsNotIntact().size() > 0;
        this.v = z;
        this.o.setVisibility(z ? 0 : 8);
        if (this.v) {
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter(getContext(), true, true);
            this.q = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.l.getVideoSerialsNotIntact());
            this.o.setAdapter(this.q);
            this.q.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.K(baseQuickAdapter, view2, i);
                }
            });
        }
        this.w = PlayDetailDataManger.getSerial(PlayDetailDataManger.sCurrentSerialId);
        for (int i = 0; i < this.l.getVideoSerialsNotIntact().size(); i++) {
            if (PlayDetailDataManger.sCurrentSerialId == this.l.getVideoSerialsNotIntact().get(i).getSerialId()) {
                this.o.smoothScrollToPosition(i);
                return;
            }
        }
    }

    public final void H(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        M(i, false);
    }

    public final void I(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        M(i, false);
    }

    public final void J(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        N(i);
    }

    public final void K(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        M(i, true);
    }

    public void M(int i, boolean z) {
        TranVideoDetail tranVideoDetail;
        a aVar = this.x;
        if (aVar != null) {
            if (z && (tranVideoDetail = this.l) != null) {
                aVar.a(tranVideoDetail.getVideoSerialsNotIntact(), i);
            } else if (!z) {
                aVar.a(this.y, i);
            }
        }
        dismiss();
    }

    public void N(int i) {
        SessionAdapter sessionAdapter = this.s;
        sessionAdapter.c(sessionAdapter.getData().get(i));
        this.s.notifyDataSetChanged();
        long seriesId = this.s.getData().get(i).getSeriesId();
        if (this.t) {
            this.p.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        } else {
            this.r.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        }
        this.m.scrollToPosition(i);
    }

    @Override
    public int getLayoutId() {
        return R.layout.dialog_episodes;
    }

    @Override
    public void initView(View view) {
        super.initView(view);
        G(view);
        F(view);
        addDismissListener(view.findViewById(R.id.container));
    }
}
