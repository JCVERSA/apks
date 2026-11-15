package com.transsion.widgetsliquid.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSPopupWindow;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.bq5;
import defpackage.e74;
import defpackage.f43;
import defpackage.gcc;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.qb9;
import defpackage.s53;
import defpackage.yj1;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class OsLiqBottomToolBar extends RelativeLayout {
    public static final String P = "OsLiqBottomToolBar";
    public boolean A;
    public OSLiquidContainerRootLayout B;
    public Animator C;
    public int D;
    public int E;
    public int F;
    public int G;
    public List H;
    public int I;
    public boolean J;
    public int K;
    public int L;
    public jv9 M;
    public kv9 N;
    public kv9 O;
    public LinearLayout b;
    public long c;
    public long d;
    public List e;
    public OSPopupWindow f;
    public View g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean[] l;
    public boolean m;
    public int n;
    public boolean o;
    public int p;
    public int q;
    public Context r;
    public String s;
    public final k t;
    public int u;
    public MenuBuilder v;
    public int w;
    public final int x;
    public final int y;
    public int z;

    public class a implements e74 {
        public final ArrayList b;
        public final int c;

        public a(ArrayList arrayList, int i) {
            this.b = arrayList;
            this.c = i;
        }

        @Override
        public zfb invoke(Boolean bool) {
            for (int i = 0; i < this.b.size(); i++) {
                ((TextView) this.b.get(i)).setTextColor(this.c);
            }
            return zfb.a;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            view.setSelected(true);
            if (OsLiqBottomToolBar.this.m) {
                OsLiqBottomToolBar.e(OsLiqBottomToolBar.this);
                return;
            }
            OsLiqBottomToolBar osLiqBottomToolBar = OsLiqBottomToolBar.this;
            Context context = osLiqBottomToolBar.r;
            OsLiqBottomToolBar osLiqBottomToolBar2 = OsLiqBottomToolBar.this;
            osLiqBottomToolBar.F(context, osLiqBottomToolBar2, 0, (String[]) osLiqBottomToolBar2.e.toArray(new String[0]));
        }
    }

    public class c implements View.OnClickListener {
        public final int b;

        public c(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            OsLiqBottomToolBar.e(OsLiqBottomToolBar.this);
        }
    }

    public class d implements View.OnTouchListener {
        public final OsPressSmoothCornerDrawable b;

        public d(OsPressSmoothCornerDrawable osPressSmoothCornerDrawable) {
            this.b = osPressSmoothCornerDrawable;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.b.showWithFadeAnimation();
                OsLiqBottomToolBar osLiqBottomToolBar = OsLiqBottomToolBar.this;
                osLiqBottomToolBar.G(osLiqBottomToolBar.B);
            } else if (action == 1) {
                this.b.hideWithFadeAnimation();
                OsLiqBottomToolBar osLiqBottomToolBar2 = OsLiqBottomToolBar.this;
                osLiqBottomToolBar2.H(osLiqBottomToolBar2.B);
                view.performClick();
            } else if (action == 3) {
                this.b.hideWithFadeAnimation();
                OsLiqBottomToolBar osLiqBottomToolBar3 = OsLiqBottomToolBar.this;
                osLiqBottomToolBar3.H(osLiqBottomToolBar3.B);
            }
            return true;
        }
    }

    public class e extends AnimatorListenerAdapter {
        public e() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            OsLiqBottomToolBar.this.i = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            OsLiqBottomToolBar.this.setVisibility(0);
        }
    }

    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            OsLiqBottomToolBar.this.setVisibility(8);
            OsLiqBottomToolBar.this.i = false;
            if (OsLiqBottomToolBar.this.g != null) {
                OsLiqBottomToolBar.this.g.setEnabled(true);
            }
            if (OsLiqBottomToolBar.this.t != null) {
                OsLiqBottomToolBar.this.getViewTreeObserver().removeOnPreDrawListener(OsLiqBottomToolBar.this.t);
            }
        }
    }

    public class g implements f43.r {
        public final View a;

        public g(View view) {
            this.a = view;
        }

        @Override
        public void a(f43 f43Var, float f, float f2) {
            this.a.setScaleY(f);
            this.a.setScaleX(f);
        }
    }

    public class h implements f43.r {
        public final View a;

        public h(View view) {
            this.a = view;
        }

        @Override
        public void a(f43 f43Var, float f, float f2) {
            this.a.setScaleY(f);
            this.a.setScaleX(f);
        }
    }

    public class i implements e74 {
        public final ArrayList b;
        public final ArgbEvaluator c;
        public final int[] d;
        public final int e;

        public i(ArrayList arrayList, ArgbEvaluator argbEvaluator, int[] iArr, int i) {
            this.b = arrayList;
            this.c = argbEvaluator;
            this.d = iArr;
            this.e = i;
        }

        @Override
        public zfb invoke(Float f) {
            for (int i = 0; i < this.b.size(); i++) {
                ((TextView) this.b.get(i)).setTextColor(((Integer) this.c.evaluate(f.floatValue(), Integer.valueOf(this.d[i]), Integer.valueOf(this.e))).intValue());
            }
            return zfb.a;
        }
    }

    public class j implements e74 {
        public final int b;
        public final int c;
        public final ArrayList d;

        public j(int i, int i2, ArrayList arrayList) {
            this.b = i;
            this.c = i2;
            this.d = arrayList;
        }

        @Override
        public zfb invoke(Boolean bool) {
            int i = bool.booleanValue() ? this.b : this.c;
            for (int i2 = 0; i2 < this.d.size(); i2++) {
                ((TextView) this.d.get(i2)).setTextColor(i);
            }
            return zfb.a;
        }
    }

    public static class k implements ViewTreeObserver.OnPreDrawListener {
        public final WeakReference b;

        public k(OsLiqBottomToolBar osLiqBottomToolBar) {
            this.b = new WeakReference(osLiqBottomToolBar);
        }

        @Override
        public boolean onPreDraw() {
            OsLiqBottomToolBar osLiqBottomToolBar = (OsLiqBottomToolBar) this.b.get();
            if (osLiqBottomToolBar == null) {
                return true;
            }
            osLiqBottomToolBar.getViewTreeObserver().removeOnPreDrawListener(this);
            osLiqBottomToolBar.setVisibility(8);
            if (!osLiqBottomToolBar.j && !osLiqBottomToolBar.h) {
                return true;
            }
            osLiqBottomToolBar.setVisibility(0);
            osLiqBottomToolBar.openFootOperationBar();
            return true;
        }
    }

    public interface l {
    }

    public OsLiqBottomToolBar(Context context) {
        this(context, null);
    }

    public static l e(OsLiqBottomToolBar osLiqBottomToolBar) {
        osLiqBottomToolBar.getClass();
        return null;
    }

    private int getPopupHeight() {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_popup_menu_bg_margin);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_popup_item_height);
        int i2 = dimensionPixelOffset * 2;
        boolean[] zArr = this.l;
        return zArr != null ? i2 + (zArr.length * dimensionPixelOffset2) : i2;
    }

    @SuppressLint({"RestrictedApi"})
    private void setMenu(MenuBuilder menuBuilder) {
        this.b.removeAllViews();
        this.e.clear();
        this.f = null;
        this.w = -1;
        int size = menuBuilder.size();
        this.K = x(size);
        bq5.j(P, "itemMargin " + this.K + " count " + size);
        if (!this.o) {
            q(menuBuilder, size);
            return;
        }
        if (size <= Math.min(this.p, 6)) {
            this.q = size;
            if (size == 1) {
                p(w(menuBuilder.getItem(0).getTitle().toString()), 0);
                return;
            } else {
                q(menuBuilder, size);
                return;
            }
        }
        int i2 = this.p;
        int i3 = i2 > 6 ? 5 : i2 - 1;
        this.q = i3;
        q(menuBuilder, i3);
        View viewV = v(this.s, false, this.K);
        View viewFindViewById = viewV.findViewById(R.id.os_fob_layout);
        this.g = viewFindViewById;
        setMoreViewListener(viewFindViewById);
        this.b.addView(viewV);
        D(menuBuilder, size);
    }

    private void setMoreViewListener(View view) {
        if (view != null) {
            view.setOnClickListener(new b());
            s(view);
        }
    }

    public final void A() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new e());
        objectAnimatorOfFloat.start();
    }

    public final void B() {
        View viewFindViewById;
        if (this.b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.b.getChildCount(); i2++) {
            View childAt = this.b.getChildAt(i2);
            if (childAt != null && (viewFindViewById = childAt.findViewById(R.id.os_fob_layout)) != null) {
                View viewFindViewById2 = viewFindViewById.findViewById(R.id.os_fob_item_back);
                if (viewFindViewById2 instanceof OsPressSmoothCornerDrawable) {
                    ((OsPressSmoothCornerDrawable) viewFindViewById2).setFillColor(this.I);
                }
            }
        }
    }

    public final void C() {
    }

    public final void D(MenuBuilder menuBuilder, int i2) {
        int i3 = this.q;
        int i4 = i2 - i3;
        if (i4 > 0) {
            this.l = new boolean[i4];
            while (i3 < i2) {
                this.l[i3 - this.q] = true;
                i3++;
            }
        }
        int i5 = this.p;
        int i6 = i5 > 6 ? 5 : i5 - 1;
        this.q = i6;
        while (i6 < i2) {
            this.e.add(menuBuilder.getItem(i6).getTitle().toString());
            this.l[i6 - this.q] = true;
            i6++;
        }
        C();
    }

    public final void E(String[] strArr, int i2) {
        int i3 = this.q;
        this.l = new boolean[i2 - i3];
        while (i3 < i2) {
            this.e.add(strArr[i3]);
            this.l[i3 - this.q] = true;
            i3++;
        }
        C();
    }

    public final void F(Context context, View view, int i2, String[] strArr) {
        int i3 = 0;
        if (this.f == null) {
            this.f = new OSPopupWindow(context, null, 0, R.style.OsLiquidPopupWindowStyle);
            this.f.setContentView((ListView) View.inflate(context, com.transsion.widgetslistitemlayout.R.layout.os_popup_window_layout, null));
        }
        ((ListView) this.f.getMView()).setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public final void onItemClick(AdapterView adapterView, View view2, int i4, long j2) {
                this.b.z(adapterView, view2, i4, j2);
            }
        });
        qb9 qb9VarB = qb9.b(context, strArr);
        ((ListView) this.f.getMView()).setAdapter((ListAdapter) qb9VarB);
        List<Integer> list = this.H;
        if (list != null) {
            qb9VarB.setGroupCounts(list);
        }
        while (true) {
            boolean[] zArr = this.l;
            if (i3 >= zArr.length) {
                break;
            }
            qb9VarB.i(i3, zArr[i3]);
            i3++;
        }
        this.f.setWidth(olb.A0(context, qb9VarB));
        this.f.setOutsideTouchable(true);
        this.f.setFocusable(true);
        if (view.getLayoutDirection() == 0) {
            this.f.J(true, true);
        }
        this.f.N(view, strArr.length);
    }

    public final void G(View view) {
        this.M.c();
        this.M.z(this.N);
        this.M.b(new g(view));
        this.M.p();
    }

    public final void H(View view) {
        this.M.c();
        this.M.z(this.O);
        this.M.b(new h(view));
        this.M.p();
    }

    public final void I(View view, boolean z) {
        if (view != null) {
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            if (viewFindViewById == null) {
                view.setEnabled(z);
                view.setAlpha(z ? 1.0f : 0.4f);
            } else {
                viewFindViewById.setEnabled(z);
                viewFindViewById.setAlpha(z ? 1.0f : 0.4f);
            }
        }
    }

    public void changeFootItem(int i2, Drawable drawable, String str) {
        ImageView itemImageView = getItemImageView(i2);
        if (itemImageView != null && drawable != null) {
            itemImageView.setImageDrawable(null);
            itemImageView.setImageDrawable(drawable);
        }
        TextView itemTextView = getItemTextView(i2);
        if (itemTextView == null || str == null) {
            return;
        }
        itemTextView.setText(str);
    }

    public void changeItemEnable(int i2, boolean z) {
        bq5.j(P, "position = " + i2 + "mVisibleTabCount = " + this.q);
        int i3 = this.q;
        if (i2 < i3) {
            if (i2 < this.b.getChildCount()) {
                I(this.b.getChildAt(i2), z);
            }
        } else {
            boolean[] zArr = this.l;
            if (zArr == null || i2 - i3 >= zArr.length) {
                return;
            }
            zArr[i2 - i3] = z;
        }
    }

    public void changeItems(int[] iArr, int[] iArr2) {
        changeItems(iArr, iArr2, (String[]) null);
    }

    public void changeItemsEnable(boolean[] zArr) {
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.f.dismiss();
        }
        int iMin = Math.min(zArr.length, getItemCount());
        for (int i2 = 0; i2 < iMin; i2++) {
            changeItemEnable(i2, zArr[i2]);
        }
    }

    public void changePopAdapter(int[] iArr, int[] iArr2) {
        String[] strArr = new String[iArr2.length];
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            strArr[i2] = this.r.getResources().getString(iArr2[i2]);
        }
        changePopAdapter(iArr, strArr);
    }

    public void closeFootOperationBar() {
        if (this.i || !this.h) {
            return;
        }
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.f.dismiss();
        }
        View view = this.g;
        if (view != null) {
            view.setEnabled(false);
        }
        this.i = true;
        this.h = false;
        t();
    }

    public void enableMore(boolean z) {
        OSPopupWindow oSPopupWindow;
        View view = this.g;
        if (view != null) {
            I(view, z);
            if (z || (oSPopupWindow = this.f) == null || !oSPopupWindow.isShowing()) {
                return;
            }
            this.f.dismiss();
        }
    }

    public View getForceBCPlatformColorView() {
        return this.B.getOsPressView();
    }

    public int getItemCount() {
        return this.e.size() > 0 ? (this.b.getChildCount() + this.e.size()) - 1 : this.b.getChildCount();
    }

    public int getItemHeight() {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_popup_menu_bg_margin);
        getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_popup_item_height);
        return dimensionPixelOffset * 2;
    }

    @Nullable
    public ImageView getItemImageView(int i2) {
        View itemView = getItemView(i2);
        if (itemView == null) {
            return null;
        }
        return (ImageView) itemView.findViewById(R.id.os_foot_opt_bar_item_icon);
    }

    @Nullable
    public TextView getItemTextView(int i2) {
        View itemView = getItemView(i2);
        if (itemView == null) {
            return null;
        }
        return (TextView) itemView.findViewById(R.id.os_foot_opt_bar_item_text);
    }

    @Nullable
    public View getItemView(int i2) {
        return this.b.getChildAt(i2);
    }

    public OSLiquidContainerRootLayout getLiquidContainer() {
        return this.B;
    }

    public int getPopupMaxHeight() {
        return this.L;
    }

    public OSPopupWindow getPopupWindow() {
        if (this.f == null) {
            this.f = new OSPopupWindow(this.r, null, 0, R.style.OsLiquidPopupWindowStyle);
            this.f.setContentView((ListView) View.inflate(this.r, com.transsion.widgetslistitemlayout.R.layout.os_popup_window_layout, null));
        }
        return this.f;
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void inflateMenu(int i2) {
        inflateMenu(i2, this.J);
    }

    public void initForceBCPlatformColorView() {
        OSLiquidContainerRootLayout oSLiquidContainerRootLayout = this.B;
        if (oSLiquidContainerRootLayout != null) {
            oSLiquidContainerRootLayout.enabledPressView(true);
            this.B.getOsPressView().setAlpha(1.0f);
            this.B.getOsPressView().setCornerRadius(this.B.getCornerRadius());
        }
    }

    public void initShow(boolean z) {
        this.j = z;
    }

    public final void o(View view) {
        if (!olb.q0(getContext()) || view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            int dimensionPixelOffset = this.r.getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_item_safe_inset);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (this.z == 2) {
                dimensionPixelOffset <<= 1;
            }
            marginLayoutParams.setMarginStart(dimensionPixelOffset);
            marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginStart());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.I = ContextCompat.getColor(this.r, R.color.os_liquid_bottomtoolbar_press_color);
        B();
        updateFootBarView();
        if (this.h) {
            int i2 = getResources().getConfiguration().orientation;
            if (this.u != i2) {
                getViewTreeObserver().addOnPreDrawListener(this.t);
            }
            this.u = i2;
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.C;
        if (animator != null) {
            animator.cancel();
            this.C = null;
        }
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.D, 1073741824), i3);
    }

    public void openFootOperationBar() {
        if (this.i || this.h) {
            return;
        }
        this.i = true;
        this.h = true;
        A();
    }

    public final void p(View view, int i2) {
        View viewFindViewById = view.findViewById(R.id.os_fob_layout);
        if (viewFindViewById != null) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setOnClickListener(new c(i2));
            s(viewFindViewById);
        }
        this.b.addView(view);
    }

    public final void q(MenuBuilder menuBuilder, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            CharSequence title = menuBuilder.getItem(i3).getTitle();
            Objects.requireNonNull(title);
            p(v(title.toString(), i3 == 0, this.K), i3);
            i3++;
        }
    }

    public final void r(int[] iArr, String[] strArr, String[] strArr2, int i2) {
        TextView textView;
        int i3 = 0;
        while (i3 < i2 && i3 < strArr.length) {
            View viewV = v(strArr[i3], i3 == 0, this.K);
            if (strArr2 != null && i3 < strArr2.length && !TextUtils.isEmpty(strArr2[i3]) && (textView = (TextView) viewV.findViewById(R.id.os_foot_opt_bar_item_text)) != null) {
                textView.setContentDescription(strArr2[i3]);
            }
            p(viewV, i3);
            i3++;
        }
    }

    public final void s(View view) {
        if (olb.r0(getContext()) || olb.P) {
            return;
        }
        View viewFindViewById = view.findViewById(R.id.os_fob_item_back);
        if (viewFindViewById instanceof OsPressSmoothCornerDrawable) {
            OsPressSmoothCornerDrawable osPressSmoothCornerDrawable = (OsPressSmoothCornerDrawable) viewFindViewById;
            osPressSmoothCornerDrawable.setFillColor(this.I);
            view.setOnTouchListener(new d(osPressSmoothCornerDrawable));
        }
    }

    public void setAnim(boolean z) {
        this.i = z;
    }

    public void setBCPlatformColor(int i2) {
        OSLiquidContainerRootLayout oSLiquidContainerRootLayout = this.B;
        if (oSLiquidContainerRootLayout == null || oSLiquidContainerRootLayout.getOsPressView() == null) {
            return;
        }
        this.B.getOsPressView().setFillColor(i2);
    }

    public void setClickInterval(long j2) {
        this.d = j2;
    }

    public void setDisableDefaultClick(boolean z) {
        this.m = z;
    }

    public void setGroupCounts(List<Integer> list) {
        this.H = list;
    }

    public void setLandscape(boolean z) {
    }

    public void setLightTypeConfig(LightTypeConfig lightTypeConfig) {
        this.B.setLightTypeConfig(lightTypeConfig);
    }

    public void setMixLevel(int i2) {
        this.B.setMixLevel(i2);
    }

    @RequiresApi(api = 31)
    public void setNightMode(boolean z) {
        this.B.setNightMode(z);
    }

    public void setOnFootOptBarClickListener(l lVar) {
    }

    public void setPadding(int i2) {
        this.K = i2;
    }

    public void setPopList(int[] iArr) {
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.f.dismiss();
        }
        this.e.clear();
        String[] strArr = new String[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            String string = this.r.getResources().getString(iArr[i2]);
            strArr[i2] = string;
            this.e.add(string);
        }
    }

    public void setPopupFullScreenMaxHeight(int i2) {
        if (i2 > 0) {
            setPopupMaxHeight(i2 - getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_min_height));
            return;
        }
        this.L = 0;
        if (this.f != null) {
            C();
        }
    }

    public void setPopupMaxHeight(int i2) {
        this.L = i2;
        if (this.f != null) {
            C();
        }
    }

    public void setSingGroup(boolean z) {
        this.J = z;
    }

    public void setTopLineVisible(int i2) {
        View viewFindViewById = findViewById(R.id.os_fob_top_line);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(i2);
        }
    }

    @Override
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        this.B.setVisibility(i2);
    }

    public void startBgModeTransition(boolean z) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        Animator animator = this.C;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayListU = u();
        int[] iArr = new int[arrayListU.size()];
        for (int i2 = 0; i2 < arrayListU.size(); i2++) {
            iArr[i2] = ((TextView) arrayListU.get(i2)).getCurrentTextColor();
        }
        ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        int color = this.r.getColor(com.transsion.widgetsliquid.R.color.os_color_white70);
        int color2 = this.r.getColor(com.transsion.widgetsliquid.R.color.os_color_gray70);
        int i3 = z ? color : color2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.B);
        this.C = OSLiquidContainerRootLayout.INSTANCE.c(arrayList, z, 200L, new i(arrayListU, argbEvaluator, iArr, i3), new j(color, color2, arrayListU), new a(arrayListU, i3));
    }

    public final void t() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new f());
        objectAnimatorOfFloat.start();
    }

    public void toggleFootOperationBar() {
        if (this.h) {
            closeFootOperationBar();
        } else {
            openFootOperationBar();
        }
    }

    public final ArrayList u() {
        TextView textView;
        ArrayList arrayList = new ArrayList();
        if (this.b == null) {
            return arrayList;
        }
        for (int i2 = 0; i2 < this.b.getChildCount(); i2++) {
            View childAt = this.b.getChildAt(i2);
            if (childAt != null && (textView = (TextView) childAt.findViewById(R.id.os_foot_opt_bar_item_text)) != null) {
                arrayList.add(textView);
            }
        }
        return arrayList;
    }

    public void updateFootBarView() {
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow == null || !oSPopupWindow.isShowing()) {
            return;
        }
        this.f.dismiss();
    }

    public final View v(String str, boolean z, int i2) {
        int dimensionPixelOffset = olb.g0(this.r) ? this.r.getResources().getDimensionPixelOffset(R.dimen.os_pad_space050) : this.r.getResources().getDimensionPixelOffset(R.dimen.os_space050);
        this.b.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
        Context context = getContext();
        if (z) {
            i2 = 0;
        }
        View viewH = gcc.h(context, true, i2);
        o(viewH);
        TextView textView = (TextView) viewH.findViewById(R.id.os_foot_opt_bar_item_text);
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
            textView.setContentDescription(str);
        }
        return viewH;
    }

    public final View w(String str) {
        this.b.setPadding(0, 0, 0, 0);
        View viewI = gcc.i(getContext(), true);
        o(viewI);
        TextView textView = (TextView) viewI.findViewById(R.id.os_foot_opt_bar_item_text);
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
            textView.setContentDescription(str);
        }
        return viewI;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    public final int x(int i2) {
        int i3;
        int i4;
        int iD;
        if (!this.J || olb.g0(this.r)) {
            i3 = this.K;
        } else {
            int i5 = this.p;
            int i6 = this.E;
            if (i5 == i6) {
                if (i2 == this.F) {
                    iD = yj1.d(this.r, this.G);
                } else if (i2 >= i6) {
                    iD = this.r.getResources().getDimensionPixelOffset(R.dimen.os_liquid_toolbar_maxwidth_padding);
                } else {
                    i3 = 0;
                }
                i3 = -iD;
            } else {
                int i7 = this.F;
                if (i5 != i7 || i2 < i7) {
                    i3 = 0;
                } else {
                    iD = yj1.d(this.r, this.G);
                    i3 = -iD;
                }
            }
        }
        if (!olb.g0(this.r)) {
            i4 = this.p;
            if (i2 <= i4) {
                i4 = i2;
            }
        } else if (i2 > 6) {
            i4 = 6;
        } else {
            i4 = i2;
        }
        if (i4 == 1) {
            this.D = this.r.getResources().getDimensionPixelOffset(R.dimen.os_liquid_toolbar_single_width);
        } else if (olb.g0(this.r)) {
            this.D = (this.r.getResources().getDimensionPixelOffset(R.dimen.os_pad_space050) * 2) + (this.r.getResources().getDimensionPixelOffset(R.dimen.os_liquid_toolbar_width) * i4) + ((i4 - 1) * i3);
        } else if (i2 >= 6) {
            this.D = this.r.getResources().getDimensionPixelOffset(R.dimen.os_liquid_toolbar_maxwidth);
        } else {
            this.D = (this.r.getResources().getDimensionPixelOffset(R.dimen.os_space050) * 2) + (this.r.getResources().getDimensionPixelOffset(R.dimen.os_liquid_toolbar_width) * i4) + ((i4 - 1) * i3);
        }
        return i3;
    }

    public final void y() {
        this.N.g(0.99f);
        this.N.i(250.0f);
        this.N.h(1.05f);
        this.O.g(0.4f);
        this.O.i(250.0f);
        this.O.h(1.0f);
    }

    public final void z(AdapterView adapterView, View view, int i2, long j2) {
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow == null || !oSPopupWindow.isShowing()) {
            return;
        }
        this.f.dismiss();
    }

    public OsLiqBottomToolBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void changeItems(int[] iArr, int[] iArr2, String[] strArr) {
        String[] strArr2 = new String[iArr2.length];
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            strArr2[i2] = this.r.getResources().getString(iArr2[i2]);
        }
        changeItems(iArr, strArr2, strArr);
    }

    @SuppressLint({"RestrictedApi"})
    public void inflateMenu(int i2, boolean z) {
        this.J = z;
        MenuInflater menuInflater = new MenuInflater(getContext());
        MenuBuilder menuBuilder = new MenuBuilder(getContext());
        this.v = menuBuilder;
        menuInflater.inflate(i2, menuBuilder);
        setMenu(this.v);
    }

    public OsLiqBottomToolBar(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public OsLiqBottomToolBar(Context context, AttributeSet attributeSet, int i2, int i3) {
        int dimensionPixelOffset;
        super(context, attributeSet, i2, i3);
        this.c = 0L;
        this.d = 0L;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = false;
        this.m = false;
        this.w = -1;
        this.x = 100;
        this.y = 100;
        this.D = 0;
        this.E = 6;
        this.F = 5;
        this.G = 2;
        this.J = true;
        this.K = 0;
        this.N = new kv9();
        this.O = new kv9();
        OSLiquidContainerRootLayout oSLiquidContainerRootLayout = new OSLiquidContainerRootLayout(context, attributeSet, i2);
        this.B = oSLiquidContainerRootLayout;
        oSLiquidContainerRootLayout.setShadowCorner(yj1.d(context, (int) context.getResources().getDimension(R.dimen.os_radius_xxl)));
        if (!olb.P) {
            this.B.setClickable(false);
        }
        this.B.setElasticTypeConfig(ElasticTypeConfig.BOTTOM_TOOLBAR);
        this.B.setLightTypeConfig(LightTypeConfig.BOTTOM_TOOLBAR_AUTO);
        this.B.setMixLevel(3);
        addView(this.B);
        this.r = context;
        LayoutInflater.from(context).inflate(com.transsion.widgetsliquid.R.layout.os_liquid_foot_opt_bar_root, this.B);
        this.M = new jv9(this, f43.q);
        this.b = (LinearLayout) findViewById(R.id.os_foot_opt_bar_container);
        if (olb.g0(context)) {
            dimensionPixelOffset = this.r.getResources().getDimensionPixelOffset(R.dimen.os_pad_space050);
        } else {
            dimensionPixelOffset = this.r.getResources().getDimensionPixelOffset(R.dimen.os_space050);
        }
        this.b.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
        this.e = new ArrayList();
        this.s = context.getString(R.string.os_more);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FootOperationBar);
        this.o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_isFootActionBar, true);
        this.A = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_isFootBarOnlyPortrait, false);
        this.J = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_single_group, true);
        this.K = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.FootOperationBar_foot_item_margin, 0.0f);
        if (this.o) {
            this.n = olb.m(this.r, R.attr.os_text_primary, R.color.os_text_primary_hios);
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.FootOperationBar_foot_max_visible_tab_count, 6);
        this.p = i4;
        if (i4 < 3) {
            this.p = 3;
        }
        this.j = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_init_show, false);
        this.k = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_immersive, false);
        int i5 = R.styleable.FootOperationBar_foot_opt_menu;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            inflateMenu(typedArrayObtainStyledAttributes.getResourceId(i5, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        setBackground(null);
        boolean zX = olb.X(context);
        bq5.c(P, "FootOperationBar: isGestureNavigationBarOn ==" + zX + ", mImmersive==" + this.k);
        k kVar = new k(this);
        this.t = kVar;
        if (!this.A) {
            getViewTreeObserver().addOnPreDrawListener(kVar);
        }
        setClickable(true);
        this.u = getResources().getConfiguration().orientation;
        this.I = ContextCompat.getColor(this.r, R.color.os_liquid_bottomtoolbar_press_color);
        y();
    }

    public void changePopAdapter(int[] iArr, String[] strArr) {
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.f.dismiss();
        }
        this.e.clear();
        this.f = null;
        E(strArr, iArr.length);
    }

    public void changeFootItem(int i2, int i3, String str) {
        changeFootItem(i2, ContextCompat.getDrawable(this.r, i3), str);
    }

    public void changeItems(int[] iArr, String[] strArr) {
        changeItems(iArr, strArr, (String[]) null);
    }

    public void changeFootItem(int i2, int i3, int i4) {
        changeFootItem(i2, i3, getResources().getString(i4));
    }

    public void changeItems(int[] iArr, String[] strArr, String[] strArr2) {
        TextView textView;
        if (iArr == null || strArr == null) {
            return;
        }
        OSPopupWindow oSPopupWindow = this.f;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.f.dismiss();
        }
        this.b.removeAllViews();
        this.e.clear();
        this.f = null;
        this.w = -1;
        int length = iArr.length;
        this.K = x(length);
        bq5.j(P, "resId " + iArr.length + " titleId " + strArr.length + " itemMargin " + this.K);
        if (length <= Math.min(this.p, 6)) {
            this.q = length;
            if (length == 1 && strArr.length > 0) {
                View viewW = w(strArr[0]);
                if (strArr2 != null && strArr2.length > 0 && !TextUtils.isEmpty(strArr2[0]) && (textView = (TextView) viewW.findViewById(R.id.os_foot_opt_bar_item_text)) != null) {
                    textView.setContentDescription(strArr2[0]);
                }
                p(viewW, 0);
                return;
            }
            r(iArr, strArr, strArr2, length);
            return;
        }
        int i2 = this.p;
        int i3 = i2 > 6 ? 5 : i2 - 1;
        this.q = i3;
        r(iArr, strArr, strArr2, i3);
        View viewV = v(this.s, false, this.K);
        View viewFindViewById = viewV.findViewById(R.id.os_fob_layout);
        this.g = viewFindViewById;
        setMoreViewListener(viewFindViewById);
        this.b.addView(viewV);
        E(strArr, length);
    }

    public void changeFootItem(int i2, String str) {
        changeFootItem(i2, (Drawable) null, str);
    }

    public void changeFootItem(int i2, Drawable drawable) {
        changeFootItem(i2, drawable, (String) null);
    }
}
