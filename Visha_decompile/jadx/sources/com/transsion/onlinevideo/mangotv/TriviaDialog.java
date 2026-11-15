package com.transsion.onlinevideo.mangotv;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.VarietyShowAdapter;
import com.transsion.playercommon.widgets.BaseFullBottomSheetFragment;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CenterLayoutManager;
import defpackage.oc2;
import java.util.List;

public class TriviaDialog extends BaseFullBottomSheetFragment {
    public TranVideoDetail n;
    public RecyclerView o;
    public VarietyShowAdapter p;
    public boolean q;
    public TranVideoDetail.VideoSerials r;
    public a s;

    public interface a {
        void a(List list, int i);
    }

    private void F(View view) {
        if (this.n == null) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_trivia_expand);
        this.o = recyclerView;
        recyclerView.setVisibility(0);
        this.o.setLayoutManager(new CenterLayoutManager(getContext(), 1, false));
        boolean z = this.n.getVideoSerialsNotIntact() != null && this.n.getVideoSerialsNotIntact().size() > 0;
        this.q = z;
        this.o.setVisibility(z ? 0 : 8);
        if (this.q) {
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter(getContext(), true, 4);
            this.p = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.n.getVideoSerialsNotIntact());
            this.o.setAdapter(this.p);
            this.p.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.G(baseQuickAdapter, view2, i);
                }
            });
        }
        this.r = PlayDetailDataManger.getSerial(PlayDetailDataManger.sCurrentSerialId);
        for (int i = 0; i < this.n.getVideoSerialsNotIntact().size(); i++) {
            if (PlayDetailDataManger.sCurrentSerialId == this.n.getVideoSerialsNotIntact().get(i).getSerialId()) {
                this.o.scrollToPosition(i);
                return;
            }
        }
    }

    public static TriviaDialog I(TranVideoDetail tranVideoDetail, a aVar) {
        TriviaDialog triviaDialog = new TriviaDialog();
        triviaDialog.n = tranVideoDetail;
        triviaDialog.s = aVar;
        return triviaDialog;
    }

    public int E() {
        return getResources().getDisplayMetrics().heightPixels - oc2.a(getContext(), 200.0f);
    }

    public final void G(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        J(i);
    }

    public void J(int i) {
        this.p.notifyDataSetChanged();
        this.o.scrollToPosition(i);
        a aVar = this.s;
        if (aVar != null) {
            aVar.a(this.n.getVideoSerialsNotIntact(), i);
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_trivia;
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
            ((ViewGroup.MarginLayoutParams) layoutParams).height = E();
            frameLayout.setLayoutParams(layoutParams);
            final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout);
            bottomSheetBehaviorFrom.setPeekHeight(getResources().getDisplayMetrics().heightPixels);
            bottomSheetBehaviorFrom.setState(3);
            ((ImageView) this.l.findViewById(R.id.trivia_close)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    bottomSheetBehaviorFrom.setState(5);
                }
            });
        }
    }

    @Override
    public void v(View view) {
        view.findViewById(R.id.root_trivia).setVisibility(0);
        F(view);
    }
}
