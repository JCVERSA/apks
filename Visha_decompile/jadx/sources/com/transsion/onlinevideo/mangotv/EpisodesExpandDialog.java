package com.transsion.onlinevideo.mangotv;

import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.EpisodesAdapter;
import com.transsion.onlinevideo.adapter.VarietyShowAdapter;
import com.transsion.playercommon.widgets.BaseFullBottomSheetFragment;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CenterLayoutManager;
import defpackage.oc2;
import defpackage.wz5;
import java.util.List;

public class EpisodesExpandDialog extends BaseFullBottomSheetFragment {
    public int n = 0;
    public TranVideoDetail o;
    public RecyclerView p;
    public VarietyShowAdapter q;
    public EpisodesAdapter r;
    public boolean s;
    public a t;
    public List u;

    public interface a {
        void a(List list, int i);
    }

    private void G(View view) {
        if (this.o == null) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_episodes_numbers);
        this.p = recyclerView;
        recyclerView.setVisibility(0);
        this.p.setLayoutManager(new CenterLayoutManager(getContext(), 0, false));
        this.s = this.o.getVideoInfo().getSerialCover() == 1;
        this.u = this.o.getVideoSerials();
        if (this.s) {
            this.p.setLayoutManager(new CenterLayoutManager(getContext(), 1, false));
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter(getContext(), true, this.o.getVideoInfo().getCategory());
            this.q = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.u);
            this.p.setAdapter(this.q);
            this.q.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.H(baseQuickAdapter, view2, i);
                }
            });
        } else {
            EpisodesAdapter episodesAdapter = new EpisodesAdapter(getContext(), true);
            this.r = episodesAdapter;
            episodesAdapter.setNewData(this.u);
            this.p.setLayoutManager(new GridLayoutManager(getContext(), 6));
            this.p.setAdapter(this.r);
            this.r.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.I(baseQuickAdapter, view2, i);
                }
            });
        }
        for (int i = 0; i < this.u.size(); i++) {
            if (PlayDetailDataManger.sCurrentSerialId == ((TranVideoDetail.VideoSerials) this.u.get(i)).getSerialId()) {
                this.p.scrollToPosition(i);
                return;
            }
        }
    }

    public void H(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        L(i);
    }

    public void I(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        L(i);
    }

    public static EpisodesExpandDialog K(TranVideoDetail tranVideoDetail, a aVar) {
        EpisodesExpandDialog episodesExpandDialog = new EpisodesExpandDialog();
        episodesExpandDialog.o = tranVideoDetail;
        episodesExpandDialog.t = aVar;
        return episodesExpandDialog;
    }

    public int F() {
        return getResources().getDisplayMetrics().heightPixels - oc2.a(getContext(), 200.0f);
    }

    public final void J(BottomSheetBehavior bottomSheetBehavior, View view) {
        wz5.j();
        int i = this.n + 1;
        this.n = i;
        wz5.s("back", i);
        bottomSheetBehavior.setState(5);
    }

    public void L(int i) {
        a aVar = this.t;
        if (aVar != null) {
            aVar.a(this.u, i);
        }
        if (!this.s) {
            this.r.notifyDataSetChanged();
        } else {
            this.q.notifyDataSetChanged();
            this.p.scrollToPosition(i);
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_episodes;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
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
            ((ViewGroup.MarginLayoutParams) layoutParams).height = F();
            frameLayout.setLayoutParams(layoutParams);
            final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout);
            bottomSheetBehaviorFrom.setPeekHeight(getResources().getDisplayMetrics().heightPixels);
            bottomSheetBehaviorFrom.setState(3);
            ((ImageView) this.l.findViewById(R.id.episode_close)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.J(bottomSheetBehaviorFrom, view);
                }
            });
        }
    }

    @Override
    public void v(View view) {
        view.findViewById(R.id.root_episodes).setVisibility(0);
        G(view);
    }
}
