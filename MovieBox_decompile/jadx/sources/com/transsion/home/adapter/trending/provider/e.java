package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesContentItem;
import com.transsion.home.bean.HomePreferencesSelectType;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e extends BaseItemProvider {

    public static final a f43561r = new a(null);

    public static final int f43562s = 8;

    private Function1 f43564f;

    private Function1 f43565g;

    private Function3 f43566h;

    private Function1 f43567i;

    private final TextPaint f43574p;

    private final Map f43575q;

    private final Set f43563e = new LinkedHashSet();

    private final int f43568j = com.blankj.utilcode.util.a0.a(12.0f);

    private final int f43569k = com.blankj.utilcode.util.a0.a(32.0f);

    private final int f43570l = com.blankj.utilcode.util.a0.a(68.0f);

    private final int f43571m = com.blankj.utilcode.util.a0.a(8.0f);

    private final int f43572n = com.blankj.utilcode.util.a0.a(16.0f);

    private final int f43573o = com.blankj.utilcode.util.a0.a(4.0f);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e() {
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTextSize(com.blankj.utilcode.util.a0.a(12.0f));
        this.f43574p = textPaint;
        this.f43575q = new LinkedHashMap();
    }

    private final void A(LinearLayout linearLayout, List list, boolean z10, int i10, LinearLayout linearLayout2) {
        int iA = com.blankj.utilcode.util.a0.a(8.0f);
        int i11 = 0;
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            View viewE = E(linearLayout, (HomePreferencesContentItem) obj, z10, i10, linearLayout2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.f43569k);
            layoutParams.setMarginStart(i11 == 0 ? iA : this.f43571m);
            linearLayout.addView(viewE, layoutParams);
            i11 = i12;
        }
    }

    private final void B(GradientTextView gradientTextView, Context context, boolean z10) {
        int color = androidx.core.content.b.getColor(context, R$color.white_80);
        int color2 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start);
        int color3 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_center);
        int color4 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end);
        if (!z10) {
            color2 = color;
        }
        if (!z10) {
            color3 = color;
        }
        if (z10) {
            color = color4;
        }
        gradientTextView.setGradientColors(color2, color3, color);
    }

    public static final void D(e eVar, HomePreferencesConfig homePreferencesConfig, View view) {
        Function1 function1 = eVar.f43564f;
        if (function1 != null) {
            function1.invoke(homePreferencesConfig);
        }
    }

    private final LinearLayout E(ViewGroup viewGroup, final HomePreferencesContentItem homePreferencesContentItem, final boolean z10, final int i10, final LinearLayout linearLayout) {
        final Context context = viewGroup.getContext();
        boolean zContains = this.f43563e.contains(homePreferencesContentItem.getValue());
        final LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setMinimumWidth(this.f43570l);
        int i11 = this.f43568j;
        linearLayout2.setPadding(i11, 0, i11, 0);
        linearLayout2.setBackground(androidx.core.content.b.getDrawable(context, R$drawable.bg_preferences_tag));
        linearLayout2.setSelected(zContains);
        linearLayout2.setTag(homePreferencesContentItem.getValue());
        Intrinsics.e(context);
        final GradientTextView gradientTextView = new GradientTextView(context, null, 0, 6, null);
        gradientTextView.setText(homePreferencesContentItem.getName());
        gradientTextView.setTextSize(12.0f);
        gradientTextView.setMaxLines(1);
        gradientTextView.setGravity(17);
        gradientTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        B(gradientTextView, context, zContains);
        final ImageView imageView = new ImageView(context);
        imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
        int i12 = this.f43572n;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i12, i12);
        layoutParams.setMarginStart(this.f43573o);
        imageView.setLayoutParams(layoutParams);
        linearLayout2.addView(gradientTextView);
        linearLayout2.addView(imageView);
        linearLayout2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                e.F(z10, this, homePreferencesContentItem, linearLayout, i10, context, linearLayout2, imageView, gradientTextView, view);
            }
        });
        return linearLayout2;
    }

    public static final void F(boolean z10, e eVar, HomePreferencesContentItem homePreferencesContentItem, LinearLayout linearLayout, int i10, Context context, LinearLayout linearLayout2, ImageView imageView, GradientTextView gradientTextView, View view) {
        if (z10) {
            if (eVar.f43563e.contains(homePreferencesContentItem.getValue())) {
                eVar.f43563e.remove(homePreferencesContentItem.getValue());
            } else {
                eVar.f43563e.clear();
                eVar.f43563e.add(homePreferencesContentItem.getValue());
            }
            eVar.I(linearLayout);
        } else {
            boolean zContains = eVar.f43563e.contains(homePreferencesContentItem.getValue());
            boolean z11 = !zContains;
            if (zContains) {
                eVar.f43563e.remove(homePreferencesContentItem.getValue());
            } else {
                if (i10 > 0 && eVar.f43563e.size() >= i10) {
                    String string = context.getString(R$string.home_preferences_max_select_tips, Integer.valueOf(i10));
                    Intrinsics.g(string, "getString(...)");
                    com.transsion.baseui.util.m.e(string);
                    return;
                }
                eVar.f43563e.add(homePreferencesContentItem.getValue());
            }
            linearLayout2.setSelected(z11);
            imageView.setImageResource(!zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
            Intrinsics.e(context);
            eVar.B(gradientTextView, context, z11);
        }
        Function1 function1 = eVar.f43565g;
        if (function1 != null) {
            function1.invoke(CollectionsKt.R0(eVar.f43563e));
        }
    }

    private final List G(List list, int i10) {
        List[] listArr = new List[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            listArr[i11] = new ArrayList();
        }
        float[] fArr = new float[i10];
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HomePreferencesContentItem homePreferencesContentItem = (HomePreferencesContentItem) it.next();
            float fH = H(homePreferencesContentItem.getName());
            float f10 = Float.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < i10; i13++) {
                if (listArr[i13].size() < 8) {
                    float f11 = fArr[i13];
                    if (f11 < f10) {
                        i12 = i13;
                        f10 = f11;
                    }
                }
            }
            if (i12 == -1) {
                break;
            }
            listArr[i12].add(homePreferencesContentItem);
            fArr[i12] = fArr[i12] + fH + this.f43571m;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i14 = 0; i14 < i10; i14++) {
            arrayList.add(CollectionsKt.R0(listArr[i14]));
        }
        return arrayList;
    }

    private final float H(String str) {
        return Math.max((this.f43568j * 2) + this.f43574p.measureText(str) + this.f43573o + this.f43572n, this.f43570l);
    }

    private final void I(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount2 = linearLayout.getChildCount();
                for (int i11 = 0; i11 < childCount2; i11++) {
                    View childAt2 = linearLayout.getChildAt(i11);
                    if (childAt2 instanceof LinearLayout) {
                        LinearLayout linearLayout2 = (LinearLayout) childAt2;
                        if (linearLayout2.getTag() instanceof String) {
                            Object tag = linearLayout2.getTag();
                            Intrinsics.f(tag, "null cannot be cast to non-null type kotlin.String");
                            boolean zContains = this.f43563e.contains((String) tag);
                            linearLayout2.setSelected(zContains);
                            if (linearLayout2.getChildCount() >= 2) {
                                View childAt3 = linearLayout2.getChildAt(0);
                                GradientTextView gradientTextView = childAt3 instanceof GradientTextView ? (GradientTextView) childAt3 : null;
                                if (gradientTextView != null) {
                                    Context context = linearLayout2.getContext();
                                    Intrinsics.g(context, "getContext(...)");
                                    B(gradientTextView, context, zContains);
                                }
                                View childAt4 = linearLayout2.getChildAt(1);
                                ImageView imageView = childAt4 instanceof ImageView ? (ImageView) childAt4 : null;
                                if (imageView != null) {
                                    imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        boolean zC;
        final e eVar = this;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        long jNanoTime = System.nanoTime();
        final HomePreferencesConfig homePreferencesConfig = item.getHomePreferencesConfig();
        if (homePreferencesConfig == null) {
            return;
        }
        List<HomePreferencesContentItem> options = homePreferencesConfig.getOptions();
        if (options.isEmpty()) {
            return;
        }
        TextView textView = (TextView) helper.getViewOrNull(R$id.tv_title);
        if (textView != null) {
            textView.setText(homePreferencesConfig.getTitle());
        }
        ImageView imageView = (ImageView) helper.getViewOrNull(R$id.iv_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    e.D(this.f43547a, homePreferencesConfig, view);
                }
            });
        }
        LinearLayout linearLayout = (LinearLayout) helper.getViewOrNull(R$id.ll_rows_container);
        if (linearLayout == null) {
            return;
        }
        boolean zC2 = Intrinsics.c(homePreferencesConfig.getSelectType(), HomePreferencesSelectType.SINGLE.getValue());
        String labelId = homePreferencesConfig.getLabelId();
        List listG = (List) eVar.f43575q.get(labelId);
        if (listG != null) {
            List listX = CollectionsKt.x(listG);
            boolean z10 = listX.size() == options.size();
            if (z10) {
                List list = listX;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((HomePreferencesContentItem) it.next()).getValue());
                }
                List<HomePreferencesContentItem> list2 = options;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((HomePreferencesContentItem) it2.next()).getValue());
                }
                zC = Intrinsics.c(arrayList, arrayList2);
            } else {
                zC = false;
            }
            if (!z10 || !zC) {
                listG = eVar.G(options, options.size() <= 8 ? 1 : (int) Math.ceil(options.size() / 8));
                eVar.f43575q.put(labelId, listG);
            }
        } else {
            listG = eVar.G(options, options.size() <= 8 ? 1 : (int) Math.ceil(options.size() / 8));
            eVar.f43575q.put(labelId, listG);
        }
        int size = listG.size();
        Object tag = linearLayout.getTag();
        if (!Intrinsics.c(tag instanceof String ? (String) tag : null, labelId) || linearLayout.getChildCount() == 0) {
            linearLayout.removeAllViews();
            int i10 = 0;
            for (Object obj : listG) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                List list3 = (List) obj;
                LinearLayout linearLayout2 = new LinearLayout(linearLayout.getContext());
                linearLayout2.setOrientation(0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                if (i10 > 0) {
                    layoutParams.topMargin = eVar.f43571m;
                }
                linearLayout2.setLayoutParams(layoutParams);
                A(linearLayout2, list3, zC2, homePreferencesConfig.getMaxSelectNum(), linearLayout);
                linearLayout.addView(linearLayout2);
                eVar = this;
                i10 = i11;
            }
            linearLayout.setTag(labelId);
        }
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) helper.getViewOrNull(R$id.hsv_tags);
        if (horizontalScrollView != null) {
            horizontalScrollView.scrollTo(0, 0);
        }
        float fNanoTime = (System.nanoTime() - jNanoTime) / 1000000.0f;
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesProvider", "convert cost=" + fNanoTime + "ms, items=" + options.size() + ", rows=" + size, false, 4, null);
    }

    public final void J(Function1 function1) {
        this.f43564f = function1;
    }

    public final void K(Function1 function1) {
        this.f43567i = function1;
    }

    public final void L(Function3 function3) {
        this.f43566h = function3;
    }

    @Override
    public int l() {
        return PostItemType.PREFERENCES.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_home_preferences;
    }

    @Override
    public void t(BaseViewHolder holder) {
        HomePreferencesConfig homePreferencesConfig;
        List<Object> data;
        Intrinsics.h(holder, "holder");
        super.t(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        OperateItem operateItem = (baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : (OperateItem) CollectionsKt.l0(data, bindingAdapterPosition);
        OperateItem operateItem2 = operateItem instanceof OperateItem ? operateItem : null;
        if (operateItem2 == null || (homePreferencesConfig = operateItem2.getHomePreferencesConfig()) == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesProvider", "onViewAttachedToWindow: labelId=" + homePreferencesConfig.getLabelId(), false, 4, null);
        Function1 function1 = this.f43567i;
        if (function1 != null) {
            function1.invoke(homePreferencesConfig);
        }
    }

    @Override
    public void u(BaseViewHolder holder) {
        HomePreferencesConfig homePreferencesConfig;
        List<Object> data;
        Intrinsics.h(holder, "holder");
        super.u(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        OperateItem operateItem = (baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : (OperateItem) CollectionsKt.l0(data, bindingAdapterPosition);
        OperateItem operateItem2 = operateItem instanceof OperateItem ? operateItem : null;
        if (operateItem2 == null || (homePreferencesConfig = operateItem2.getHomePreferencesConfig()) == null) {
            return;
        }
        List<HomePreferencesContentItem> options = homePreferencesConfig.getOptions();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(options, 10));
        Iterator<T> it = options.iterator();
        while (it.hasNext()) {
            arrayList.add(((HomePreferencesContentItem) it.next()).getValue());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (this.f43563e.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        if (arrayList2.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesProvider", "onViewDetachedFromWindow: no selection, skip submit, labelId=" + homePreferencesConfig.getLabelId(), false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesProvider", "onViewDetachedFromWindow: try submit, labelId=" + homePreferencesConfig.getLabelId() + ", options=" + arrayList2, false, 4, null);
        Function3 function3 = this.f43566h;
        if (function3 != null) {
            function3.invoke(homePreferencesConfig, arrayList2, "opt_scroll");
        }
    }
}
