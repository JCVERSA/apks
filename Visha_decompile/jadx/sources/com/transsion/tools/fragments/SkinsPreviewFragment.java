package com.transsion.tools.fragments;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.datastore.preferences.protobuf.DescriptorProtos;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.tools.activities.SkinsCustomizeActivity;
import com.transsion.tools.adapter.ThemePreviewAdapter;
import com.transsion.tools.utils.SkinsMenuDiffCallback;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.view.OSBigButton;
import defpackage.ak4;
import defpackage.c16;
import defpackage.f5;
import defpackage.fc7;
import defpackage.h27;
import defpackage.hb0;
import defpackage.k29;
import defpackage.oa1;
import defpackage.olb;
import defpackage.os0;
import defpackage.p06;
import defpackage.pd7;
import defpackage.r06;
import defpackage.rc2;
import defpackage.ru8;
import defpackage.t03;
import defpackage.tu8;
import defpackage.vha;
import defpackage.w6c;
import defpackage.xn9;
import defpackage.xw8;
import java.io.File;
import java.util.List;
import okhttp3.ResponseBody;

public class SkinsPreviewFragment extends BaseFragment implements h27.b {
    public int A;
    public ViewPager2.OnPageChangeCallback B = new a();
    public final os0 C = new c();
    public TextView l;
    public Button m;
    public com.transsion.widgetslib.dialog.c n;
    public com.transsion.widgetslib.dialog.d o;
    public List p;
    public SkinsMenu q;
    public int r;
    public xn9 s;
    public ThemePreviewAdapter t;
    public ViewPager2 u;
    public t03 v;
    public ThemeData w;
    public View x;
    public ThemeData y;
    public int z;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageSelected(int i) {
            SkinsPreviewFragment skinsPreviewFragment = SkinsPreviewFragment.this;
            skinsPreviewFragment.q = (SkinsMenu) skinsPreviewFragment.p.get(i);
            if (SkinsPreviewFragment.this.t != null) {
                SkinsPreviewFragment.this.t.v(i);
            }
            if (fc7.c(SkinsPreviewFragment.this.q)) {
                SkinsPreviewFragment.this.l.setText(SkinsPreviewFragment.this.q.name);
                boolean zP0 = SkinsPreviewFragment.this.p0();
                SkinsPreviewFragment.this.m.setEnabled(!zP0);
                SkinsPreviewFragment.this.m.setText(!zP0 ? R.string.apply : R.string.theme_applied);
                hb0.name = SkinsPreviewFragment.this.q.name;
                c16.b();
            }
        }
    }

    public class b implements t03.a {
        public final SkinsMenu a;

        public b(SkinsMenu skinsMenu) {
            this.a = skinsMenu;
        }

        @Override
        public void a() {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.j();
                }
            });
        }

        @Override
        public void b(final int i) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.l(i);
                }
            });
        }

        @Override
        public void c() {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.i();
                }
            });
        }

        @Override
        public void d(final String str, String str2) {
            if (!this.a.name.equals(str2)) {
                Log.w("SkinsPreview_Fragment", "downloadFinish -- the current resource does not match the theme");
            } else {
                final SkinsMenu skinsMenu = this.a;
                ThreadUtils.s(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.k(skinsMenu, str);
                    }
                });
            }
        }

        public final void i() {
            SkinsPreviewFragment.this.m0();
        }

        public final void j() {
            if (SkinsPreviewFragment.this.o != null) {
                SkinsPreviewFragment.this.o.dismiss();
            }
            ToastUtils.s(R.string.download_failed);
            SkinsPreviewFragment.this.m.setEnabled(true);
        }

        public final void k(SkinsMenu skinsMenu, String str) {
            ThemeData themeData = new ThemeData(skinsMenu.name, str, skinsMenu.description);
            themeData.darkMode = skinsMenu.darkMode;
            if (w6c.w(((BaseFragment) SkinsPreviewFragment.this).mContext, "skin_theme", themeData)) {
                SkinsPreviewFragment.this.h0(R.string.theme_toast, skinsMenu.name);
            } else {
                ToastUtils.s(R.string.operation_fail);
            }
        }

        public final void l(int i) {
            if (SkinsPreviewFragment.this.n != null) {
                SkinsPreviewFragment.this.n.h(i);
            }
        }
    }

    public class c implements os0 {
        public c() {
        }

        @Override
        public void b() {
            SkinsPreviewFragment.this.x0(true);
        }
    }

    public class d implements pd7 {
        public final String b;

        public d(String str) {
            this.b = str;
        }

        @Override
        public void onNext(ResponseBody responseBody) throws Throwable {
            SkinsPreviewFragment.this.v.a(responseBody, this.b);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            if (SkinsPreviewFragment.this.v.b(this.b)) {
                return;
            }
            ToastUtils.s(R.string.network_error);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    private void initTitleBar(View view) {
        view.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.r0(view2);
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.title_bar_title);
        this.l = textView;
        SkinsMenu skinsMenu = this.q;
        textView.setText(skinsMenu != null ? skinsMenu.name : "");
    }

    public void r0(View view) {
        x0(false);
    }

    public static SkinsPreviewFragment u0(Bundle bundle) {
        SkinsPreviewFragment skinsPreviewFragment = new SkinsPreviewFragment();
        skinsPreviewFragment.setArguments(bundle);
        return skinsPreviewFragment;
    }

    public final void A0(int i, int i2) {
        int iD = com.transsion.utils.a.d(this.mContext, i);
        int iD2 = com.transsion.utils.a.d(this.mContext, 10.0f);
        CompositePageTransformer compositePageTransformer = new CompositePageTransformer();
        compositePageTransformer.addTransformer(new MarginPageTransformer(iD2));
        this.u.setPageTransformer(compositePageTransformer);
        RecyclerView recyclerView = (RecyclerView) this.u.getChildAt(0);
        recyclerView.setPadding(Math.abs(iD2) + iD, this.u.getPaddingTop(), iD + Math.abs(iD2), this.u.getPaddingBottom() + com.transsion.utils.a.d(this.mContext, i2));
        recyclerView.setClipToPadding(false);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 998) {
            z0((List) objArr[0]);
        }
    }

    public final void h0(int i, String str) {
        p06.K(str);
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity != null) {
            baseActivity.removeCurrentThemeCache();
        }
        this.s.a();
        this.m.setEnabled(false);
        ToastUtils.s(i);
        BaseActivity baseActivity2 = this.mActivity;
        if (baseActivity2 != null) {
            baseActivity2.removeSplashSnapshot();
        }
    }

    public final void i0(ViewPager2 viewPager2) {
        if (viewPager2.getChildCount() == 0) {
            return;
        }
        View childAt = viewPager2.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            for (int i = 0; i < recyclerView.getChildCount(); i++) {
                View childAt2 = recyclerView.getChildAt(i);
                if (childAt2 != null) {
                    ThemePreviewAdapter.g((ImageView) childAt2.findViewById(R.id.iv_preview_skin));
                }
            }
        }
    }

    public void j0(String str, String str2) {
        if (str == null) {
            return;
        }
        String strSubstring = str.substring(str.lastIndexOf(File.separator) + 1);
        ((tu8) new ru8.b().b(ak4.a()).a(xw8.a()).c(str.replace(strSubstring, "")).e().b(tu8.class)).a(strSubstring).d0(k29.c()).g(this.mActivity.bindToLifecycle()).M(k29.c()).subscribe(new d(str2));
    }

    public final void k0() {
        if (this.p != null) {
            for (int i = 0; i < this.p.size(); i++) {
                SkinsMenu skinsMenu = (SkinsMenu) this.p.get(i);
                if (!skinsMenu.isLocalTheme() || i == 0) {
                    skinsMenu.basicColor = vha.n(this.mContext, new ThemeData(skinsMenu.name, skinsMenu.thumbnailPath, skinsMenu.description), R.attr.os_platform_basic_color);
                }
            }
        }
    }

    public final void l0(View view, BaseConstant.SCREEN_TYPE screen_type) {
        Button button = (Button) view.findViewById(R.id.confirm_button);
        this.m = button;
        v0(button, screen_type);
        this.m.setEnabled(!p0());
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.q0(view2);
            }
        });
        if (com.transsion.utils.a.A() && screen_type == BaseConstant.SCREEN_TYPE.TABLE) {
            ((LinearLayout) view.findViewById(R.id.ll_confirm)).setGravity(1);
        }
    }

    public final void m0() {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.isFinishing()) {
            Log.e("SkinsPreviewFragment", "initProgressDialog error");
            return;
        }
        com.transsion.widgetslib.dialog.c cVarH = new com.transsion.widgetslib.dialog.c(this.mContext).i(R.string.mv_download).h(0);
        this.n = cVarH;
        this.o = cVarH.l();
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "skin_preview_page_show");
        }
    }

    public final void n0(View view, int i, int i2) {
        this.u = (ViewPager2) view.findViewById(R.id.viewpager2_theme_preview);
        A0(i, i2);
        ThemePreviewAdapter themePreviewAdapter = new ThemePreviewAdapter(this.mContext);
        this.t = themePreviewAdapter;
        themePreviewAdapter.setNewData(this.p);
        this.u.setOffscreenPageLimit(1);
        this.u.setAdapter(this.t);
        this.t.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i3) {
                this.a.s0(baseQuickAdapter, view2, i3);
            }
        });
        this.t.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i3) {
                this.b.t0(baseQuickAdapter, view2, i3);
            }
        });
        this.u.registerOnPageChangeCallback(this.B);
        this.u.setCurrentItem(this.r, false);
        this.t.v(this.r);
    }

    public final void o0() {
        this.mActivity.resetNavigationBarColor(true);
        this.mActivity.getWindow().setStatusBarColor(0);
        SkinsMenu skinsMenu = this.q;
        if (skinsMenu == null || skinsMenu.isLocalTheme() || this.q.description == null) {
            return;
        }
        int identifier = getResources().getIdentifier(this.q.description, "style", this.mActivity.getPackageName());
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.getTheme() == null) {
            return;
        }
        this.mActivity.getTheme().applyStyle(identifier, true);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1000) {
            this.w = (ThemeData) w6c.f(this.mActivity, "theme_preview_key");
            int i3 = R.drawable.image_custom_preview;
            int i4 = R.drawable.image_custom_preview_large;
            SkinsMenu skinsMenu = new SkinsMenu(i3, i4, getResources().getString(R.string.skins_customize), i4, 0);
            ThemeData themeData = this.w;
            if (themeData != null) {
                String str = themeData.description;
                skinsMenu.description = str;
                String str2 = themeData.path;
                skinsMenu.thumbnailPath = str2;
                skinsMenu.detailPath = str2;
                String str3 = themeData.name;
                skinsMenu.name = str3;
                skinsMenu.backgroundType = themeData.backgroundType;
                skinsMenu.basicColor = vha.n(this.mContext, new ThemeData(str3, str2, str), R.attr.os_platform_basic_color);
                ThemeData themeData2 = this.w;
                skinsMenu.thumbType = themeData2.thumbType;
                skinsMenu.thumbPath = themeData2.tabPath;
                skinsMenu.isSelected = this.q.isSelected;
            }
            this.p.remove(0);
            this.p.add(0, skinsMenu);
            this.t.setNewData(this.p);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (com.transsion.utils.a.A()) {
            getActivity().recreate();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.v = new t03();
        this.w = (ThemeData) w6c.f(this.mActivity, "theme_preview_key");
        this.y = (ThemeData) w6c.f(this.mContext, "skin_theme");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (fc7.c(arguments)) {
            this.p = (List) arguments.getSerializable("skin_list");
            this.r = arguments.getInt("skin_index");
            List list = this.p;
            if (list != null && list.size() > 0) {
                this.q = (SkinsMenu) this.p.get(this.r);
                Log.i("SkinsPreviewFragment", "mSelectedSkinsMenu:" + this.q);
            }
        }
        return layoutInflater.inflate(com.transsion.utils.a.A() ? R.layout.skin_preview_fragment_tablet : R.layout.skin_preview_fragment, viewGroup, false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.widgetslib.dialog.d dVar = this.o;
        if (dVar != null) {
            dVar.dismiss();
        }
        this.v.c(null);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.x = null;
        xn9 xn9Var = this.s;
        if (xn9Var != null) {
            xn9Var.e(this.C);
        }
        ViewPager2 viewPager2 = this.u;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.B);
            i0(this.u);
        }
        h27.c().f(this, DescriptorProtos.Edition.EDITION_PROTO2_VALUE);
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        View view = this.x;
        if (view != null) {
            l0(view, screen_type);
            y0(this.x, screen_type, false);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        r06.e(this.mScreenType, null, "skin_preview_page_show", 932460000120L);
        xn9 xn9VarC = xn9.c();
        this.s = xn9VarC;
        xn9VarC.f(this.C);
        o0();
        initTitleBar(view);
        this.x = view;
        l0(view, this.mScreenType);
        y0(view, this.mScreenType, true);
        k0();
        h27.c().b(this, DescriptorProtos.Edition.EDITION_PROTO2_VALUE);
    }

    public final boolean p0() {
        ThemeData themeData;
        SkinsMenu skinsMenu = this.q;
        boolean z = false;
        if (skinsMenu != null && ((themeData = this.y) != null ? skinsMenu.isSelected || skinsMenu.name.equals(themeData.name) : skinsMenu.name.equals(this.mContext.getResources().getString(R.string.default_skin)))) {
            z = true;
        }
        Log.i("SkinsPreviewFragment", "mSelectedSkinsMenu:" + z);
        return z;
    }

    public final void q0(View view) {
        if (oa1.c()) {
            Log.e("SkinsPreviewFragment", "ingore theme change event");
            return;
        }
        oa1.h();
        SkinsMenu skinsMenu = this.q;
        if (skinsMenu == null || skinsMenu.thumbnailPath != null) {
            j0(skinsMenu.detailPath, skinsMenu.name);
            this.m.setEnabled(false);
            this.v.c(new b(skinsMenu));
        } else {
            if (w6c.w(this.mContext, "skin_theme", new ThemeData(skinsMenu.name, skinsMenu.imageMenu, skinsMenu.description))) {
                h0(R.string.theme_toast, this.q.name);
            } else {
                ToastUtils.s(R.string.operation_fail);
            }
        }
        if (this.q.description != null) {
            int identifier = getResources().getIdentifier(this.q.description, "style", this.mActivity.getPackageName());
            BaseActivity baseActivity = this.mActivity;
            if (baseActivity == null || baseActivity.getTheme() == null) {
                return;
            }
            this.mActivity.getTheme().applyStyle(identifier, true);
        }
    }

    public final void s0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        f5.b(new Intent(this.mActivity, (Class<?>) SkinsCustomizeActivity.class), 1000, this.mActivity);
        hb0.markDirect("skin_preview_edit_cl");
    }

    public final void t0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        this.u.setCurrentItem(i);
    }

    public final void v0(Button button, BaseConstant.SCREEN_TYPE screen_type) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
            layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 180.0f), com.transsion.utils.a.d(this.mContext, 0.0f), com.transsion.utils.a.d(this.mContext, 180.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
        } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
            layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 207.0f), com.transsion.utils.a.d(this.mContext, 0.0f), com.transsion.utils.a.d(this.mContext, 207.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
        } else {
            layoutParams.setMargins(com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 0.0f), com.transsion.utils.a.d(this.mContext, 72.0f), com.transsion.utils.a.d(this.mContext, 30.0f));
        }
        if (com.transsion.utils.a.A() && screen_type == BaseConstant.SCREEN_TYPE.TABLE) {
            if (((double) olb.H(requireContext())) * 0.3d < com.transsion.utils.a.d(requireContext(), 320.0f)) {
                layoutParams.width = (int) (((double) olb.H(requireContext())) * 0.3d);
            } else {
                layoutParams.width = com.transsion.utils.a.d(requireContext(), 330.0f);
            }
            if (button instanceof OSBigButton) {
                ((OSBigButton) button).setMinButtonHeightDp(46);
            }
        }
        button.setLayoutParams(layoutParams);
    }

    @Override
    public SkinsPreviewFragment setBaseActivity(BaseActivity baseActivity) {
        return (SkinsPreviewFragment) super.setBaseActivity(baseActivity);
    }

    public final void x0(boolean z) {
        this.mActivity.setResult(z ? -1 : 0);
        this.mActivity.finish();
    }

    public final void y0(View view, BaseConstant.SCREEN_TYPE screen_type, boolean z) {
        if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
            this.z = 77;
            this.A = 33;
        } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
            this.z = 163;
            this.A = 0;
        } else if (screen_type != BaseConstant.SCREEN_TYPE.TABLE) {
            this.z = 40;
            this.A = 21;
        } else if (com.transsion.utils.a.r(this.mContext)) {
            this.z = 163;
            this.A = 0;
        } else {
            this.z = 77;
            this.A = 33;
        }
        if (z) {
            n0(view, this.z, this.A);
        } else {
            A0(this.z, this.A);
        }
    }

    public final void z0(List list) {
        if (this.p == null || this.t == null || this.u == null || list == null || list.size() <= 0) {
            return;
        }
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new SkinsMenuDiffCallback(this.p, list));
        this.p.clear();
        this.p.addAll(list);
        k0();
        diffResultCalculateDiff.dispatchUpdatesTo(this.t);
        for (int i = 0; i < this.p.size(); i++) {
            SkinsMenu skinsMenu = this.q;
            if (skinsMenu != null && skinsMenu.name.equalsIgnoreCase(((SkinsMenu) this.p.get(i)).name)) {
                this.r = i;
                this.u.setCurrentItem(i, false);
                this.t.v(this.r);
                return;
            }
        }
    }
}
