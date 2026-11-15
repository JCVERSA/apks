package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseQuickAdapter extends RecyclerView.Adapter {
    public static final a A = new a(null);
    public static final int B = 268435729;
    public static final int C = 268436002;
    public static final int D = 268436275;
    public static final int E = 268436821;

    private final int f20526a;

    private List<Object> f20527b;

    private boolean f20528c;

    private boolean f20529d;

    private boolean f20530e;

    private boolean f20531f;

    private boolean f20532g;

    private boolean f20533h;

    private boolean f20534i;

    private m6.b f20535j;

    private o6.c f20536k;

    private LinearLayout f20537l;

    private LinearLayout f20538m;

    private FrameLayout f20539n;

    private int f20540o;

    private r6.a f20541p;

    private r6.d f20542q;

    private r6.e f20543r;

    private r6.b f20544s;

    private r6.c f20545t;

    private t6.g f20546u;

    private t6.a f20547v;

    private t6.f f20548w;

    private RecyclerView f20549x;

    private final LinkedHashSet<Integer> f20550y;

    private final LinkedHashSet<Integer> f20551z;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f20552a;

        static {
            int[] iArr = new int[AnimationType.values().length];
            try {
                iArr[AnimationType.AlphaIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationType.ScaleIn.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationType.SlideInBottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationType.SlideInLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnimationType.SlideInRight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f20552a = iArr;
        }
    }

    public static final class c extends GridLayoutManager.c {

        final RecyclerView.m f20554f;

        final GridLayoutManager.c f20555g;

        c(RecyclerView.m mVar, GridLayoutManager.c cVar) {
            this.f20554f = mVar;
            this.f20555g = cVar;
        }

        @Override
        public int f(int i10) {
            int itemViewType = BaseQuickAdapter.this.getItemViewType(i10);
            if (itemViewType == 268435729 && BaseQuickAdapter.this.b0()) {
                return 1;
            }
            if (itemViewType == 268436275 && BaseQuickAdapter.this.W()) {
                return 1;
            }
            BaseQuickAdapter.j(BaseQuickAdapter.this);
            return BaseQuickAdapter.this.u0(itemViewType) ? ((GridLayoutManager) this.f20554f).U() : this.f20555g.f(i10);
        }
    }

    public BaseQuickAdapter(int i10, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : list);
    }

    public static final void A(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v10, "v");
        this$0.r1(v10, iA0);
    }

    public static final void B(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v10, "v");
        this$0.v1(v10, iA0);
    }

    public static final boolean C(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v10) {
        Intrinsics.h(viewHolder, "$viewHolder");
        Intrinsics.h(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int iA0 = bindingAdapterPosition - this$0.a0();
        Intrinsics.g(v10, "v");
        return this$0.x1(v10, iA0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D() {
        if (this instanceof t6.i) {
            this.f20548w = ((t6.i) this).b(this);
        }
        if (this instanceof t6.l) {
            this.f20546u = ((t6.l) this).f(this);
        }
    }

    private final BaseViewHolder H(Class cls, View view) {
        try {
            if (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
                Constructor declaredConstructor = cls.getDeclaredConstructor(View.class);
                Intrinsics.g(declaredConstructor, "z.getDeclaredConstructor(View::class.java)");
                declaredConstructor.setAccessible(true);
                Object objNewInstance = declaredConstructor.newInstance(view);
                Intrinsics.f(objNewInstance, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
                return (BaseViewHolder) objNewInstance;
            }
            Constructor declaredConstructor2 = cls.getDeclaredConstructor(getClass(), View.class);
            Intrinsics.g(declaredConstructor2, "z.getDeclaredConstructor…aClass, View::class.java)");
            declaredConstructor2.setAccessible(true);
            Object objNewInstance2 = declaredConstructor2.newInstance(this, view);
            Intrinsics.f(objNewInstance2, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
            return (BaseViewHolder) objNewInstance2;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
            return null;
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
            return null;
        }
    }

    public static void W0(BaseQuickAdapter baseQuickAdapter, List list, Runnable runnable, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDiffNewData");
        }
        if ((i10 & 2) != 0) {
            runnable = null;
        }
        baseQuickAdapter.V0(list, runnable);
    }

    public static int c1(BaseQuickAdapter baseQuickAdapter, View view, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFooterView");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 1;
        }
        return baseQuickAdapter.b1(view, i10, i11);
    }

    private final Class e0(Class cls) {
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType)) {
                return null;
            }
            Type[] types = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
            Intrinsics.g(types, "types");
            for (Type type : types) {
                if (type instanceof Class) {
                    if (BaseViewHolder.class.isAssignableFrom((Class) type)) {
                        return (Class) type;
                    }
                } else if (type instanceof ParameterizedType) {
                    Type rawType = ((ParameterizedType) type).getRawType();
                    if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                        return (Class) rawType;
                    }
                } else {
                    continue;
                }
            }
            return null;
        } catch (TypeNotPresentException e10) {
            e10.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e11) {
            e11.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static final r6.a j(BaseQuickAdapter baseQuickAdapter) {
        baseQuickAdapter.getClass();
        return null;
    }

    private final void k(RecyclerView.a0 a0Var) {
        if (this.f20533h) {
            if (!this.f20534i || a0Var.getLayoutPosition() > this.f20540o) {
                m6.b aVar = this.f20535j;
                if (aVar == null) {
                    aVar = new m6.a(0.0f, 1, null);
                }
                View view = a0Var.itemView;
                Intrinsics.g(view, "holder.itemView");
                for (Animator animator : aVar.a(view)) {
                    A1(animator, a0Var.getLayoutPosition());
                }
                this.f20540o = a0Var.getLayoutPosition();
            }
        }
    }

    public static int k1(BaseQuickAdapter baseQuickAdapter, View view, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHeaderView");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 1;
        }
        return baseQuickAdapter.j1(view, i10, i11);
    }

    public static int u(BaseQuickAdapter baseQuickAdapter, View view, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addFooterView");
        }
        if ((i12 & 2) != 0) {
            i10 = -1;
        }
        if ((i12 & 4) != 0) {
            i11 = 1;
        }
        return baseQuickAdapter.t(view, i10, i11);
    }

    public static int y(BaseQuickAdapter baseQuickAdapter, View view, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addHeaderView");
        }
        if ((i12 & 2) != 0) {
            i10 = -1;
        }
        if ((i12 & 4) != 0) {
            i11 = 1;
        }
        return baseQuickAdapter.x(view, i10, i11);
    }

    protected void A0(BaseViewHolder viewHolder, int i10) {
        Intrinsics.h(viewHolder, "viewHolder");
    }

    protected void A1(Animator anim, int i10) {
        Intrinsics.h(anim, "anim");
        anim.start();
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (u0(holder.getItemViewType())) {
            f1(holder);
        } else {
            k(holder);
        }
    }

    @Deprecated
    public void C0(int i10) {
        G0(i10);
    }

    public void D0(Object obj) {
        int iIndexOf = this.f20527b.indexOf(obj);
        if (iIndexOf == -1) {
            return;
        }
        G0(iIndexOf);
    }

    protected final void E(int i10) {
        if (this.f20527b.size() == i10) {
            notifyDataSetChanged();
        }
    }

    public final void E0() {
        if (r0()) {
            LinearLayout linearLayout = this.f20538m;
            if (linearLayout == null) {
                Intrinsics.y("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int iX = X();
            if (iX != -1) {
                notifyItemRemoved(iX);
            }
        }
    }

    protected abstract void F(BaseViewHolder baseViewHolder, Object obj);

    public final void F0() {
        if (s0()) {
            LinearLayout linearLayout = this.f20537l;
            if (linearLayout == null) {
                Intrinsics.y("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            int iC0 = c0();
            if (iC0 != -1) {
                notifyItemRemoved(iC0);
            }
        }
    }

    protected void G(BaseViewHolder holder, Object obj, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
    }

    public void G0(int i10) {
        if (i10 >= this.f20527b.size()) {
            return;
        }
        this.f20527b.remove(i10);
        int iA0 = i10 + a0();
        notifyItemRemoved(iA0);
        E(0);
        notifyItemRangeChanged(iA0, this.f20527b.size() - iA0);
    }

    public final void H0() {
        FrameLayout frameLayout = this.f20539n;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.y("mEmptyLayout");
                frameLayout = null;
            }
            frameLayout.removeAllViews();
        }
    }

    protected BaseViewHolder I(View view) {
        Intrinsics.h(view, "view");
        Class clsE0 = null;
        for (Class<?> superclass = getClass(); clsE0 == null && superclass != null; superclass = superclass.getSuperclass()) {
            clsE0 = e0(superclass);
        }
        BaseViewHolder baseViewHolder = clsE0 == null ? new BaseViewHolder(view) : H(clsE0, view);
        return baseViewHolder == null ? new BaseViewHolder(view) : baseViewHolder;
    }

    public final void I0(View footer) {
        int iX;
        Intrinsics.h(footer, "footer");
        if (r0()) {
            LinearLayout linearLayout = this.f20538m;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.y("mFooterLayout");
                linearLayout = null;
            }
            linearLayout.removeView(footer);
            LinearLayout linearLayout3 = this.f20538m;
            if (linearLayout3 == null) {
                Intrinsics.y("mFooterLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (iX = X()) == -1) {
                return;
            }
            notifyItemRemoved(iX);
        }
    }

    protected BaseViewHolder J(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        return I(u6.a.a(parent, i10));
    }

    public final void J0(View header) {
        int iC0;
        Intrinsics.h(header, "header");
        if (s0()) {
            LinearLayout linearLayout = this.f20537l;
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.y("mHeaderLayout");
                linearLayout = null;
            }
            linearLayout.removeView(header);
            LinearLayout linearLayout3 = this.f20537l;
            if (linearLayout3 == null) {
                Intrinsics.y("mHeaderLayout");
            } else {
                linearLayout2 = linearLayout3;
            }
            if (linearLayout2.getChildCount() != 0 || (iC0 = c0()) == -1) {
                return;
            }
            notifyItemRemoved(iC0);
        }
    }

    public final m6.b K() {
        return this.f20535j;
    }

    @Deprecated
    public void K0(Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        n1(newData);
    }

    public final boolean L() {
        return this.f20533h;
    }

    public final void L0(m6.b bVar) {
        this.f20533h = true;
        this.f20535j = bVar;
    }

    public final LinkedHashSet<Integer> M() {
        return this.f20550y;
    }

    public final void M0(boolean z10) {
        this.f20533h = z10;
    }

    public final LinkedHashSet<Integer> N() {
        return this.f20551z;
    }

    public final void N0(boolean z10) {
        this.f20534i = z10;
    }

    protected int O() {
        return this.f20527b.size();
    }

    public final void O0(AnimationType animationType) {
        m6.b aVar;
        Intrinsics.h(animationType, "animationType");
        int i10 = b.f20552a[animationType.ordinal()];
        if (i10 == 1) {
            aVar = new m6.a(0.0f, 1, null);
        } else if (i10 == 2) {
            aVar = new m6.c(0.0f, 1, null);
        } else if (i10 == 3) {
            aVar = new m6.d();
        } else if (i10 == 4) {
            aVar = new m6.e();
        } else {
            if (i10 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            aVar = new m6.f();
        }
        L0(aVar);
    }

    protected int P(int i10) {
        return super.getItemViewType(i10);
    }

    public void P0(int i10, Object obj) {
        if (i10 >= this.f20527b.size()) {
            return;
        }
        this.f20527b.set(i10, obj);
        notifyItemChanged(i10 + a0());
    }

    @Deprecated
    public final o6.c Q() {
        return R();
    }

    public final void Q0(List<Object> list) {
        Intrinsics.h(list, "<set-?>");
        this.f20527b = list;
    }

    public final o6.c R() {
        o6.c cVar = this.f20536k;
        if (cVar == null) {
            throw new IllegalStateException("Please use setDiffCallback() or setDiffConfig() first!");
        }
        Intrinsics.e(cVar);
        return cVar;
    }

    public final void R0(DiffUtil.e diffCallback) {
        Intrinsics.h(diffCallback, "diffCallback");
        S0(new o6.d.a(diffCallback).a());
    }

    public final t6.a S() {
        throw new IllegalStateException("Please first implements DraggableModule");
    }

    public final void S0(o6.d config) {
        Intrinsics.h(config, "config");
        this.f20536k = new o6.c(this, config);
    }

    public final FrameLayout T() {
        FrameLayout frameLayout = this.f20539n;
        if (frameLayout != null) {
            if (frameLayout != null) {
                return frameLayout;
            }
            Intrinsics.y("mEmptyLayout");
        }
        return null;
    }

    public void T0(@NonNull DiffUtil.d diffResult, List<Object> list) {
        Intrinsics.h(diffResult, "diffResult");
        Intrinsics.h(list, "list");
        if (q0()) {
            q1(list);
        } else {
            diffResult.b(new o6.e(this));
            this.f20527b = list;
        }
    }

    public final LinearLayout U() {
        LinearLayout linearLayout = this.f20538m;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.y("mFooterLayout");
        }
        return null;
    }

    @JvmOverloads
    public final void U0(List<Object> list) {
        W0(this, list, null, 2, null);
    }

    public final int V() {
        return r0() ? 1 : 0;
    }

    @JvmOverloads
    public void V0(List<Object> list, Runnable runnable) {
        if (q0()) {
            q1(list);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        o6.c cVar = this.f20536k;
        if (cVar != null) {
            cVar.f(list, runnable);
        }
    }

    public final boolean W() {
        return this.f20532g;
    }

    public final int X() {
        if (!q0()) {
            return a0() + this.f20527b.size();
        }
        int i10 = (this.f20528c && s0()) ? 2 : 1;
        if (this.f20529d) {
            return i10;
        }
        return -1;
    }

    public final void X0(int i10) {
        RecyclerView recyclerView = this.f20549x;
        if (recyclerView != null) {
            View view = LayoutInflater.from(recyclerView.getContext()).inflate(i10, (ViewGroup) recyclerView, false);
            Intrinsics.g(view, "view");
            Y0(view);
        }
    }

    public final boolean Y() {
        return this.f20529d;
    }

    public final void Y0(View emptyView) {
        boolean z10;
        Intrinsics.h(emptyView, "emptyView");
        int itemCount = getItemCount();
        FrameLayout frameLayout = null;
        if (this.f20539n == null) {
            FrameLayout frameLayout2 = new FrameLayout(emptyView.getContext());
            this.f20539n = frameLayout2;
            ViewGroup.LayoutParams layoutParams = emptyView.getLayoutParams();
            frameLayout2.setLayoutParams(layoutParams != null ? new ViewGroup.LayoutParams(layoutParams.width, layoutParams.height) : new ViewGroup.LayoutParams(-1, -1));
            z10 = true;
        } else {
            ViewGroup.LayoutParams layoutParams2 = emptyView.getLayoutParams();
            if (layoutParams2 != null) {
                FrameLayout frameLayout3 = this.f20539n;
                if (frameLayout3 == null) {
                    Intrinsics.y("mEmptyLayout");
                    frameLayout3 = null;
                }
                ViewGroup.LayoutParams layoutParams3 = frameLayout3.getLayoutParams();
                layoutParams3.width = layoutParams2.width;
                layoutParams3.height = layoutParams2.height;
                FrameLayout frameLayout4 = this.f20539n;
                if (frameLayout4 == null) {
                    Intrinsics.y("mEmptyLayout");
                    frameLayout4 = null;
                }
                frameLayout4.setLayoutParams(layoutParams3);
            }
            z10 = false;
        }
        FrameLayout frameLayout5 = this.f20539n;
        if (frameLayout5 == null) {
            Intrinsics.y("mEmptyLayout");
            frameLayout5 = null;
        }
        frameLayout5.removeAllViews();
        FrameLayout frameLayout6 = this.f20539n;
        if (frameLayout6 == null) {
            Intrinsics.y("mEmptyLayout");
        } else {
            frameLayout = frameLayout6;
        }
        frameLayout.addView(emptyView);
        this.f20530e = true;
        if (z10 && q0()) {
            int i10 = (this.f20528c && s0()) ? 1 : 0;
            if (getItemCount() > itemCount) {
                notifyItemInserted(i10);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public final LinearLayout Z() {
        LinearLayout linearLayout = this.f20537l;
        if (linearLayout != null) {
            if (linearLayout != null) {
                return linearLayout;
            }
            Intrinsics.y("mHeaderLayout");
        }
        return null;
    }

    @JvmOverloads
    public final int Z0(View view) {
        Intrinsics.h(view, "view");
        return c1(this, view, 0, 0, 6, null);
    }

    public final int a0() {
        return s0() ? 1 : 0;
    }

    @JvmOverloads
    public final int a1(View view, int i10) {
        Intrinsics.h(view, "view");
        return c1(this, view, i10, 0, 4, null);
    }

    public final boolean b0() {
        return this.f20531f;
    }

    @JvmOverloads
    public final int b1(View view, int i10, int i11) {
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = this.f20538m;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.y("mFooterLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i10) {
                LinearLayout linearLayout3 = this.f20538m;
                if (linearLayout3 == null) {
                    Intrinsics.y("mFooterLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i10);
                LinearLayout linearLayout4 = this.f20538m;
                if (linearLayout4 == null) {
                    Intrinsics.y("mFooterLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i10);
                return i10;
            }
        }
        return t(view, i10, i11);
    }

    public final int c0() {
        return (!q0() || this.f20528c) ? 0 : -1;
    }

    public final boolean d0() {
        return this.f20528c;
    }

    public final void d1(boolean z10) {
        this.f20532g = z10;
    }

    public final void e1(boolean z10) {
        this.f20529d = z10;
    }

    public Object f0(int i10) {
        return CollectionsKt.l0(this.f20527b, i10);
    }

    protected void f1(RecyclerView.a0 holder) {
        Intrinsics.h(holder, "holder");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
    }

    public int g0(Object obj) {
        if (obj == null || this.f20527b.isEmpty()) {
            return -1;
        }
        return this.f20527b.indexOf(obj);
    }

    public final void g1(r6.a aVar) {
    }

    public final Context getContext() {
        Context context = getRecyclerView().getContext();
        Intrinsics.g(context, "recyclerView.context");
        return context;
    }

    public final List<Object> getData() {
        return this.f20527b;
    }

    public Object getItem(int i10) {
        return this.f20527b.get(i10);
    }

    @Override
    public int getItemCount() {
        int i10 = 1;
        if (!q0()) {
            t6.f fVar = this.f20548w;
            return a0() + O() + V() + ((fVar == null || !fVar.m()) ? 0 : 1);
        }
        if (this.f20528c && s0()) {
            i10 = 2;
        }
        return (this.f20529d && r0()) ? i10 + 1 : i10;
    }

    @Override
    public long getItemId(int i10) {
        return i10;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @Override
    public int getItemViewType(int i10) {
        if (q0()) {
            boolean z10 = this.f20528c && s0();
            if (i10 != 0) {
                return i10 != 1 ? D : D;
            }
            if (z10) {
                return B;
            }
            return E;
        }
        boolean zS0 = s0();
        if (zS0 && i10 == 0) {
            return B;
        }
        if (zS0) {
            i10--;
        }
        int size = this.f20527b.size();
        if (i10 < size) {
            return P(i10);
        }
        return i10 - size < r0() ? D : C;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.f20549x;
        if (recyclerView == null) {
            throw new IllegalStateException("Please get it after onAttachedToRecyclerView()");
        }
        Intrinsics.e(recyclerView);
        return recyclerView;
    }

    public final t6.f h0() {
        t6.f fVar = this.f20548w;
        if (fVar == null) {
            throw new IllegalStateException("Please first implements LoadMoreModule");
        }
        Intrinsics.e(fVar);
        return fVar;
    }

    @JvmOverloads
    public final int h1(View view) {
        Intrinsics.h(view, "view");
        return k1(this, view, 0, 0, 6, null);
    }

    public final t6.f i0() {
        return this.f20548w;
    }

    @JvmOverloads
    public final int i1(View view, int i10) {
        Intrinsics.h(view, "view");
        return k1(this, view, i10, 0, 4, null);
    }

    public final r6.b j0() {
        return this.f20544s;
    }

    @JvmOverloads
    public final int j1(View view, int i10, int i11) {
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = this.f20537l;
        if (linearLayout != null) {
            LinearLayout linearLayout2 = null;
            if (linearLayout == null) {
                Intrinsics.y("mHeaderLayout");
                linearLayout = null;
            }
            if (linearLayout.getChildCount() > i10) {
                LinearLayout linearLayout3 = this.f20537l;
                if (linearLayout3 == null) {
                    Intrinsics.y("mHeaderLayout");
                    linearLayout3 = null;
                }
                linearLayout3.removeViewAt(i10);
                LinearLayout linearLayout4 = this.f20537l;
                if (linearLayout4 == null) {
                    Intrinsics.y("mHeaderLayout");
                } else {
                    linearLayout2 = linearLayout4;
                }
                linearLayout2.addView(view, i10);
                return i10;
            }
        }
        return x(view, i10, i11);
    }

    public final r6.c k0() {
        return null;
    }

    public final void l(int... viewIds) {
        Intrinsics.h(viewIds, "viewIds");
        for (int i10 : viewIds) {
            this.f20550y.add(Integer.valueOf(i10));
        }
    }

    public final r6.d l0() {
        return this.f20542q;
    }

    public final void l1(boolean z10) {
        this.f20531f = z10;
    }

    public final void m(int... viewIds) {
        Intrinsics.h(viewIds, "viewIds");
        for (int i10 : viewIds) {
            this.f20551z.add(Integer.valueOf(i10));
        }
    }

    public final r6.e m0() {
        return this.f20543r;
    }

    public final void m1(boolean z10) {
        this.f20528c = z10;
    }

    public void n(int i10, Object obj) {
        this.f20527b.add(i10, obj);
        notifyItemInserted(i10 + a0());
        E(1);
    }

    public final RecyclerView n0() {
        return this.f20549x;
    }

    public void n1(Collection<Object> collection) {
        List<Object> list = this.f20527b;
        if (collection != list) {
            list.clear();
            if (collection != null && !collection.isEmpty()) {
                this.f20527b.addAll(collection);
            }
        } else if (collection == null || collection.isEmpty()) {
            this.f20527b.clear();
        } else {
            ArrayList arrayList = new ArrayList(collection);
            this.f20527b.clear();
            this.f20527b.addAll(arrayList);
        }
        t6.f fVar = this.f20548w;
        if (fVar != null) {
            fVar.x();
        }
        this.f20540o = -1;
        notifyDataSetChanged();
        t6.f fVar2 = this.f20548w;
        if (fVar2 != null) {
            fVar2.f();
        }
    }

    public void o(int i10, Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        this.f20527b.addAll(i10, newData);
        notifyItemRangeInserted(i10 + a0(), newData.size());
        E(newData.size());
    }

    public final t6.g o0() {
        t6.g gVar = this.f20546u;
        if (gVar == null) {
            throw new IllegalStateException("Please first implements UpFetchModule");
        }
        Intrinsics.e(gVar);
        return gVar;
    }

    public final void o1(t6.f fVar) {
        this.f20548w = fVar;
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.f20549x = recyclerView;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.d0(new c(layoutManager, gridLayoutManager.Y()));
        }
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.f20549x = null;
    }

    public void p(@NonNull Object obj) {
        this.f20527b.add(obj);
        notifyItemInserted(this.f20527b.size() + a0());
        E(1);
    }

    public final View p0(int i10, int i11) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView = this.f20549x;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(i10)) == null) {
            return null;
        }
        return baseViewHolder.getViewOrNull(i11);
    }

    @Deprecated
    public void p1(List<Object> list) {
        q1(list);
    }

    public void q(@NonNull Collection<Object> newData) {
        Intrinsics.h(newData, "newData");
        this.f20527b.addAll(newData);
        notifyItemRangeInserted((this.f20527b.size() - newData.size()) + a0(), newData.size());
        E(newData.size());
    }

    public final boolean q0() {
        FrameLayout frameLayout = this.f20539n;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.y("mEmptyLayout");
                frameLayout = null;
            }
            if (frameLayout.getChildCount() != 0 && this.f20530e) {
                return this.f20527b.isEmpty();
            }
            return false;
        }
        return false;
    }

    public void q1(List<Object> list) {
        if (list == this.f20527b) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f20527b = list;
        t6.f fVar = this.f20548w;
        if (fVar != null) {
            fVar.x();
        }
        this.f20540o = -1;
        notifyDataSetChanged();
        t6.f fVar2 = this.f20548w;
        if (fVar2 != null) {
            fVar2.f();
        }
    }

    @JvmOverloads
    public final int r(View view) {
        Intrinsics.h(view, "view");
        return u(this, view, 0, 0, 6, null);
    }

    public final boolean r0() {
        LinearLayout linearLayout = this.f20538m;
        if (linearLayout == null) {
            return false;
        }
        if (linearLayout == null) {
            Intrinsics.y("mFooterLayout");
            linearLayout = null;
        }
        return linearLayout.getChildCount() > 0;
    }

    protected void r1(View v10, int i10) {
        Intrinsics.h(v10, "v");
        r6.b bVar = this.f20544s;
        if (bVar != null) {
            bVar.a(this, v10, i10);
        }
    }

    @JvmOverloads
    public final int s(View view, int i10) {
        Intrinsics.h(view, "view");
        return u(this, view, i10, 0, 4, null);
    }

    public final boolean s0() {
        LinearLayout linearLayout = this.f20537l;
        if (linearLayout == null) {
            return false;
        }
        if (linearLayout == null) {
            Intrinsics.y("mHeaderLayout");
            linearLayout = null;
        }
        return linearLayout.getChildCount() > 0;
    }

    public final void s1(r6.b bVar) {
        this.f20544s = bVar;
    }

    @JvmOverloads
    public final int t(View view, int i10, int i11) {
        int iX;
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = null;
        if (this.f20538m == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.f20538m = linearLayout2;
            linearLayout2.setOrientation(i11);
            LinearLayout linearLayout3 = this.f20538m;
            if (linearLayout3 == null) {
                Intrinsics.y("mFooterLayout");
                linearLayout3 = null;
            }
            linearLayout3.setLayoutParams(i11 == 1 ? new RecyclerView.n(-1, -2) : new RecyclerView.n(-2, -1));
        }
        LinearLayout linearLayout4 = this.f20538m;
        if (linearLayout4 == null) {
            Intrinsics.y("mFooterLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i10 < 0 || i10 > childCount) {
            i10 = childCount;
        }
        LinearLayout linearLayout5 = this.f20538m;
        if (linearLayout5 == null) {
            Intrinsics.y("mFooterLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i10);
        LinearLayout linearLayout6 = this.f20538m;
        if (linearLayout6 == null) {
            Intrinsics.y("mFooterLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (iX = X()) != -1) {
            notifyItemInserted(iX);
        }
        return i10;
    }

    public final boolean t0() {
        return this.f20534i;
    }

    protected boolean t1(View v10, int i10) {
        Intrinsics.h(v10, "v");
        return false;
    }

    protected boolean u0(int i10) {
        return i10 == 268436821 || i10 == 268435729 || i10 == 268436275 || i10 == 268436002;
    }

    public final void u1(r6.c cVar) {
    }

    @JvmOverloads
    public final int v(View view) {
        Intrinsics.h(view, "view");
        return y(this, view, 0, 0, 6, null);
    }

    public final boolean v0() {
        return this.f20530e;
    }

    protected void v1(View v10, int i10) {
        Intrinsics.h(v10, "v");
        r6.d dVar = this.f20542q;
        if (dVar != null) {
            dVar.a(this, v10, i10);
        }
    }

    @JvmOverloads
    public final int w(View view, int i10) {
        Intrinsics.h(view, "view");
        return y(this, view, i10, 0, 4, null);
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, int i10) {
        Intrinsics.h(holder, "holder");
        t6.g gVar = this.f20546u;
        if (gVar != null) {
            gVar.a(i10);
        }
        t6.f fVar = this.f20548w;
        if (fVar != null) {
            fVar.e(i10);
        }
        switch (holder.getItemViewType()) {
            case B:
            case D:
            case E:
                break;
            case C:
                t6.f fVar2 = this.f20548w;
                if (fVar2 != null) {
                    fVar2.j().convert(holder, i10, fVar2.i());
                }
                break;
            default:
                F(holder, getItem(i10 - a0()));
                break;
        }
    }

    public final void w1(r6.d dVar) {
        this.f20542q = dVar;
    }

    @JvmOverloads
    public final int x(View view, int i10, int i11) {
        int iC0;
        Intrinsics.h(view, "view");
        LinearLayout linearLayout = null;
        if (this.f20537l == null) {
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            this.f20537l = linearLayout2;
            linearLayout2.setOrientation(i11);
            LinearLayout linearLayout3 = this.f20537l;
            if (linearLayout3 == null) {
                Intrinsics.y("mHeaderLayout");
                linearLayout3 = null;
            }
            linearLayout3.setLayoutParams(i11 == 1 ? new RecyclerView.n(-1, -2) : new RecyclerView.n(-2, -1));
        }
        LinearLayout linearLayout4 = this.f20537l;
        if (linearLayout4 == null) {
            Intrinsics.y("mHeaderLayout");
            linearLayout4 = null;
        }
        int childCount = linearLayout4.getChildCount();
        if (i10 < 0 || i10 > childCount) {
            i10 = childCount;
        }
        LinearLayout linearLayout5 = this.f20537l;
        if (linearLayout5 == null) {
            Intrinsics.y("mHeaderLayout");
            linearLayout5 = null;
        }
        linearLayout5.addView(view, i10);
        LinearLayout linearLayout6 = this.f20537l;
        if (linearLayout6 == null) {
            Intrinsics.y("mHeaderLayout");
        } else {
            linearLayout = linearLayout6;
        }
        if (linearLayout.getChildCount() == 1 && (iC0 = c0()) != -1) {
            notifyItemInserted(iC0);
        }
        return i10;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, int i10, List<Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i10);
        }
        t6.g gVar = this.f20546u;
        if (gVar != null) {
            gVar.a(i10);
        }
        t6.f fVar = this.f20548w;
        if (fVar != null) {
            fVar.e(i10);
        }
        switch (holder.getItemViewType()) {
            case B:
            case D:
            case E:
                break;
            case C:
                t6.f fVar2 = this.f20548w;
                if (fVar2 != null) {
                    fVar2.j().convert(holder, i10, fVar2.i());
                }
                break;
            default:
                G(holder, getItem(i10 - a0()), payloads);
                break;
        }
    }

    protected boolean x1(View v10, int i10) {
        Intrinsics.h(v10, "v");
        r6.e eVar = this.f20543r;
        if (eVar != null) {
            return eVar.a(this, v10, i10);
        }
        return false;
    }

    protected BaseViewHolder y0(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        return J(parent, this.f20526a);
    }

    public final void y1(r6.e eVar) {
        this.f20543r = eVar;
    }

    protected void z(final BaseViewHolder viewHolder, int i10) {
        Intrinsics.h(viewHolder, "viewHolder");
        if (this.f20542q != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseQuickAdapter.B(viewHolder, this, view);
                }
            });
        }
        if (this.f20543r != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view) {
                    return BaseQuickAdapter.C(viewHolder, this, view);
                }
            });
        }
        if (this.f20544s != null) {
            for (Integer id2 : M()) {
                View view = viewHolder.itemView;
                Intrinsics.g(id2, "id");
                View viewFindViewById = view.findViewById(id2.intValue());
                if (viewFindViewById != null) {
                    Intrinsics.g(viewFindViewById, "findViewById<View>(id)");
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view2) {
                            BaseQuickAdapter.A(viewHolder, this, view2);
                        }
                    });
                }
            }
        }
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View view = null;
        switch (i10) {
            case B:
                LinearLayout linearLayout = this.f20537l;
                if (linearLayout == null) {
                    Intrinsics.y("mHeaderLayout");
                    linearLayout = null;
                }
                ViewParent parent2 = linearLayout.getParent();
                if (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    LinearLayout linearLayout2 = this.f20537l;
                    if (linearLayout2 == null) {
                        Intrinsics.y("mHeaderLayout");
                        linearLayout2 = null;
                    }
                    viewGroup.removeView(linearLayout2);
                }
                LinearLayout linearLayout3 = this.f20537l;
                if (linearLayout3 == null) {
                    Intrinsics.y("mHeaderLayout");
                } else {
                    view = linearLayout3;
                }
                return I(view);
            case C:
                t6.f fVar = this.f20548w;
                Intrinsics.e(fVar);
                BaseViewHolder baseViewHolderI = I(fVar.j().getRootView(parent));
                t6.f fVar2 = this.f20548w;
                Intrinsics.e(fVar2);
                fVar2.F(baseViewHolderI);
                return baseViewHolderI;
            case D:
                LinearLayout linearLayout4 = this.f20538m;
                if (linearLayout4 == null) {
                    Intrinsics.y("mFooterLayout");
                    linearLayout4 = null;
                }
                ViewParent parent3 = linearLayout4.getParent();
                if (parent3 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent3;
                    LinearLayout linearLayout5 = this.f20538m;
                    if (linearLayout5 == null) {
                        Intrinsics.y("mFooterLayout");
                        linearLayout5 = null;
                    }
                    viewGroup2.removeView(linearLayout5);
                }
                LinearLayout linearLayout6 = this.f20538m;
                if (linearLayout6 == null) {
                    Intrinsics.y("mFooterLayout");
                } else {
                    view = linearLayout6;
                }
                return I(view);
            case E:
                FrameLayout frameLayout = this.f20539n;
                if (frameLayout == null) {
                    Intrinsics.y("mEmptyLayout");
                    frameLayout = null;
                }
                ViewParent parent4 = frameLayout.getParent();
                if (parent4 instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) parent4;
                    FrameLayout frameLayout2 = this.f20539n;
                    if (frameLayout2 == null) {
                        Intrinsics.y("mEmptyLayout");
                        frameLayout2 = null;
                    }
                    viewGroup3.removeView(frameLayout2);
                }
                FrameLayout frameLayout3 = this.f20539n;
                if (frameLayout3 == null) {
                    Intrinsics.y("mEmptyLayout");
                } else {
                    view = frameLayout3;
                }
                return I(view);
            default:
                BaseViewHolder baseViewHolderY0 = y0(parent, i10);
                z(baseViewHolderY0, i10);
                A0(baseViewHolderY0, i10);
                return baseViewHolderY0;
        }
    }

    public final void z1(boolean z10) {
        this.f20530e = z10;
    }

    public BaseQuickAdapter(int i10, List list) {
        this.f20526a = i10;
        this.f20527b = list == null ? new ArrayList() : list;
        this.f20530e = true;
        this.f20534i = true;
        this.f20540o = -1;
        D();
        this.f20550y = new LinkedHashSet<>();
        this.f20551z = new LinkedHashSet<>();
    }
}
