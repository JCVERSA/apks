package com.transsion.sniffer_load.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.p003activity.OnBackPressedCallback;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.MultiWebAdapter;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.b39;
import defpackage.hb0;
import defpackage.nic;
import defpackage.p06;
import defpackage.r06;

public class MultiWebFragment extends PlayBaseFragment {
    public ImageView l;
    public ImageView m;
    public RecyclerView n;
    public View o;
    public MultiWebAdapter p;
    public nic q;
    public com.transsion.widgetslib.dialog.d r;
    public View s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public CustomGridLayoutManager y;
    public Handler z;
    public boolean x = false;
    public boolean A = false;
    public Runnable B = new Runnable() {
        @Override
        public void run() {
            MultiWebFragment.this.q0();
            MultiWebFragment.this.x = false;
        }
    };
    public OnBackPressedCallback C = new a(true);

    public class a extends OnBackPressedCallback {
        public a(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() {
            MultiWebFragment.this.A = true;
            MultiWebFragment.this.p0();
        }
    }

    public class b implements MultiWebAdapter.a {
        public b() {
        }

        @Override
        public void a(int i) {
            if (i < 0 || i >= MultiWebFragment.this.p.getItemCount()) {
                return;
            }
            p06.n0("dl_brower_rp_multi_win_close", hb0.KEY_NAME_NUM, i + 1);
            boolean z = MultiWebFragment.this.q.p() == 1;
            MultiWebFragment.this.q.B(i);
            WebActivity.M0 = "dl_brower_rp_multi_win_close";
            if (z) {
                MultiWebFragment multiWebFragment = MultiWebFragment.this;
                multiWebFragment.o0(multiWebFragment.getContext(), "https://www.google.com", true);
            } else {
                MultiWebFragment.this.p.s(MultiWebFragment.this.q.o(), MultiWebFragment.this.q.m());
                MultiWebFragment.this.q.v();
                MultiWebFragment.this.q.w();
            }
        }

        @Override
        public void onItemClick(int i) {
            if (i < 0 || i >= MultiWebFragment.this.p.getItemCount()) {
                return;
            }
            p06.n0("dl_brower_rp_multi_win_open", hb0.KEY_NAME_NUM, i + 1);
            if (i == MultiWebFragment.this.q.m()) {
                MultiWebFragment.this.p0();
                return;
            }
            MultiWebFragment.this.q.D(i);
            MultiWebFragment.this.p.r(i);
            WebPreviewRecord webPreviewRecordN = MultiWebFragment.this.q.n(i);
            if (webPreviewRecordN != null) {
                WebActivity.M0 = "dl_brower_rp_multi_win_open";
                MultiWebFragment.this.q.l().postValue(webPreviewRecordN);
                MultiWebFragment multiWebFragment = MultiWebFragment.this;
                multiWebFragment.o0(multiWebFragment.getContext(), webPreviewRecordN.webUrl, false);
            }
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            p06.d0("dl_brower_rp_multi_del_pop_cancel");
            dialogInterface.dismiss();
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            p06.d0("dl_brower_rp_multi_del_pop_ok");
            WebActivity.M0 = "dl_brower_rp_multi_del_pop_ok";
            MultiWebFragment.this.q.f();
            MultiWebFragment.this.q.e("https://www.google.com", null);
            MultiWebFragment.this.q.v();
            MultiWebFragment.this.q.w();
            MultiWebFragment multiWebFragment = MultiWebFragment.this;
            multiWebFragment.o0(multiWebFragment.getContext(), "https://www.google.com", false);
        }
    }

