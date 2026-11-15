package com.transsion.shorttv._channel.ui.widget;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.slider.RangeSlider;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.model.ShortTvFilterVal;
import com.transsion.shorttv._channel.model.ShortTvItem;
import com.transsion.shorttv._channel.model.ShortTvRangeValue;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a extends Dialog {

    private RecyclerView f50659a;

    private View f50660b;

    private View f50661c;

    private ImageView f50662d;

    private b f50663e;

    private List f50664f;

    private Map f50665g;

    private Function1 f50666h;

    private final Map f50667i;

    public static final class C0630a extends RecyclerView.a0 {

        private final TextView f50668a;

        private final FlexboxLayout f50669b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0630a(View itemView, TextView title, FlexboxLayout flexbox) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(title, "title");
            Intrinsics.h(flexbox, "flexbox");
            this.f50668a = title;
            this.f50669b = flexbox;
        }

        public final FlexboxLayout f() {
            return this.f50669b;
        }

        public final TextView g() {
            return this.f50668a;
        }
    }

    public final class b extends RecyclerView.Adapter {

        private final List f50670a;

        private final Map f50671b;

        private final int f50672c;

        private final int f50673d;

        final a f50674e;

        public b(a aVar, List items, Map selectItems) {
            Intrinsics.h(items, "items");
            Intrinsics.h(selectItems, "selectItems");
            this.f50674e = aVar;
            this.f50670a = items;
            this.f50671b = selectItems;
            this.f50673d = 1;
        }

        private final View i(String str, boolean z10, int i10) {
            LinearLayout linearLayout = new LinearLayout(this.f50674e.getContext());
            linearLayout.setGravity(17);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(a0.a(100.0f));
            if (z10) {
                gradientDrawable.setStroke(a0.a(1.0f), -1);
                gradientDrawable.setColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_white_40));
            } else {
                gradientDrawable.setStroke(a0.a(1.0f), linearLayout.getContext().getResources().getColor(R$color.short_tv_gray_light_40));
                gradientDrawable.setColor(0);
            }
            linearLayout.setBackground(gradientDrawable);
            TextView textView = new TextView(this.f50674e.getContext());
            textView.setText(str);
            textView.setTextSize(14.0f);
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT);
            linearLayout.addView(textView);
            return linearLayout;
        }

        public static final void j(b bVar, ShortTvItem shortTvItem, ShortTvFilterVal shortTvFilterVal, int i10, View view) {
            bVar.f50671b.put(shortTvItem.getFilterType(), shortTvFilterVal.getId());
            bVar.notifyItemChanged(i10);
        }

        public static final void k(RecyclerView.a0 a0Var, b bVar, ShortTvItem shortTvItem, RangeSlider slider, float f10, boolean z10) {
            Intrinsics.h(slider, "slider");
            List<Float> values = slider.getValues();
            Intrinsics.g(values, "getValues(...)");
            if (values.size() >= 2) {
                Float f11 = values.get(0);
                Float f12 = values.get(1);
                c cVar = (c) a0Var;
                cVar.h().setText(String.valueOf((int) f11.floatValue()));
                cVar.f().setText(String.valueOf((int) f12.floatValue()));
                Map map = bVar.f50671b;
                String filterType = shortTvItem.getFilterType();
                ShortTvPopupFilterView.Companion companion = ShortTvPopupFilterView.INSTANCE;
                Intrinsics.e(f11);
                float fFloatValue = f11.floatValue();
                Intrinsics.e(f12);
                map.put(filterType, companion.a(fFloatValue, f12.floatValue()));
            }
        }

        @Override
        public int getItemCount() {
            return this.f50670a.size();
        }

        @Override
        public int getItemViewType(int i10) {
            return ((ShortTvItem) this.f50670a.get(i10)).getRangeVals() != null ? this.f50673d : this.f50672c;
        }

        @Override
        public void onBindViewHolder(final RecyclerView.a0 holder, final int i10) {
            String str;
            Float fT;
            String str2;
            Float fT2;
            Intrinsics.h(holder, "holder");
            final ShortTvItem shortTvItem = (ShortTvItem) this.f50670a.get(i10);
            if (!(holder instanceof C0630a)) {
                if (holder instanceof c) {
                    c cVar = (c) holder;
                    cVar.i().setText(shortTvItem.getTitle());
                    ShortTvRangeValue rangeVals = shortTvItem.getRangeVals();
                    if (rangeVals == null) {
                        return;
                    }
                    cVar.g().setValueFrom(rangeVals.getMinVal());
                    cVar.g().setValueTo(rangeVals.getMaxVal());
                    cVar.g().setStepSize(1.0f);
                    String str3 = (String) this.f50671b.get(shortTvItem.getFilterType());
                    List listS0 = str3 != null ? StringsKt.S0(str3, new String[]{","}, false, 0, 6, null) : null;
                    float minVal = (listS0 == null || (str2 = (String) CollectionsKt.l0(listS0, 0)) == null || (fT2 = StringsKt.t(str2)) == null) ? rangeVals.getMinVal() : fT2.floatValue();
                    float maxVal = (listS0 == null || (str = (String) CollectionsKt.l0(listS0, 1)) == null || (fT = StringsKt.t(str)) == null) ? rangeVals.getMaxVal() : fT.floatValue();
                    cVar.g().setValues(Float.valueOf(minVal), Float.valueOf(maxVal));
                    cVar.h().setText(String.valueOf((int) minVal));
                    cVar.f().setText(String.valueOf((int) maxVal));
                    cVar.g().addOnChangeListener(new com.google.android.material.slider.a() {
                        @Override
                        public final void a(RangeSlider rangeSlider, float f10, boolean z10) {
                            com.transsion.shorttv._channel.ui.widget.a.b.k(holder, this, shortTvItem, rangeSlider, f10, z10);
                        }
                    });
                    return;
                }
                return;
            }
            C0630a c0630a = (C0630a) holder;
            c0630a.g().setText(shortTvItem.getTitle());
            c0630a.f().removeAllViews();
            int iA = (this.f50674e.getContext().getResources().getDisplayMetrics().widthPixels - a0.a(44.0f)) / 2;
            int i11 = 0;
            for (Object obj : shortTvItem.getFilterValsV2()) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                final ShortTvFilterVal shortTvFilterVal = (ShortTvFilterVal) obj;
                View viewI = i(shortTvFilterVal.getName(), Intrinsics.c(this.f50671b.get(shortTvItem.getFilterType()), shortTvFilterVal.getId()), iA);
                viewI.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        com.transsion.shorttv._channel.ui.widget.a.b.j(this.f74694a, shortTvItem, shortTvFilterVal, i10, view);
                    }
                });
                FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(iA, a0.a(32.0f));
                if (i11 % 2 == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = a0.a(12.0f);
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = a0.a(12.0f);
                viewI.setLayoutParams(layoutParams);
                c0630a.f().addView(viewI);
                i11 = i12;
            }
        }

        @Override
        public RecyclerView.a0 onCreateViewHolder(ViewGroup parent, int i10) {
            Intrinsics.h(parent, "parent");
            LinearLayout linearLayout = new LinearLayout(this.f50674e.getContext());
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            linearLayout.setPadding(0, 0, 0, a0.a(16.0f));
            TextView textView = new TextView(this.f50674e.getContext());
            textView.setTextSize(16.0f);
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setPadding(0, 0, 0, a0.a(12.0f));
            linearLayout.addView(textView);
            if (i10 == this.f50672c) {
                FlexboxLayout flexboxLayout = new FlexboxLayout(this.f50674e.getContext());
                flexboxLayout.setFlexDirection(0);
                flexboxLayout.setFlexWrap(1);
                linearLayout.addView(flexboxLayout);
                return new C0630a(linearLayout, textView, flexboxLayout);
            }
            LinearLayout linearLayout2 = new LinearLayout(this.f50674e.getContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            RangeSlider rangeSlider = new RangeSlider(this.f50674e.getContext());
            rangeSlider.setValues(Float.valueOf(0.0f), Float.valueOf(100.0f));
            rangeSlider.setTrackActiveTintList(ColorStateList.valueOf(-1));
            rangeSlider.setTrackInactiveTintList(ColorStateList.valueOf(rangeSlider.getContext().getResources().getColor(R$color.short_tv_white_40)));
            rangeSlider.setThumbTintList(ColorStateList.valueOf(-1));
            rangeSlider.setTickVisible(false);
            LinearLayout linearLayout3 = new LinearLayout(this.f50674e.getContext());
            linearLayout3.setOrientation(0);
            TextView textView2 = new TextView(this.f50674e.getContext());
            textView2.setTextSize(12.0f);
            textView2.setTextColor(-1);
            Typeface typeface = Typeface.DEFAULT_BOLD;
            textView2.setTypeface(typeface);
            TextView textView3 = new TextView(this.f50674e.getContext());
            textView3.setTextSize(12.0f);
            textView3.setTextColor(-1);
            textView3.setTypeface(typeface);
            linearLayout3.addView(textView2);
            View view = new View(this.f50674e.getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
            linearLayout3.addView(view);
            linearLayout3.addView(textView3);
            linearLayout2.addView(rangeSlider);
            linearLayout2.addView(linearLayout3);
            linearLayout.addView(linearLayout2);
            return new c(linearLayout, textView, rangeSlider, textView2, textView3);
        }
    }

    public static final class c extends RecyclerView.a0 {

        private final TextView f50675a;

        private final RangeSlider f50676b;

        private final TextView f50677c;

        private final TextView f50678d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View itemView, TextView title, RangeSlider slider, TextView startLabel, TextView endLabel) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(title, "title");
            Intrinsics.h(slider, "slider");
            Intrinsics.h(startLabel, "startLabel");
            Intrinsics.h(endLabel, "endLabel");
            this.f50675a = title;
            this.f50676b = slider;
            this.f50677c = startLabel;
            this.f50678d = endLabel;
        }

        public final TextView f() {
            return this.f50678d;
        }

        public final RangeSlider g() {
            return this.f50676b;
        }

        public final TextView h() {
            return this.f50677c;
        }

        public final TextView i() {
            return this.f50675a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context, R.style.Theme.Black.NoTitleBar.Fullscreen);
        Intrinsics.h(context, "context");
        this.f50664f = CollectionsKt.l();
        this.f50665g = new LinkedHashMap();
        this.f50667i = new LinkedHashMap();
    }

    private final View e() {
        View view = new View(getContext());
        view.setBackgroundColor(view.getContext().getResources().getColor(R$color.short_tv_white_10));
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, a0.a(1.0f)));
        return view;
    }

    private final boolean f() {
        if (this.f50665g.size() != this.f50667i.size()) {
            return true;
        }
        for (Map.Entry entry : this.f50665g.entrySet()) {
            String str = (String) entry.getKey();
            if (!Intrinsics.c(this.f50667i.get(str), (String) entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    public static final WindowInsetsCompat g(View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.g(insets2, "getInsets(...)");
        v10.setPadding(v10.getPaddingLeft(), v10.getPaddingTop(), v10.getPaddingRight(), insets2.f76468d);
        return WindowInsetsCompat.CONSUMED;
    }

    public static final void h(a aVar, View view) {
        aVar.k();
    }

    public static final void i(a aVar, View view) {
        Function1 function1;
        if (aVar.f() && (function1 = aVar.f50666h) != null) {
            function1.invoke(Boolean.TRUE);
        }
        aVar.dismiss();
    }

    public static final void j(a aVar, View view) {
        aVar.dismiss();
        Function1 function1 = aVar.f50666h;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    private final void k() {
        for (ShortTvItem shortTvItem : this.f50664f) {
            if (shortTvItem.getRangeVals() != null) {
                this.f50665g.put(shortTvItem.getFilterType(), ShortTvPopupFilterView.INSTANCE.a(shortTvItem.getRangeVals().getMinVal(), shortTvItem.getRangeVals().getMaxVal()));
            } else if (!shortTvItem.getFilterValsV2().isEmpty()) {
                this.f50665g.put(shortTvItem.getFilterType(), shortTvItem.getFilterValsV2().get(0).getId());
            }
        }
        b bVar = this.f50663e;
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        }
    }

    public final void l(List items, Map selectItems, Function1 callback) {
        Intrinsics.h(items, "items");
        Intrinsics.h(selectItems, "selectItems");
        Intrinsics.h(callback, "callback");
        this.f50664f = items;
        this.f50665g.clear();
        this.f50665g.putAll(selectItems);
        this.f50667i.clear();
        this.f50667i.putAll(selectItems);
        this.f50666h = callback;
        this.f50663e = new b(this, this.f50664f, this.f50665g);
        RecyclerView recyclerView = this.f50659a;
        if (recyclerView != null) {
            if (recyclerView == null) {
                Intrinsics.y("mRecyclerView");
                recyclerView = null;
            }
            recyclerView.setAdapter(this.f50663e);
        }
        if (isShowing()) {
            return;
        }
        show();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        RecyclerView recyclerView;
        Window window;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 35 && (window = getWindow()) != null) {
            WindowCompat.setDecorFitsSystemWindows(window, false);
            View viewFindViewById = window.getDecorView().findViewById(R.id.content);
            Intrinsics.e(viewFindViewById);
            ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return com.transsion.shorttv._channel.ui.widget.a.g(view, windowInsetsCompat);
                }
            });
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setBackgroundDrawable(new ColorDrawable(0));
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setLayout(-1, -1);
        }
        Window window4 = getWindow();
        if (window4 != null) {
            window4.addFlags(Integer.MIN_VALUE);
        }
        Window window5 = getWindow();
        if (window5 != null) {
            window5.setStatusBarColor(getContext().getResources().getColor(R$color.short_tv_black_90));
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_black_90));
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(12.0f));
        TextView textView = new TextView(getContext());
        textView.setText(textView.getContext().getString(R$string.short_tv_filter_more_title));
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textView.setTypeface(typeface);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R$drawable.short_tv_music_iv_close);
        imageView.setColorFilter(imageView.getContext().getResources().getColor(R$color.short_tv_white));
        imageView.setLayoutParams(new LinearLayout.LayoutParams(a0.a(21.0f), a0.a(21.0f)));
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.j(this.f74691a, view);
            }
        });
        this.f50662d = imageView;
        linearLayout2.addView(textView);
        ImageView imageView2 = this.f50662d;
        if (imageView2 == null) {
            Intrinsics.y("mCloseBtn");
            imageView2 = null;
        }
        linearLayout2.addView(imageView2);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(e());
        RecyclerView recyclerView2 = new RecyclerView(getContext());
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        recyclerView2.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
        recyclerView2.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(12.0f));
        recyclerView2.setClipToPadding(false);
        this.f50659a = recyclerView2;
        linearLayout.addView(recyclerView2);
        LinearLayout linearLayout3 = new LinearLayout(getContext());
        linearLayout3.setOrientation(1);
        linearLayout3.setBackgroundColor(linearLayout3.getContext().getResources().getColor(R$color.short_tv_black_90));
        linearLayout3.addView(e());
        LinearLayout linearLayout4 = new LinearLayout(getContext());
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(16.0f));
        LinearLayout linearLayout5 = new LinearLayout(getContext());
        linearLayout5.setLayoutParams(new LinearLayout.LayoutParams(-2, a0.a(48.0f)));
        linearLayout5.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(a0.a(100.0f));
        gradientDrawable.setStroke(a0.a(1.0f), linearLayout5.getContext().getResources().getColor(R$color.short_tv_white));
        gradientDrawable.setColor(0);
        linearLayout5.setBackground(gradientDrawable);
        linearLayout5.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.h(this.f74692a, view);
            }
        });
        TextView textView2 = new TextView(linearLayout5.getContext());
        textView2.setText(textView2.getContext().getString(R$string.short_tv_filter_reset));
        textView2.setTextSize(18.0f);
        textView2.setTextColor(-1);
        textView2.setTypeface(typeface);
        textView2.setPadding(a0.a(24.0f), 0, a0.a(24.0f), 0);
        linearLayout5.addView(textView2);
        this.f50660b = linearLayout5;
        LinearLayout linearLayout6 = new LinearLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, a0.a(48.0f), 1.0f);
        layoutParams.setMarginStart(a0.a(12.0f));
        linearLayout6.setLayoutParams(layoutParams);
        linearLayout6.setGravity(17);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(a0.a(100.0f));
        gradientDrawable2.setColor(linearLayout6.getContext().getResources().getColor(R$color.short_tv_white));
        linearLayout6.setBackground(gradientDrawable2);
        linearLayout6.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.i(this.f74693a, view);
            }
        });
        TextView textView3 = new TextView(linearLayout6.getContext());
        textView3.setText(textView3.getContext().getString(R$string.short_tv_filter_confirm));
        textView3.setTextSize(18.0f);
        textView3.setTextColor(textView3.getContext().getResources().getColor(R$color.short_tv_black));
        textView3.setTypeface(typeface);
        linearLayout6.addView(textView3);
        this.f50661c = linearLayout6;
        View view = this.f50660b;
        if (view == null) {
            Intrinsics.y("mResetBtn");
            view = null;
        }
        linearLayout4.addView(view);
        View view2 = this.f50661c;
        if (view2 == null) {
            Intrinsics.y("mConfirmBtn");
            view2 = null;
        }
        linearLayout4.addView(view2);
        linearLayout3.addView(linearLayout4);
        linearLayout.addView(linearLayout3);
        setContentView(linearLayout);
        if (this.f50663e != null) {
            RecyclerView recyclerView3 = this.f50659a;
            if (recyclerView3 == null) {
                Intrinsics.y("mRecyclerView");
                recyclerView = null;
            } else {
                recyclerView = recyclerView3;
            }
            recyclerView.setAdapter(this.f50663e);
        }
    }
}
