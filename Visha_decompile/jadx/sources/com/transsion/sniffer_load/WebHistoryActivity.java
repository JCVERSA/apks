package com.transsion.sniffer_load;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.adapter.HistoryListAdapter;
import com.transsion.sniffer_load.data.ReviewHistory;
import com.transsion.sniffer_load.viewmodel.HistoryViewModel;
import com.transsion.sniffer_load.widgets.ReviewHistoryFootOperateBar;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.widget.FootOperationBar;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.b23;
import defpackage.p06;
import defpackage.r06;
import defpackage.zf1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class WebHistoryActivity extends BaseActivity implements HistoryListAdapter.c, View.OnClickListener, FootOperationBar.n {
    public RecyclerView N;
    public HistoryListAdapter O;
    public HistoryViewModel P;
    public final List Q = new ArrayList();
    public View R;
    public ImageView S;
    public ImageView T;
    public TextView U;
    public CheckBox V;
    public boolean W;
    public ReviewHistoryFootOperateBar X;
    public int Y;
    public View Z;
    public View a0;
    public WindowManager.LayoutParams b0;
    public boolean c0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            WebHistoryActivity.this.O.w(WebHistoryActivity.this.V.isChecked());
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(List list) {
            WebHistoryActivity.this.C0(list);
            WebHistoryActivity.this.M0(list.isEmpty() && !MainApp.p);
            WebHistoryActivity.this.A0(list);
            WebHistoryActivity.this.S.setVisibility((WebHistoryActivity.this.W || WebHistoryActivity.this.Q.isEmpty()) ? 8 : 0);
            p06.n0("dl_brower_rp_more_history_show", "history_num", list.size());
        }
    }

    public class c implements BaseQuickAdapter.OnItemClickListener {
        public c() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ReviewHistory reviewHistory = (ReviewHistory) WebHistoryActivity.this.Q.get(i);
            if (reviewHistory.isDateItem) {
                return;
            }
            if (WebHistoryActivity.this.W) {
                WebHistoryActivity.this.L0(baseQuickAdapter, view, i, false);
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("url", reviewHistory.getUrl());
            WebHistoryActivity.this.setResult(1241, intent);
            WebHistoryActivity.this.onBackPressed();
        }
    }

    public class d implements BaseQuickAdapter.OnItemLongClickListener {
        public d() {
        }

        @Override
        public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ReviewHistory reviewHistory = (ReviewHistory) WebHistoryActivity.this.Q.get(i);
            if (reviewHistory.isDateItem) {
                return false;
            }
            if (WebHistoryActivity.this.W) {
                WebHistoryActivity.this.L0(baseQuickAdapter, view, i, false);
            } else {
                WebHistoryActivity.this.P0(true);
                WebHistoryActivity.this.O.x(reviewHistory, true, i);
                p06.d0("dl_brower_rp_more_history_multi_lp");
            }
            return true;
        }
    }

    public class e implements BaseQuickAdapter.OnItemChildClickListener {
        public e() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (WebHistoryActivity.this.W) {
                WebHistoryActivity.this.L0(baseQuickAdapter, view, i, true);
            }
        }
    }

    public class f implements View.OnClickListener {
        public final boolean b;

        public f(boolean z) {
            this.b = z;
        }

        @Override
        public void onClick(View view) {
            if (this.b) {
                WebHistoryActivity.this.P0(false);
            } else {
                WebHistoryActivity.this.onBackPressed();
            }
        }
    }

    public class g implements DialogInterface.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            p06.d0("dl_brower_rp_more_history_cleanup_popup_cancel_cl");
            p06.d0("dl_brower_rp_more_history_multi_del_popup_cancel_cl");
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
        }
    }

    public class h implements DialogInterface.OnClickListener {
        public final boolean b;
        public final List c;

        public h(boolean z, List list) {
            this.b = z;
            this.c = list;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.b) {
                WebHistoryActivity.this.P.h(WebHistoryActivity.this);
            } else {
                WebHistoryActivity.this.P.i(this.c, WebHistoryActivity.this);
                WebHistoryActivity.this.P0(false);
            }
            p06.d0("dl_brower_rp_more_history_cleanup_popup_ok_cl");
            p06.d0("dl_brower_rp_more_history_multi_del_popup_ok_cl");
        }
    }

    private void H0() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.b0 = attributes;
        updateWebWindowParams(attributes);
        this.b0.height = -1;
    }

    public void A0(List list) {
        this.Q.clear();
        if (list != null && !list.isEmpty()) {
            this.Y = 0;
            long j = 0;
            for (int i = 0; i < list.size(); i++) {
                ReviewHistory reviewHistory = (ReviewHistory) list.get(i);
                if (!b23.s(j, reviewHistory.getDate())) {
                    j = reviewHistory.date;
                    this.Q.add(new ReviewHistory(new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(new Date(j)), j, true));
                    this.Y++;
                }
                this.Q.add(reviewHistory);
            }
        }
        this.O.setNewData(this.Q);
        this.T.setVisibility((this.W || this.Q.size() == 0) ? 8 : 0);
        P0(this.W);
    }

    public void B0() {
        this.O.setOnSelectListener(this);
        this.O.setOnItemClickListener(new c());
        this.O.setOnItemLongClickListener(new d());
        this.O.setOnItemChildClickListener(new e());
    }

    public void C0(List list) {
        boolean z = list.size() == 0 && MainApp.p;
        if (this.Z == null) {
            this.Z = ((ViewStub) findViewById(R.id.empty_view)).inflate();
        }
        this.Z.setVisibility(z ? 0 : 8);
    }

    public void D0() {
        this.O = new HistoryListAdapter();
        this.N.setLayoutManager(new LinearLayoutManager(this));
        this.N.setAdapter(this.O);
    }

    public void E0() {
        this.mActivityNavigationColor = getWindow().getNavigationBarColor();
    }

    public void F0() {
        View viewFindViewById = findViewById(R.id.title_bar_back);
        this.R = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.I0(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.title_bar_title);
        this.U = textView;
        textView.setText(R.string.review_history_title);
        this.V = (CheckBox) findViewById(R.id.title_bar_checkBox);
        ImageView imageView = (ImageView) findViewById(R.id.iv_bookmark_edit);
        this.S = imageView;
        imageView.setImageResource(R.drawable.ic_bookmark_edit);
        this.S.setVisibility(0);
        this.S.setOnClickListener(this);
        this.V.setOnClickListener(new a());
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_history_clear);
        this.T = imageView2;
        imageView2.setVisibility(0);
        this.T.setOnClickListener(this);
    }

    public void G0() {
        this.P = (HistoryViewModel) getViewModel(HistoryViewModel.class);
        this.O.A(new HistoryListAdapter.b() {
            @Override
            public final void a(long j, HistoryListAdapter.a aVar) {
                this.a.J0(j, aVar);
            }
        });
        this.P.j().observe(this, new b());
    }

    public final void I0(View view) {
        onBackPressed();
    }

    public final void J0(long j, final HistoryListAdapter.a aVar) {
        HistoryViewModel historyViewModel = this.P;
        Objects.requireNonNull(aVar);
        historyViewModel.r(j, this, new zf1() {
            @Override
            public final void accept(Object obj) {
                aVar.a((byte[]) obj);
            }
        });
    }

    public final void K0() {
        ReviewHistoryFootOperateBar reviewHistoryFootOperateBar = this.X;
        if (reviewHistoryFootOperateBar != null) {
            reviewHistoryFootOperateBar.setVisibility(this.W ? 0 : 8);
        }
    }

    public void L0(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        ((HistoryListAdapter) baseQuickAdapter).x((ReviewHistory) baseQuickAdapter.getData().get(i), z == ((CheckBox) view.findViewById(R.id.iv_history_checkBox)).isChecked(), i);
    }

    public final void M0(boolean z) {
        if (!z) {
            View view = this.a0;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        if (this.a0 == null) {
            this.a0 = ((ViewStub) findViewById(R.id.view_no_histroy)).inflate();
        }
        View view2 = this.a0;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    public void N0(List list, boolean z) {
        String string;
        int i = R.string.clear_history;
        getString(i);
        String string2 = getString(R.string.clear);
        if (z) {
            string = getString(R.string.talkback_clear_history);
            string2 = getString(R.string.clear_empty);
        } else {
            string = list.size() > 1 ? getString(R.string.clear_histories_recorded, Integer.valueOf(list.size())) : getString(i);
        }
        new com.transsion.widgetslib.dialog.d.a(this).k(string).w(string2, new h(z, list)).m(R.string.cancel, new g()).F();
    }

    public void O0(boolean z) {
        N0(null, true);
    }

    public void P0(boolean z) {
        this.W = z;
        this.O.z(z);
        if (z) {
            this.O.h();
            if (this.V.isChecked()) {
                this.O.w(true);
            } else if (this.O.k().isEmpty()) {
                this.O.w(false);
            } else if (!this.c0) {
                this.O.v();
            }
        } else if (!this.c0) {
            this.O.v();
        }
        this.S.setVisibility(z ? 8 : 0);
        this.V.setVisibility(z ? 0 : 8);
        this.T.setVisibility(z ? 8 : 0);
        View view = this.R;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? com.transsion.playercommon.R.string.os_close : com.transsion.playercommon.R.string.os_back);
            this.R.setContentDescription(getString(z ? com.transsion.playercommon.R.string.talkback_close : com.transsion.playercommon.R.string.talkback_back));
        }
        this.R.setOnClickListener(new f(z));
        if (z) {
            TypedValue typedValue = new TypedValue();
            getTheme().resolveAttribute(com.transsion.common.R.attr.foot_bar_background, typedValue, true);
            this.mActivityNavigationColor = getResources().getColor(typedValue.resourceId, null);
            inflateOperationBar();
        }
        ReviewHistoryFootOperateBar reviewHistoryFootOperateBar = this.X;
        if (reviewHistoryFootOperateBar != null) {
            reviewHistoryFootOperateBar.setVisibility(z ? 0 : 8);
        }
        this.U.setText(getString(z ? com.transsion.magicvideo.R.string.none_select : R.string.review_history_title));
        resetNavigationBarColor(!z);
        RecyclerView recyclerView = this.N;
        if (recyclerView != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) recyclerView.getLayoutParams();
            if (z) {
                layoutParams.addRule(2, R.id.bottom_bar);
            } else {
                layoutParams.removeRule(2);
            }
            this.N.setLayoutParams(layoutParams);
        }
        z0();
        this.c0 = false;
    }

    @Override
    public void b(int i) {
        setTitle(i);
    }

    @Override
    public void c(boolean z) {
        setTitle(z ? this.Q.size() - this.Y : 0);
    }

    public void inflateOperationBar() {
        if (this.X == null) {
            ReviewHistoryFootOperateBar reviewHistoryFootOperateBar = (ReviewHistoryFootOperateBar) ((ViewStub) findViewById(R.id.bottom_action_bar)).inflate().findViewById(R.id.bottom_bar);
            this.X = reviewHistoryFootOperateBar;
            reviewHistoryFootOperateBar.setOnFootOptBarClickListener(this);
        }
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onBackPressed() {
        if (this.W) {
            P0(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_bookmark_edit) {
            P0(true);
            p06.d0("dl_brower_rp_more_history_multi_cl");
        } else if (id == R.id.iv_history_clear) {
            O0(true);
            p06.d0("dl_brower_rp_more_history_cleanup_cl");
            p06.d0("dl_brower_rp_more_history_cleanup_popup_show");
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c0 = true;
        ReviewHistoryFootOperateBar reviewHistoryFootOperateBar = this.X;
        if (reviewHistoryFootOperateBar != null) {
            reviewHistoryFootOperateBar.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.K0();
                }
            }, 100L);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_web_history);
        this.N = (RecyclerView) findViewById(R.id.rv_history_list);
        setFinishOnTouchOutside(true);
        E0();
        F0();
        D0();
        G0();
        B0();
        H0();
        clearWindowDimFlag(true);
        resetNavigationBarColor(true);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.X = null;
        M0(false);
    }

    @Override
    public void onItemClick(int i) {
        N0(this.O.k(), false);
        p06.d0("dl_brower_rp_more_history_multi_del_cl");
        p06.d0("dl_brower_rp_more_history_multi_del_popup_show");
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        r06.c(screen_type, "dl_brower_rp_more_history_show");
        updateWebWindowParams(this.b0);
    }

    @Override
    public void setTitle(int i) {
        TextView textView = this.U;
        if (textView != null) {
            if (i == 0) {
                textView.setText(getString(com.transsion.magicvideo.R.string.none_select));
            } else {
                textView.setText(getString(i > 1 ? com.transsion.magicvideo.R.string.items : com.transsion.magicvideo.R.string.item, Integer.valueOf(i)));
            }
        }
        CheckBox checkBox = this.V;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.Q.size() - this.Y);
        }
        ReviewHistoryFootOperateBar reviewHistoryFootOperateBar = this.X;
        if (reviewHistoryFootOperateBar != null) {
            reviewHistoryFootOperateBar.setAllEnable(i != 0);
        }
    }

    public final void z0() {
        ImageView imageView = this.T;
        int i = 8;
        if (imageView != null) {
            imageView.setVisibility((this.W || this.Q.size() == 0) ? 8 : 0);
        }
        ImageView imageView2 = this.S;
        if (imageView2 != null) {
            if (!this.W && this.Q.size() != 0) {
                i = 0;
            }
            imageView2.setVisibility(i);
        }
    }
}