    public class e implements Animation.AnimationListener {
        public e() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            ((BaseFragment) MultiWebFragment.this).mActivity.getWindow().setNavigationBarColor(MultiWebFragment.this.getResources().getColor(R.color.fl_multi_web_bottom_bg));
            ((BaseFragment) MultiWebFragment.this).mActivity.getWindow().setStatusBarColor(-16777216);
            ((BaseFragment) MultiWebFragment.this).mActivity.getWindow().getDecorView().setSystemUiVisibility(0);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "dl_brower_rp_multi_show");
        }
    }

    public final void o0(Context context, String str, boolean z) {
        p0();
        Intent intent = new Intent();
        intent.putExtra(VkConstant.URL, str);
        intent.putExtra("need_new_web", z);
        intent.putExtra("web_url_from", z ? "dl_brower_rp_multi_new_cl" : "dl_brower_rp_multi_win_open");
        intent.putExtra("page_index", this.q.m());
        LiveEventBus.b().c("need_load_new_web", intent);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        requireActivity().getOnBackPressedDispatcher().addCallback(this, this.C);
        this.q = nic.q(getContext());
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_back) {
            this.A = true;
            p0();
            return;
        }
        if (id == R.id.iv_clear) {
            p06.d0("dl_brower_rp_multi_del_cl");
            q0();
            return;
        }
        if (id == R.id.ll_add_new) {
            if (this.q.p() >= 9) {
                ToastUtils.u(this.mActivity, R.string.window_up_to_limit);
                return;
            }
            p06.d0("dl_brower_rp_multi_new_cl");
            WebActivity.M0 = "dl_brower_rp_multi_new_cl";
            this.q.e("https://www.google.com", null);
            this.q.v();
            this.q.w();
            o0(getContext(), "https://www.google.com", true);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        com.transsion.widgetslib.dialog.d dVar;
        super.onConfigurationChanged(configuration);
        if ((this.w != b39.b(this.mContext) || this.x) && (dVar = this.r) != null && dVar.isShowing()) {
            this.r.dismiss();
            this.w = b39.b(this.mContext);
            Handler handler = this.z;
            if (handler != null) {
                handler.removeCallbacks(this.B);
                this.z.postDelayed(this.B, 500L);
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.z = new Handler();
        this.w = b39.b(this.mContext);
    }

    @Override
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        Animation animationLoadAnimation;
        if (z) {
            animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.multi_preview_enter);
            animationLoadAnimation.setAnimationListener(new e());
        } else {
            animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.multi_preview_out);
        }
        animationLoadAnimation.setFillAfter(true);
        return animationLoadAnimation;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        r06.f(this.mScreenType, "dl_brower_rp_multi_show", hb0.KEY_NAME_NUM, this.q.p());
        View viewInflate = layoutInflater.inflate(R.layout.fragment_multi_web, viewGroup, false);
        this.s = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Handler handler = this.z;
        if (handler != null) {
            handler.removeCallbacks(this.B);
        }
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        this.x = true;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.C.setEnabled(false);
        this.mActivity.getWindow().setNavigationBarColor(this.u);
        this.mActivity.getWindow().setStatusBarColor(this.t);
        this.mActivity.getWindow().getDecorView().setSystemUiVisibility(this.v);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.C.setEnabled(true);
        this.t = this.mActivity.getWindow().getStatusBarColor();
        this.u = this.mActivity.getWindow().getStatusBarColor();
        this.v = this.mActivity.getWindow().getDecorView().getSystemUiVisibility();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = (ImageView) view.findViewById(R.id.iv_back);
        this.m = (ImageView) view.findViewById(R.id.iv_clear);
        this.n = (RecyclerView) view.findViewById(R.id.rv_web_window);
        this.o = view.findViewById(R.id.ll_add_new);
        this.l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.onClick(view2);
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.onClick(view2);
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.onClick(view2);
            }
        });
        CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(this.mContext, 2);
        this.y = customGridLayoutManager;
        this.n.setLayoutManager(customGridLayoutManager);
        MultiWebAdapter multiWebAdapter = new MultiWebAdapter(getContext(), new b());
        this.p = multiWebAdapter;
        this.n.setAdapter(multiWebAdapter);
        this.p.h(this.q.o());
        this.n.setItemAnimator(new DefaultItemAnimator());
        this.p.s(this.q.o(), this.q.m());
        this.t = this.mActivity.getWindow().getStatusBarColor();
        this.v = this.mActivity.getWindow().getDecorView().getSystemUiVisibility();
    }

    public void p0() {
        nic nicVar = this.q;
        if (nicVar != null) {
            nicVar.G();
        }
        if (this.A) {
            LiveEventBus.b().c("is_from_multiweb_back", Boolean.TRUE);
        }
        getActivity().finish();
    }

    public final void q0() {
        int i = com.transsion.playercommon.R.string.clear_all_web;
        com.transsion.widgetslib.dialog.d dVar = this.r;
        if (dVar != null && dVar.isShowing()) {
            this.r.dismiss();
        }
        com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.mContext).j(i).u(com.transsion.playercommon.R.string.clear_empty, new d()).m(com.transsion.playercommon.R.string.cancel, new c()).a();
        this.r = dVarA;
        dVarA.show();
        p06.d0("dl_brower_rp_multi_del_pop_show");
    }
}
