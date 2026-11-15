package com.transsion.playercommon.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.OnlineFootOperationBarImage;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.view.BadgeView;
import defpackage.b39;
import defpackage.c06;
import defpackage.n7a;
import defpackage.olb;
import defpackage.qha;
import defpackage.r0a;
import defpackage.s53;
import defpackage.vha;
import defpackage.ydc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class TabOperationBar extends FrameLayout {
    public final n A;
    public float B;
    public int C;
    public ViewTreeObserver.OnDrawListener D;
    public View E;
    public final int F;
    public final int G;
    public boolean H;
    public List I;
    public final int J;
    public final int K;
    public boolean L;
    public View M;
    public BaseConstant.SCREEN_TYPE N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public boolean U;
    public int b;
    public final LinearLayout c;
    public o d;
    public p e;
    public final List f;
    public ListPopupWindow g;
    public View h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean[] l;
    public int m;
    public final boolean n;
    public int o;
    public int p;
    public int q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public boolean u;
    public int v;
    public int w;
    public final List x;
    public final Context y;
    public final int z;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            TabOperationBar.this.j = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            TabOperationBar.this.setVisibility(0);
            TabOperationBar.this.getViewTreeObserver().addOnPreDrawListener(TabOperationBar.this.A);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            TabOperationBar.this.setVisibility(8);
            TabOperationBar.this.j = false;
            if (TabOperationBar.this.h != null) {
                TabOperationBar.this.h.setEnabled(true);
            }
            TabOperationBar.this.getViewTreeObserver().removeOnPreDrawListener(TabOperationBar.this.A);
        }
    }

    public class c extends AnimatorListenerAdapter {
        public final View b;

        public c(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.b.setVisibility(8);
            this.b.setScaleX(1.0f);
            this.b.setScaleY(1.0f);
            this.b.setAlpha(1.0f);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            TabOperationBar.this.h.setSelected(true);
            TabOperationBar.this.g.show();
        }
    }

    public class e implements View.OnClickListener {
        public final int b;

        public e(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            if (TabOperationBar.this.d != null) {
                TabOperationBar.this.d.onItemClick(this.b);
                if (TabOperationBar.this.t) {
                    TabOperationBar.this.setItemSelectState(this.b);
                } else {
                    TabOperationBar.this.O(this.b, true);
                }
            }
        }
    }

    public class f implements View.OnClickListener {
        public final int b;

        public f(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            if (TabOperationBar.this.d != null) {
                TabOperationBar.this.d.onItemClick(this.b);
                if (TabOperationBar.this.t) {
                    TabOperationBar.this.setItemSelectState(this.b);
                } else {
                    TabOperationBar.this.O(this.b, true);
                }
            }
        }
    }

    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }
    }

    public class h implements RequestListener {
        public final long b;

        public h(long j) {
            this.b = j;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            if (dataSource != DataSource.REMOTE) {
                return false;
            }
            c06.o(System.currentTimeMillis() - this.b, "ott_icon");
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public class i implements RequestListener {
        public final long b;

        public i(long j) {
            this.b = j;
        }

        @Override
        public boolean onResourceReady(PictureDrawable pictureDrawable, Object obj, Target target, DataSource dataSource, boolean z) {
            if (dataSource != DataSource.REMOTE) {
                return false;
            }
            c06.o(System.currentTimeMillis() - this.b, "ott_icon");
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public class j implements RequestListener {
        public final long b;

        public j(long j) {
            this.b = j;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            if (dataSource != DataSource.REMOTE) {
                return false;
            }
            c06.o(System.currentTimeMillis() - this.b, "ott_icon");
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public class k implements View.OnClickListener {
        public k() {
        }

        @Override
        public void onClick(View view) {
            TabOperationBar.this.h.setSelected(true);
            if (TabOperationBar.this.g == null || TabOperationBar.this.g.isShowing()) {
                return;
            }
            TabOperationBar.this.g.show();
        }
    }

    public class l implements PopupWindow.OnDismissListener {
        public l() {
        }

        @Override
        public void onDismiss() {
            TabOperationBar.this.h.setSelected(false);
        }
    }

    public class m extends BaseAdapter {

        public class a implements View.OnClickListener {
            public final int b;

            public a(int i) {
                this.b = i;
            }

            @Override
            public void onClick(View view) {
                if (TabOperationBar.this.d != null) {
                    TabOperationBar.this.d.onItemClick(this.b);
                }
                TabOperationBar.this.g.dismiss();
            }
        }

        public class b {
            public TextView a;

            public b() {
            }
        }

        @Override
        public int getCount() {
            return TabOperationBar.this.f.size();
        }

        @Override
        public Object getItem(int i) {
            return TabOperationBar.this.f.get(i);
        }

        @Override
        public long getItemId(int i) {
            return i;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = LayoutInflater.from(TabOperationBar.this.getContext()).inflate(R.layout.os_foot_opt_bar_popup_item, viewGroup, false);
                bVar = new b();
                bVar.a = (TextView) view.findViewById(R.id.os_foot_opt_bar_popup_item_text);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            bVar.a.setText((CharSequence) TabOperationBar.this.f.get(i));
            TabOperationBar tabOperationBar = TabOperationBar.this;
            tabOperationBar.S(view, tabOperationBar.l[i]);
            view.setOnClickListener(new a(i + TabOperationBar.this.w));
            return view;
        }

        public m() {
        }
    }

    public static class n implements ViewTreeObserver.OnPreDrawListener {
        public final WeakReference b;

        public n(TabOperationBar tabOperationBar) {
            this.b = new WeakReference(tabOperationBar);
        }

        @Override
        public boolean onPreDraw() {
            TabOperationBar tabOperationBar = (TabOperationBar) this.b.get();
            if (tabOperationBar == null) {
                return true;
            }
            tabOperationBar.getViewTreeObserver().removeOnPreDrawListener(this);
            tabOperationBar.offsetTopAndBottom(tabOperationBar.getMeasuredHeight());
            tabOperationBar.setVisibility(8);
            if (!tabOperationBar.k && !tabOperationBar.i) {
                return true;
            }
            tabOperationBar.setVisibility(0);
            return true;
        }
    }

    public interface o {
        void onItemClick(int i);
    }

    public interface p {
        void onHeaderClick();
    }

    public TabOperationBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = false;
        this.j = false;
        this.k = false;
        this.u = true;
        this.x = new ArrayList();
        this.B = 0.9f;
        this.I = new ArrayList();
        this.N = BaseConstant.l;
        this.y = context;
        this.b = getResources().getDisplayMetrics().widthPixels;
        this.G = getResources().getColor(R.color.online_video_bottom_tab_text_color, context.getTheme());
        LayoutInflater.from(context).inflate(R.layout.tab_opt_bar_root, this);
        this.c = (LinearLayout) findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_container);
        this.f = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TabOperationBar);
        this.N = com.transsion.utils.a.k(context);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabOperationBar_isFootActionBar, false);
        this.t = z;
        this.u = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabOperationBar_foot_need_change_img_color, false);
        this.U = qha.b(context);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color, R.attr.os_foot_more});
        int color = typedArrayObtainStyledAttributes2.getColor(0, getResources().getColor(R.color.os_platform_basic_color_hios));
        this.z = typedArrayObtainStyledAttributes2.getResourceId(1, R.drawable.os_ic_foot_more_hios);
        typedArrayObtainStyledAttributes2.recycle();
        if (z) {
            int color2 = ContextCompat.getColor(context, R.color.os_fill_icon_primary_color);
            this.q = color2;
            this.p = Color.argb(51, Color.red(color2), Color.green(this.q), Color.blue(this.q));
            int color3 = ContextCompat.getColor(context, R.color.os_text_primary_color);
            this.m = color3;
            this.o = Color.argb(51, Color.red(color3), Color.green(this.m), Color.blue(this.m));
        } else {
            this.o = ContextCompat.getColor(context, R.color.os_text_primary_color);
            String osType = olb.getOsType();
            String[] strArr = olb.a;
            if (strArr[1].equalsIgnoreCase(osType)) {
                this.p = ContextCompat.getColor(context, R.color.os_fill_icon_toggle_color);
                this.q = ContextCompat.getColor(context, R.color.os_fill_icon_secondary_color);
                this.m = ContextCompat.getColor(context, R.color.os_text_tertiary_color);
            } else if (strArr[0].equalsIgnoreCase(osType)) {
                this.p = ContextCompat.getColor(context, R.color.os_fill_icon_tertiary_color);
                this.q = ContextCompat.getColor(context, R.color.os_fill_icon_quaternary_color);
                this.m = ContextCompat.getColor(context, R.color.os_text_quinary_color);
            } else {
                this.p = olb.z(context);
                this.q = ContextCompat.getColor(context, R.color.os_fill_icon_secondary_color);
                this.o = olb.z(context);
                this.m = ContextCompat.getColor(context, R.color.os_text_tertiary_color);
            }
        }
        int i2 = R.styleable.TabOperationBar_foot_click_image_color;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i2);
        this.s = zHasValue;
        if (zHasValue) {
            this.p = typedArrayObtainStyledAttributes.getColor(i2, -1);
        }
        int i3 = R.styleable.TabOperationBar_foot_normal_image_color;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i3);
        this.r = zHasValue2;
        if (zHasValue2) {
            this.q = typedArrayObtainStyledAttributes.getColor(i3, SupportMenu.CATEGORY_MASK);
        }
        int i4 = R.styleable.TabOperationBar_foot_text_color;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i4);
        this.n = zHasValue3;
        if (zHasValue3) {
            this.m = typedArrayObtainStyledAttributes.getColor(i4, getResources().getColor(R.color.os_text_secondary_color));
        }
        this.F = this.m;
        int i5 = R.styleable.TabOperationBar_foot_click_text_color;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            this.o = typedArrayObtainStyledAttributes.getColor(i5, color);
        }
        int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.TabOperationBar_foot_max_visible_tab_count, 5);
        this.v = i6;
        if (i6 < 3) {
            this.v = 3;
        }
        E(context);
        F();
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.TabOperationBar_foot_opt_headerLayout, 0);
        if (resourceId != 0) {
            addHeaderView(resourceId);
        }
        int i7 = R.styleable.TabOperationBar_foot_opt_menu;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            inflateMenu(typedArrayObtainStyledAttributes.getResourceId(i7, 0));
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TabOperationBar_foot_init_show, false);
        typedArrayObtainStyledAttributes.recycle();
        n nVar = new n(this);
        this.A = nVar;
        getViewTreeObserver().addOnPreDrawListener(nVar);
        setClickable(true);
        this.J = (int) TypedValue.applyDimension(1, 12.0f, getResources().getDisplayMetrics());
        this.K = (int) TypedValue.applyDimension(1, 6.0f, getResources().getDisplayMetrics());
    }

    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0097  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a9  */
    private void setContainerWidth(int i2) {
        float fApplyDimension;
        int dimensionPixelSize;
        FrameLayout.LayoutParams layoutParams;
        BaseConstant.SCREEN_TYPE screen_type;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    fApplyDimension = TypedValue.applyDimension(1, this.L ? 16.66f : 18.0f, displayMetrics);
                } else {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding);
                            if (olb.w0(this.y)) {
                                dimensionPixelSize += this.y.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                            }
                        } else {
                            fApplyDimension = TypedValue.applyDimension(1, this.L ? 17.66f : 10.0f, displayMetrics);
                        }
                        layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
                        LinearLayout linearLayout = this.c;
                        BaseConstant.SCREEN_TYPE screen_type2 = this.N;
                        screen_type = BaseConstant.SCREEN_TYPE.FOLD;
                        linearLayout.setOrientation(screen_type2 == screen_type ? 0 : 1);
                        if (this.N != screen_type) {
                            layoutParams.width = this.P;
                            layoutParams.height = -1;
                            LinearLayout linearLayout2 = this.c;
                            linearLayout2.setPadding(dimensionPixelSize, this.S, dimensionPixelSize, linearLayout2.getPaddingBottom());
                        } else {
                            layoutParams.width = -1;
                            layoutParams.height = -2;
                            LinearLayout linearLayout3 = this.c;
                            linearLayout3.setPadding(dimensionPixelSize, 0, dimensionPixelSize, linearLayout3.getPaddingBottom());
                        }
                        this.c.setLayoutParams(layoutParams);
                    }
                    fApplyDimension = TypedValue.applyDimension(1, this.L ? 16.66f : 16.0f, displayMetrics);
                }
            } else {
                fApplyDimension = TypedValue.applyDimension(1, this.L ? 48.66f : 18.0f, displayMetrics);
            }
        } else {
            fApplyDimension = TypedValue.applyDimension(1, this.L ? 210.0f : 99.0f, displayMetrics);
        }
        dimensionPixelSize = (int) fApplyDimension;
        layoutParams = (FrameLayout.LayoutParams) this.c.getLayoutParams();
        LinearLayout linearLayout4 = this.c;
        BaseConstant.SCREEN_TYPE screen_type3 = this.N;
        screen_type = BaseConstant.SCREEN_TYPE.FOLD;
        linearLayout4.setOrientation(screen_type3 == screen_type ? 0 : 1);
        if (this.N != screen_type) {
            layoutParams.width = this.P;
            layoutParams.height = -1;
            LinearLayout linearLayout5 = this.c;
            linearLayout5.setPadding(dimensionPixelSize, this.S, dimensionPixelSize, linearLayout5.getPaddingBottom());
        } else {
            layoutParams.width = -1;
            layoutParams.height = -2;
            LinearLayout linearLayout6 = this.c;
            linearLayout6.setPadding(dimensionPixelSize, 0, dimensionPixelSize, linearLayout6.getPaddingBottom());
        }
        this.c.setLayoutParams(layoutParams);
    }

    private void setImageColorStateList(ImageView imageView) {
        int[][] iArr = new int[2][];
        if (this.t) {
            iArr[0] = new int[]{android.R.attr.state_pressed};
        } else {
            iArr[0] = new int[]{android.R.attr.state_selected};
        }
        iArr[1] = new int[0];
        imageView.setImageTintList(new ColorStateList(iArr, new int[]{this.p, this.q}));
    }

    @SuppressLint({"RestrictedApi"})
    private void setMenu(MenuBuilder menuBuilder) {
        this.c.removeAllViews();
        this.f.clear();
        this.g = null;
        int size = menuBuilder.size();
        setContainerWidth(size);
        if (this.t) {
            int i2 = this.v;
            if (size > i2 - 1) {
                int i3 = i2 > 5 ? 4 : i2 - 1;
                this.w = i3;
                s(menuBuilder, i3);
                View viewA = A(this.z, this.y.getResources().getString(R.string.os_foot_opt_bar_more));
                View viewFindViewById = viewA.findViewById(R.id.os_fob_layout);
                this.h = viewFindViewById;
                viewFindViewById.setOnClickListener(new d());
                this.c.addView(viewA);
                P(menuBuilder, size);
                return;
            }
        }
        s(menuBuilder, size);
    }

    public final View A(int i2, String str) {
        return B(this.y.getDrawable(i2), str);
    }

    public final View B(Drawable drawable, String str) {
        View viewInflate = this.t ? LayoutInflater.from(getContext()).inflate(R.layout.tab_opt_action_bar_item, (ViewGroup) this.c, false) : LayoutInflater.from(getContext()).inflate(R.layout.tab_opt_bar_item, (ViewGroup) this.c, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.os_foot_opt_bar_item_icon);
        TextView textView = (TextView) viewInflate.findViewById(R.id.os_foot_opt_bar_item_text);
        if (drawable != null) {
            drawable.mutate();
            imageView.setImageDrawable(drawable);
            setImageColorStateList(imageView);
        }
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
            if (this.t) {
                textView.setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{this.o, this.m}));
            } else {
                textView.setTextColor(this.m);
            }
        }
        R(viewInflate);
        return viewInflate;
    }

    public final View C(OnlineFootOperationBarImage onlineFootOperationBarImage) {
        View viewInflate;
        ImageView imageView;
        if (TextUtils.isEmpty(onlineFootOperationBarImage.title)) {
            viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.no_title_item_for_foot_operation_bar, (ViewGroup) this.c, false);
            imageView = (ImageView) viewInflate.findViewById(R.id.os_foot_opt_bar_item_icon);
        } else {
            viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_opt_action_bar_item, (ViewGroup) this.c, false);
            imageView = (ImageView) viewInflate.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_icon);
            TextView textView = (TextView) viewInflate.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
            textView.setText(onlineFootOperationBarImage.title);
            textView.setTextColor(this.m);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (onlineFootOperationBarImage.unselectedUrl.endsWith(".svg")) {
            Glide.with(this.y).as(PictureDrawable.class).listener(new n7a()).load2(onlineFootOperationBarImage.unselectedUrl).placeholder(onlineFootOperationBarImage.placeHolderNormalResId).addListener(new i(jCurrentTimeMillis)).into(imageView);
        } else {
            Glide.with(this.y).asBitmap().load2(onlineFootOperationBarImage.unselectedUrl).placeholder(onlineFootOperationBarImage.placeHolderNormalResId).addListener(new j(jCurrentTimeMillis)).into(imageView);
        }
        R(viewInflate);
        if (TextUtils.isEmpty(onlineFootOperationBarImage.title)) {
            x(viewInflate);
        }
        return viewInflate;
    }

    public final View D(String str, String str2) {
        View viewInflate;
        ImageView imageView;
        if (TextUtils.isEmpty(str2)) {
            viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.no_title_item_for_foot_operation_bar, (ViewGroup) this.c, false);
            imageView = (ImageView) viewInflate.findViewById(R.id.os_foot_opt_bar_item_icon);
        } else {
            viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_opt_action_bar_item, (ViewGroup) this.c, false);
            imageView = (ImageView) viewInflate.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_icon);
            TextView textView = (TextView) viewInflate.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
            textView.setText(str2);
            textView.setTextColor(this.m);
        }
        if (!r0a.g(str)) {
            Glide.with(this.y).asBitmap().load2(str).into(imageView);
        }
        R(viewInflate);
        if (TextUtils.isEmpty(str2)) {
            x(viewInflate);
        }
        return viewInflate;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b5  */
    public final void E(Context context) {
        int dimensionPixelSize;
        if (context != null) {
            G(context.getResources().getConfiguration());
            setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height));
            int dimensionPixelSize2 = 0;
            if (getBackground() == null) {
                if (olb.a[0].equalsIgnoreCase(olb.getOsType())) {
                    this.C = ContextCompat.getColor(context, R.color.os_altitude_quaternary_color);
                } else {
                    this.C = ContextCompat.getColor(context, R.color.os_altitude_primary_color);
                }
            }
            if (Build.VERSION.SDK_INT >= 30 && olb.w0(this.y)) {
                int rotation = this.y.getDisplay().getRotation();
                int paddingLeft = this.c.getPaddingLeft();
                int paddingTop = this.c.getPaddingTop();
                int paddingRight = this.c.getPaddingRight();
                int paddingBottom = this.c.getPaddingBottom();
                if (rotation == 0) {
                    dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding) + this.y.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                    dimensionPixelSize = dimensionPixelSize2;
                } else if (rotation == 1) {
                    int dimensionPixelSize3 = this.y.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                    setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height_curve_land));
                    dimensionPixelSize2 = dimensionPixelSize3;
                    dimensionPixelSize = 0;
                } else if (rotation == 2) {
                    dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding) + this.y.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                    dimensionPixelSize = dimensionPixelSize2;
                } else if (rotation != 3) {
                    dimensionPixelSize2 = paddingLeft;
                    dimensionPixelSize = paddingRight;
                } else {
                    dimensionPixelSize = this.y.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                    setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height_curve_land));
                }
                this.c.setPadding(dimensionPixelSize2, paddingTop, dimensionPixelSize, paddingBottom);
            }
            this.c.setMinimumHeight(getMinimumHeight());
        }
    }

    public final void F() {
        this.O = com.transsion.utils.a.d(this.y, 60.0f);
        if (com.transsion.utils.a.D(this.y)) {
            this.P = com.transsion.utils.a.d(this.y, 216.0f);
        } else {
            this.P = com.transsion.utils.a.d(this.y, 160.0f);
        }
        this.Q = com.transsion.utils.a.d(this.y, 27.0f);
        this.R = com.transsion.utils.a.d(this.y, 20.0f);
        this.S = com.transsion.utils.a.d(this.y, 135.0f);
        this.T = com.transsion.utils.a.d(this.y, 16.0f);
    }

    public final void G(Configuration configuration) {
        boolean z = configuration.orientation == 2;
        if (this.L != z) {
            this.L = z;
            for (int i2 = 0; i2 < this.x.size(); i2++) {
                setContainerWidth(this.c.getChildCount());
                R((View) this.x.get(i2));
            }
        }
    }

    public final void H(View view) {
        p pVar = this.e;
        if (pVar != null) {
            pVar.onHeaderClick();
        }
    }

    public final void I(View view, LinearLayout linearLayout, ImageView imageView) {
        Space space = (Space) view.findViewById(R.id.os_foot_opt_space);
        if (space == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = space.getLayoutParams();
        int measuredWidth = this.L ? linearLayout.getMeasuredWidth() : imageView.getMeasuredWidth();
        if (measuredWidth > 0) {
            layoutParams.width = measuredWidth;
        }
        int measuredHeight = linearLayout.getMeasuredHeight();
        if (measuredHeight > 0) {
            layoutParams.height = measuredHeight;
        }
        space.setLayoutParams(layoutParams);
    }

    public final int J(ListAdapter listAdapter, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i3 = 0;
        int i4 = 0;
        View view = null;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = listAdapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = listAdapter.getView(i5, view, null);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
        }
        return i3;
    }

    public final void K() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new a());
        objectAnimatorOfFloat.start();
    }

    public final void L(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        view.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setInterpolator(new s53(0.4f, 0.0f, 1.0f, 1.0f)).setDuration(150L).setListener(new c(view)).start();
    }

    public final void M() {
        Color.argb((int) (this.B * Color.alpha(this.C)), Color.red(this.C), Color.green(this.C), Color.blue(this.C));
    }

    public final void N() {
        Drawable drawable;
        int dimensionPixelSize;
        m mVar = new m();
        ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, 0, R.style.OsFootOptPopupEdgeStyle);
        this.g = listPopupWindow;
        listPopupWindow.setAdapter(mVar);
        int iJ = J(mVar, this.b / 2);
        this.g.setContentWidth(iJ);
        this.g.setModal(true);
        this.g.setOnDismissListener(new l());
        this.g.setAnchorView(this.c);
        this.g.setDropDownGravity(GravityCompat.END);
        if (getResources().getConfiguration().orientation == 2) {
            post(new Runnable() {
                @Override
                public void run() {
                    Display display = TabOperationBar.this.getDisplay();
                    if (display == null || display.getCutout() == null) {
                        return;
                    }
                    TabOperationBar.this.g.setHorizontalOffset(-display.getCutout().getSafeInsetRight());
                }
            });
        }
        if (Build.VERSION.SDK_INT < 30 || !olb.w0(this.y)) {
            return;
        }
        int rotation = this.y.getDisplay().getRotation();
        if (rotation == 1) {
            drawable = ContextCompat.getDrawable(this.y, R.drawable.os_foot_opt_popup_background_curse_90);
            dimensionPixelSize = this.y.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_land);
        } else if (rotation != 3) {
            drawable = ContextCompat.getDrawable(this.y, R.drawable.os_foot_opt_popup_background_curse_0_180);
            dimensionPixelSize = this.y.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_portrait);
        } else {
            drawable = ContextCompat.getDrawable(this.y, R.drawable.os_foot_opt_popup_background_curse_270);
            dimensionPixelSize = this.y.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_land);
        }
        this.g.setContentWidth(iJ + dimensionPixelSize);
        this.g.setBackgroundDrawable(drawable);
    }

    public final void O(int i2, boolean z) {
        List list = this.x;
        if (list != null) {
            if (i2 < 0 || i2 >= list.size()) {
                i2 = 0;
            }
            boolean zS = vha.s(this.y);
            int i3 = 0;
            while (i3 < this.x.size()) {
                TextView textView = (TextView) ((View) this.x.get(i3)).findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
                OSMaskImageView oSMaskImageView = (OSMaskImageView) ((View) this.x.get(i3)).findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_icon);
                ImageView imageView = (ImageView) ((View) this.x.get(i3)).findViewById(R.id.os_foot_opt_bar_item_icon_model);
                ViewGroup viewGroup = (ViewGroup) ((View) this.x.get(i3)).findViewById(com.transsion.widgetslib.R.id.os_fob_layout);
                ImageView imageView2 = (ImageView) ((View) this.x.get(i3)).findViewById(R.id.custom_os_foot_opt_bar_item_image);
                ImageView imageView3 = (ImageView) ((View) this.x.get(i3)).findViewById(R.id.custom_os_foot_opt_bar_item_image_fold);
                if (i3 == i2) {
                    if (!zS && (oSMaskImageView.isSelected() || oSMaskImageView.isSelectedAnimRunning())) {
                        return;
                    }
                    if (z) {
                        oSMaskImageView.setSelectedAnim(true, new g());
                        if (textView != null) {
                            textView.setTextColor(this.o);
                        }
                    } else {
                        if (this.t) {
                            return;
                        }
                        oSMaskImageView.setSelected(true);
                        if (textView != null) {
                            textView.setTextColor(this.o);
                        }
                    }
                    loadImageUrlsFromTabView(true, i3, oSMaskImageView);
                } else {
                    if (this.t) {
                        return;
                    }
                    if (textView != null) {
                        textView.setTextColor(this.m);
                    }
                    if (oSMaskImageView.isSelectedAnimRunning()) {
                        oSMaskImageView.cancelSelectedAnimRunning();
                    } else if (oSMaskImageView.isSelected()) {
                        oSMaskImageView.setSelectedAnim(false);
                    }
                    oSMaskImageView.setSelected(false);
                    loadImageUrlsFromTabView(false, i3, oSMaskImageView);
                }
                if (b39.a(this.y) == BaseConstant.SCREEN_TYPE.FOLD) {
                    if (imageView3 != null) {
                        imageView3.setVisibility(8);
                        oSMaskImageView.setVisibility(0);
                    }
                    if (imageView2 != null) {
                        imageView2.setVisibility((zS && i3 == i2) ? 0 : 8);
                        if (imageView2.getVisibility() == 0) {
                            viewGroup.setVisibility(8);
                        } else {
                            viewGroup.setVisibility(0);
                        }
                        if (com.blankj.utilcode.util.a.g(this.y)) {
                            if (vha.j(i2, this.y) == -1) {
                                Glide.with(this.y).load2(vha.i(i2, this.y)).into(imageView2);
                            } else {
                                Glide.with(this.y).load2(vha.i(i2, this.y)).placeholder(vha.j(i2, this.y)).into(imageView2);
                            }
                        }
                    }
                } else {
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                        viewGroup.setVisibility(0);
                    }
                    if (imageView3 != null) {
                        imageView3.setVisibility((zS && i3 == i2) ? 0 : 8);
                        if (imageView3.getVisibility() == 0) {
                            oSMaskImageView.setVisibility(8);
                        } else {
                            oSMaskImageView.setVisibility(0);
                        }
                        if (com.blankj.utilcode.util.a.g(this.y)) {
                            if (vha.j(i2, this.y) == -1) {
                                Glide.with(this.y).load2(vha.i(i2, this.y)).fitCenter().into(imageView3);
                            } else {
                                Glide.with(this.y).load2(vha.i(i2, this.y)).placeholder(vha.j(i2, this.y)).fitCenter().into(imageView3);
                            }
                        }
                    }
                }
                if (this.U && imageView != null) {
                    oSMaskImageView.setVisibility(i3 == i2 ? 8 : 0);
                    imageView.setVisibility(i3 == i2 ? 0 : 8);
                    imageView.setImageResource(vha.l(i2, this.y));
                }
                i3++;
            }
        }
    }

    public final void P(MenuBuilder menuBuilder, int i2) {
        this.l = new boolean[i2];
        int i3 = this.v;
        int i4 = i3 > 5 ? 4 : i3 - 1;
        this.w = i4;
        while (i4 < i2) {
            this.f.add(menuBuilder.getItem(i4).getTitle().toString());
            this.l[i4 - this.w] = true;
            i4++;
        }
        N();
    }

    public final void Q(String[] strArr, int i2) {
        int i3 = this.w;
        this.l = new boolean[i2 - i3];
        while (i3 < i2) {
            this.f.add(strArr[i3]);
            this.l[i3 - this.w] = true;
            i3++;
        }
        N();
    }

    public final void R(final View view) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        BaseConstant.SCREEN_TYPE screen_type = this.N;
        BaseConstant.SCREEN_TYPE screen_type2 = BaseConstant.SCREEN_TYPE.FOLD;
        if (screen_type != screen_type2) {
            layoutParams.width = -1;
            layoutParams.height = this.O;
            layoutParams.weight = 0.0f;
            layoutParams.bottomMargin = this.L ? this.R : this.Q;
        } else {
            layoutParams.width = 0;
            layoutParams.height = -1;
            layoutParams.weight = 1.0f;
            layoutParams.bottomMargin = 0;
        }
        view.setLayoutParams(layoutParams);
        boolean z = this.N != screen_type2;
        ImageView imageView = (ImageView) view.findViewById(R.id.custom_os_foot_opt_bar_item_image);
        if (imageView != null) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            if (z) {
                layoutParams2.removeRule(13);
                layoutParams2.addRule(20);
            } else {
                layoutParams2.removeRule(20);
                layoutParams2.addRule(13);
            }
            imageView.setPadding(this.N != screen_type2 ? this.T : 0, 0, 0, 0);
            imageView.setLayoutParams(layoutParams2);
        }
        final LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.os_fob_layout);
        if (linearLayout != null) {
            linearLayout.setOrientation(this.N != screen_type2 ? 0 : 1);
            linearLayout.setGravity(this.N != screen_type2 ? 8388627 : 17);
            linearLayout.setPadding(this.N != screen_type2 ? this.T : 0, 0, 0, 0);
            ViewGroup.LayoutParams layoutParams3 = linearLayout.getLayoutParams();
            layoutParams3.width = this.N == screen_type2 ? -2 : -1;
            linearLayout.setLayoutParams(layoutParams3);
            final ImageView imageView2 = (ImageView) view.findViewById(R.id.os_foot_opt_bar_item_icon);
            if (this.t) {
                return;
            }
            linearLayout.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.I(view, linearLayout, imageView2);
                }
            });
        }
    }

    public final void S(View view, boolean z) {
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

    public void addHeaderView(@LayoutRes int i2) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i2, (ViewGroup) this, false));
    }

    public void addItem(OnlineFootOperationBarImage onlineFootOperationBarImage, int i2) {
        View viewC = C(onlineFootOperationBarImage);
        viewC.setTag(onlineFootOperationBarImage);
        w(viewC, i2);
        setContainerWidth(this.x.size());
    }

    public void addSingleItemView(int i2, int i3, int i4) {
        View viewA = A(i2, this.y.getResources().getString(i3));
        this.x.add(viewA);
        resetClickListener();
        if (i4 < this.x.size()) {
            this.c.addView(viewA, i4);
        } else {
            this.c.addView(viewA);
        }
    }

    public void changeFootItem(int i2, int i3, String str) {
        View childAt = this.c.getChildAt(i2);
        ImageView imageView = (ImageView) childAt.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_icon);
        TextView textView = (TextView) childAt.findViewById(com.transsion.widgetslib.R.id.os_foot_opt_bar_item_text);
        imageView.setImageResource(i3);
        if (textView != null) {
            textView.setText(str);
            if (this.t) {
                return;
            }
            textView.setTextColor(this.m);
        }
    }

    public void changeHeaderViewVisibility(int i2) {
        View view = this.M;
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    public void changeItemEnable(int i2, boolean z) {
        if (this.g == null) {
            S(this.c.getChildAt(i2), z);
            return;
        }
        int i3 = this.w;
        if (i2 < i3) {
            S(this.c.getChildAt(i2), z);
        } else {
            this.l[i2 - i3] = z;
        }
    }

    public void changeItems(List<OnlineFootOperationBarImage> list) {
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.g.dismiss();
        }
        this.c.removeAllViews();
        this.f.clear();
        this.x.clear();
        this.g = null;
        int size = list.size();
        setContainerWidth(size);
        t(list, size);
    }

    public void changeItemsEnable(boolean[] zArr) {
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.g.dismiss();
        }
        int iMin = Math.min(zArr.length, getItemCount());
        for (int i2 = 0; i2 < iMin; i2++) {
            changeItemEnable(i2, zArr[i2]);
        }
    }

    public void changeToDarkMode(boolean z, int i2) {
        this.H = z;
        this.m = z ? this.G : this.F;
        setItemSelectState(i2);
    }

    public void closeDynamicBlur() {
    }

    public void closeDynamicBlurWithRestoreBackground() {
    }

    public void closeFootOperationBar() {
        if (this.j || !this.i) {
            return;
        }
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.g.dismiss();
        }
        View view = this.h;
        if (view != null) {
            view.setEnabled(false);
        }
        this.j = true;
        this.i = false;
        y();
    }

    public void enableMore(boolean z) {
        ListPopupWindow listPopupWindow;
        View view = this.h;
        if (view != null) {
            S(view, z);
            if (z || (listPopupWindow = this.g) == null || !listPopupWindow.isShowing()) {
                return;
            }
            this.g.dismiss();
        }
    }

    public void expendTabTouchDelegate() {
        for (View view : this.x) {
            z(view.findViewById(R.id.os_fob_layout), view, true);
        }
    }

    public View getFootItemView(int i2) {
        if (this.x.size() > i2) {
            return (View) this.x.get(i2);
        }
        return null;
    }

    public int getItemCount() {
        return this.f.size() > 0 ? (this.c.getChildCount() + this.f.size()) - 1 : this.c.getChildCount();
    }

    @Nullable
    public BadgeView getItemRedPoint(int i2) {
        List list = this.x;
        if (list == null || this.t) {
            return null;
        }
        int size = list.size();
        if (i2 < 0 || i2 > size - 1) {
            return null;
        }
        TextView textView = (TextView) ((View) this.x.get(i2)).findViewById(R.id.os_foot_opt_bar_item_text);
        if (textView.getTag() == null) {
            BadgeView badgeView = (BadgeView) ((ViewStub) ((View) this.x.get(i2)).findViewById(R.id.os_stub_fpb_red_point)).inflate();
            textView.setTag(badgeView);
            return badgeView;
        }
        Object tag = textView.getTag();
        if (tag instanceof BadgeView) {
            return (BadgeView) tag;
        }
        return null;
    }

    public int getItemViewCenterXPosition(int i2) {
        View view = (View) this.x.get(i2);
        return ((int) view.getX()) + (view.getWidth() / 2);
    }

    public int getItemViewWidth(int i2) {
        return ((View) this.x.get(i2)).getWidth();
    }

    public int getItemViewXPosition(int i2) {
        return (int) ((View) this.x.get(i2)).getX();
    }

    public boolean hasItemRedPoint(int i2) {
        List list = this.x;
        if (list == null || this.t) {
            return false;
        }
        int size = list.size();
        if (i2 < 0 || i2 > size - 1) {
            return false;
        }
        Object tag = ((TextView) ((View) this.x.get(i2)).findViewById(R.id.os_foot_opt_bar_item_text)).getTag();
        return (tag instanceof BadgeView) && ((BadgeView) tag).getVisibility() == 0;
    }

    @SuppressLint({"RestrictedApi"})
    public void inflateMenu(int i2) {
        MenuInflater menuInflater = new MenuInflater(getContext());
        MenuBuilder menuBuilder = new MenuBuilder(getContext());
        menuInflater.inflate(i2, menuBuilder);
        setMenu(menuBuilder);
    }

    public void initShow(boolean z) {
        this.k = z;
    }

    public void loadImageUrls(boolean z, int i2, OSMaskImageView oSMaskImageView) {
        String str;
        if (this.I.size() == 0 || ((OnlineFootOperationBarImage) this.I.get(i2)).selectedUrl == null) {
            return;
        }
        OnlineFootOperationBarImage onlineFootOperationBarImage = (OnlineFootOperationBarImage) this.I.get(i2);
        RequestBuilder<Bitmap> requestBuilderAsBitmap = Glide.with(this.y).asBitmap();
        if (z) {
            str = onlineFootOperationBarImage.selectedUrl;
        } else {
            str = this.H ? onlineFootOperationBarImage.unselectedDarkUrl : onlineFootOperationBarImage.unselectedUrl;
        }
        requestBuilderAsBitmap.load2(str).into(oSMaskImageView);
    }

    public void loadImageUrlsFromTabView(boolean z, int i2, OSMaskImageView oSMaskImageView) {
        String str;
        if (this.x.size() == 0 || ((View) this.x.get(i2)).getTag() == null) {
            return;
        }
        OnlineFootOperationBarImage onlineFootOperationBarImage = (OnlineFootOperationBarImage) ((View) this.x.get(i2)).getTag();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = this.y;
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            return;
        }
        RequestBuilder<Bitmap> requestBuilderAsBitmap = Glide.with(this.y).asBitmap();
        if (z) {
            str = onlineFootOperationBarImage.selectedUrl;
        } else {
            str = this.H ? onlineFootOperationBarImage.unselectedDarkUrl : onlineFootOperationBarImage.unselectedUrl;
        }
        requestBuilderAsBitmap.load2(str).placeholder(z ? onlineFootOperationBarImage.placeHolderSelectResId : onlineFootOperationBarImage.placeHolderNormalResId).addListener(new h(jCurrentTimeMillis)).into(oSMaskImageView);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        G(configuration);
        updateFootBarView();
        if (this.i) {
            getViewTreeObserver().addOnPreDrawListener(this.A);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        closeDynamicBlur();
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        E(getContext());
    }

    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        if (this.N != screen_type) {
            this.N = screen_type;
            for (int i2 = 0; i2 < this.x.size(); i2++) {
                setContainerWidth(this.c.getChildCount());
                R((View) this.x.get(i2));
            }
        }
    }

    public void openFootOperationBar() {
        if (this.j || this.i) {
            return;
        }
        this.j = true;
        this.i = true;
        K();
    }

    public final void r(View view, int i2) {
        this.x.add(view);
        View viewFindViewById = view.findViewById(R.id.os_fob_layout);
        z(viewFindViewById, view, false);
        viewFindViewById.setOnClickListener(new e(i2));
        this.c.addView(view);
    }

    public void removeHeaderView() {
        View view = this.M;
        if (view != null) {
            removeView(view);
            this.M = null;
        }
    }

    public void removeItemView(int i2) {
        List list = this.x;
        if (list == null || list.size() <= i2) {
            return;
        }
        List list2 = this.x;
        list2.remove(list2.get(i2));
        this.c.removeViewAt(i2);
        resetClickListener();
        requestLayout();
        invalidate();
    }

    public void resetClickListener() {
        for (int i2 = 0; i2 < this.x.size(); i2++) {
            View view = (View) this.x.get(i2);
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            z(viewFindViewById, view, false);
            viewFindViewById.setOnClickListener(new f(i2));
        }
    }

    public void resetFootBarIconText(Drawable drawable, String str, int i2) {
        try {
            if (this.x.size() > i2 && this.x.get(i2) != null) {
                ImageView imageView = (ImageView) ((View) this.x.get(i2)).findViewById(R.id.os_foot_opt_bar_item_icon);
                TextView textView = (TextView) ((View) this.x.get(i2)).findViewById(R.id.os_foot_opt_bar_item_text);
                imageView.setImageDrawable(drawable);
                textView.setText(str);
            }
        } catch (Exception unused) {
        }
    }

    public void restoreTabTouchDelegate() {
        for (View view : this.x) {
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            Object tag = viewFindViewById.getTag();
            if (tag instanceof Rect) {
                view.setTouchDelegate(new TouchDelegate((Rect) tag, viewFindViewById));
            }
        }
    }

    public final void s(MenuBuilder menuBuilder, int i2) {
        this.x.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            MenuItem item = menuBuilder.getItem(i3);
            r(B(item.getIcon(), item.getTitle().toString()), i3);
        }
    }

    public void setBlurAlp(@IntRange(from = 0, to = 255) int i2) {
        if (i2 < 0 || i2 > 255) {
            return;
        }
        this.B = (i2 * 1.0f) / 255.0f;
    }

    public void setContainerBackground(@ColorRes int i2) {
        setContainerBackgroundNoOverlay(i2);
    }

    public void setContainerBackgroundColor(@ColorInt int i2) {
        this.C = i2;
        setBackgroundColor(i2);
        if (this.E == null || this.D == null) {
            return;
        }
        M();
    }

    public void setContainerBackgroundNoOverlay(@ColorRes int i2) {
        setContainerBackgroundColor(this.y.getResources().getColor(i2));
    }

    public void setFootOptBarClickTextColor(@ColorInt int i2) {
        this.o = i2;
    }

    public void setFootOptBarTextColor(@ColorInt int i2) {
        this.m = i2;
    }

    public void setImageList(List<OnlineFootOperationBarImage> list) {
        this.I = list;
        changeItems(list);
    }

    public void setItemRedPointState(int i2, boolean z, int i3, int i4) {
        BadgeView itemRedPoint = getItemRedPoint(i2);
        if (itemRedPoint == null) {
            return;
        }
        int i5 = 8;
        if (ydc.e()) {
            itemRedPoint.setVisibility(8);
            return;
        }
        if (itemRedPoint.getRedPointType() != i3) {
            itemRedPoint.setRedPointType(i3);
        }
        if (i4 > 0 && z) {
            i5 = 0;
        }
        itemRedPoint.setVisibility(i5);
        if (itemRedPoint.getVisibility() == 0) {
            itemRedPoint.setNum(i4);
        }
    }

    public void setItemSelectState(int i2) {
        O(i2, false);
    }

    public void setLandscape(boolean z) {
        this.L = z;
    }

    public void setOnFootOptBarClickListener(o oVar) {
        this.d = oVar;
    }

    public void setOnHeadViewClickListener(p pVar) {
        this.e = pVar;
    }

    public final void t(List list, int i2) {
        this.x.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            r(C((OnlineFootOperationBarImage) list.get(i3)), i3);
        }
    }

    public void toggleFootOperationBar() {
        if (this.i) {
            closeFootOperationBar();
        } else {
            openFootOperationBar();
        }
    }

    public final void u(int[] iArr, String[] strArr, int i2) {
        this.x.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            r(A(iArr[i3], strArr[i3]), i3);
        }
    }

    public void updateFootBarView() {
        this.b = getResources().getDisplayMetrics().widthPixels;
        setContainerWidth(this.c.getChildCount());
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow == null || !listPopupWindow.isShowing()) {
            return;
        }
        this.g.dismiss();
    }

    public void updateItemRedPointNum(int i2, int i3) {
        BadgeView itemRedPoint = getItemRedPoint(i2);
        if (itemRedPoint == null) {
            return;
        }
        if (ydc.e()) {
            itemRedPoint.setVisibility(8);
        } else {
            if (i3 <= 0) {
                L(itemRedPoint);
                return;
            }
            if (itemRedPoint.getVisibility() != 0) {
                itemRedPoint.setVisibility(0);
            }
            itemRedPoint.setNum(i3);
        }
    }

    public final void v(String[] strArr, String[] strArr2, int i2) {
        this.x.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            r(D(strArr[i3], strArr2[i3]), i3);
        }
    }

    public final void w(View view, int i2) {
        this.x.add(i2, view);
        resetClickListener();
        this.c.addView(view, i2);
    }

    public final void x(View view) {
        View viewFindViewById = view.findViewById(R.id.os_fob_layout);
        if (viewFindViewById != null) {
            viewFindViewById.setContentDescription(this.y.getString(R.string.talkback_online_videos));
        }
    }

    public final void y() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new b());
        objectAnimatorOfFloat.start();
    }

    public final void z(final View view, final View view2, final boolean z) {
        view2.post(new Runnable() {
            @Override
            public void run() {
                Rect rect = new Rect();
                view.getHitRect(rect);
                Rect rect2 = new Rect();
                view2.getHitRect(rect2);
                rect.top = 0;
                rect.bottom = rect2.height();
                if (z) {
                    rect.left = TabOperationBar.this.J;
                    rect.right = rect2.width() - TabOperationBar.this.J;
                } else {
                    rect.left -= TabOperationBar.this.K;
                    rect.right += TabOperationBar.this.K;
                    view.setTag(rect);
                }
                view2.setTouchDelegate(new TouchDelegate(rect, view));
            }
        });
    }

    public void addHeaderView(@NonNull View view) {
        removeHeaderView();
        this.M = view;
        changeHeaderViewVisibility(this.N == BaseConstant.SCREEN_TYPE.FOLD ? 8 : 0);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.H(view2);
            }
        });
        addView(view, 0);
    }

    public void changeFootItem(int i2, int i3, int i4) {
        changeFootItem(i2, i3, getResources().getString(i4));
    }

    public void changeItems(String[] strArr, String[] strArr2) {
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.g.dismiss();
        }
        this.c.removeAllViews();
        this.f.clear();
        this.x.clear();
        this.g = null;
        int length = strArr.length;
        setContainerWidth(length);
        v(strArr, strArr2, length);
    }

    public void changeItems(int[] iArr, int[] iArr2) {
        String[] strArr = new String[iArr2.length];
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            strArr[i2] = this.y.getResources().getString(iArr2[i2]);
        }
        changeItems(iArr, strArr);
    }

    public void changeItems(int[] iArr, String[] strArr) {
        ListPopupWindow listPopupWindow = this.g;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.g.dismiss();
        }
        this.c.removeAllViews();
        this.f.clear();
        this.x.clear();
        this.g = null;
        int length = iArr.length;
        setContainerWidth(length);
        if (this.t) {
            int i2 = this.v;
            if (length > i2 - 1) {
                int i3 = i2 > 5 ? 4 : i2 - 1;
                this.w = i3;
                u(iArr, strArr, i3);
                View viewA = A(this.z, this.y.getResources().getString(R.string.os_foot_opt_bar_more));
                View viewFindViewById = viewA.findViewById(R.id.os_fob_layout);
                this.h = viewFindViewById;
                viewFindViewById.setOnClickListener(new k());
                this.c.addView(viewA);
                Q(strArr, length);
                return;
            }
        }
        u(iArr, strArr, length);
    }
}
