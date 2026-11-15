package androidx.constraintlayout.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.f;
import androidx.constraintlayout.core.widgets.g;
import androidx.constraintlayout.core.widgets.i;
import androidx.core.view.InputDeviceCompat;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean MEASURE = false;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.1.4";
    private static d sSharedValues;
    SparseArray<View> mChildrenByIds;
    private ArrayList<ConstraintHelper> mConstraintHelpers;
    protected androidx.constraintlayout.widget.a mConstraintLayoutSpec;
    private androidx.constraintlayout.widget.b mConstraintSet;
    private int mConstraintSetId;
    private androidx.constraintlayout.widget.c mConstraintsChangedListener;
    private HashMap<String, Integer> mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected androidx.constraintlayout.core.widgets.d mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    c mMeasurer;
    private androidx.constraintlayout.core.e mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<ConstraintWidget> mTempMapIdToWidget;

    static class a {

        static final int[] f7352a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f7352a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7352a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7352a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7352a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class c implements androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0052b {

        ConstraintLayout f7403a;

        int f7404b;

        int f7405c;

        int f7406d;

        int f7407e;

        int f7408f;

        int f7409g;

        public c(ConstraintLayout constraintLayout) {
            this.f7403a = constraintLayout;
        }

        private boolean d(int i10, int i11, int i12) {
            if (i10 == i11) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i10);
            View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i12 == size;
            }
            return false;
        }

        @Override
        public final void a() {
            int childCount = this.f7403a.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = this.f7403a.getChildAt(i10);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).updatePostMeasure(this.f7403a);
                }
            }
            int size = this.f7403a.mConstraintHelpers.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    ((ConstraintHelper) this.f7403a.mConstraintHelpers.get(i11)).updatePostMeasure(this.f7403a);
                }
            }
        }

        @Override
        public final void b(ConstraintWidget constraintWidget, androidx.constraintlayout.core.widgets.analyzer.b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int iMax2;
            int iMakeMeasureSpec3;
            int i10;
            if (constraintWidget == null) {
                return;
            }
            if (constraintWidget.X() == 8 && !constraintWidget.l0()) {
                aVar.f6635e = 0;
                aVar.f6636f = 0;
                aVar.f6637g = 0;
                return;
            }
            if (constraintWidget.M() == null) {
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f6631a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = aVar.f6632b;
            int i11 = aVar.f6633c;
            int i12 = aVar.f6634d;
            int i13 = this.f7404b + this.f7405c;
            int i14 = this.f7406d;
            View view = (View) constraintWidget.u();
            int[] iArr = a.f7352a;
            int i15 = iArr[dimensionBehaviour.ordinal()];
            if (i15 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
            } else if (i15 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7408f, i14, -2);
            } else if (i15 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7408f, i14 + constraintWidget.D(), -1);
            } else if (i15 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f7408f, i14, -2);
                boolean z10 = constraintWidget.f6591w == 1;
                int i16 = aVar.f6640j;
                if (i16 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6629l || i16 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6630m) {
                    boolean z11 = view.getMeasuredHeight() == constraintWidget.z();
                    if (aVar.f6640j == androidx.constraintlayout.core.widgets.analyzer.b.a.f6630m || !z10 || ((z10 && z11) || (view instanceof Placeholder) || constraintWidget.p0())) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.Y(), 1073741824);
                    }
                }
            }
            int i17 = iArr[dimensionBehaviour2.ordinal()];
            if (i17 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else if (i17 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7409g, i13, -2);
            } else if (i17 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7409g, i13 + constraintWidget.W(), -1);
            } else if (i17 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f7409g, i13, -2);
                boolean z12 = constraintWidget.f6593x == 1;
                int i18 = aVar.f6640j;
                if (i18 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6629l || i18 == androidx.constraintlayout.core.widgets.analyzer.b.a.f6630m) {
                    boolean z13 = view.getMeasuredWidth() == constraintWidget.Y();
                    if (aVar.f6640j == androidx.constraintlayout.core.widgets.analyzer.b.a.f6630m || !z12 || ((z12 && z13) || (view instanceof Placeholder) || constraintWidget.q0())) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.z(), 1073741824);
                    }
                }
            }
            androidx.constraintlayout.core.widgets.d dVar = (androidx.constraintlayout.core.widgets.d) constraintWidget.M();
            if (dVar != null && g.b(ConstraintLayout.this.mOptimizationLevel, 256) && view.getMeasuredWidth() == constraintWidget.Y() && view.getMeasuredWidth() < dVar.Y() && view.getMeasuredHeight() == constraintWidget.z() && view.getMeasuredHeight() < dVar.z() && view.getBaseline() == constraintWidget.r() && !constraintWidget.o0() && d(constraintWidget.E(), iMakeMeasureSpec, constraintWidget.Y()) && d(constraintWidget.F(), iMakeMeasureSpec2, constraintWidget.z())) {
                aVar.f6635e = constraintWidget.Y();
                aVar.f6636f = constraintWidget.z();
                aVar.f6637g = constraintWidget.r();
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z14 = dimensionBehaviour == dimensionBehaviour3;
            boolean z15 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z16 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z17 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z18 = z14 && constraintWidget.f6558f0 > 0.0f;
            boolean z19 = z15 && constraintWidget.f6558f0 > 0.0f;
            if (view == null) {
                return;
            }
            b bVar = (b) view.getLayoutParams();
            int i19 = aVar.f6640j;
            if (i19 != androidx.constraintlayout.core.widgets.analyzer.b.a.f6629l && i19 != androidx.constraintlayout.core.widgets.analyzer.b.a.f6630m && z14 && constraintWidget.f6591w == 0 && z15 && constraintWidget.f6593x == 0) {
                i10 = -1;
                iMax2 = 0;
                baseline = 0;
                iMax = 0;
            } else {
                if ((view instanceof VirtualLayout) && (constraintWidget instanceof i)) {
                    ((VirtualLayout) view).onMeasure((i) constraintWidget, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                constraintWidget.Z0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i20 = constraintWidget.f6597z;
                iMax = i20 > 0 ? Math.max(i20, measuredWidth) : measuredWidth;
                int i21 = constraintWidget.A;
                if (i21 > 0) {
                    iMax = Math.min(i21, iMax);
                }
                int i22 = constraintWidget.C;
                iMax2 = i22 > 0 ? Math.max(i22, measuredHeight) : measuredHeight;
                int i23 = constraintWidget.D;
                if (i23 > 0) {
                    iMax2 = Math.min(i23, iMax2);
                }
                if (!g.b(ConstraintLayout.this.mOptimizationLevel, 1)) {
                    if (z18 && z16) {
                        iMax = (int) ((iMax2 * constraintWidget.f6558f0) + 0.5f);
                    } else if (z19 && z17) {
                        iMax2 = (int) ((iMax / constraintWidget.f6558f0) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight != iMax2) {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    if (measuredHeight != iMax2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    constraintWidget.Z0(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    iMax = view.getMeasuredWidth();
                    iMax2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i10 = -1;
            }
            boolean z20 = baseline != i10;
            aVar.f6639i = (iMax == aVar.f6633c && iMax2 == aVar.f6634d) ? false : true;
            if (bVar.f7366g0) {
                z20 = true;
            }
            if (z20 && baseline != -1 && constraintWidget.r() != baseline) {
                aVar.f6639i = true;
            }
            aVar.f6635e = iMax;
            aVar.f6636f = iMax2;
            aVar.f6638h = z20;
            aVar.f6637g = baseline;
        }

        public void c(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f7404b = i12;
            this.f7405c = i13;
            this.f7406d = i14;
            this.f7407e = i15;
            this.f7408f = i10;
            this.f7409g = i11;
        }
    }

    public ConstraintLayout(@NonNull Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(null, 0, 0);
    }

    private final ConstraintWidget a(int i10) {
        if (i10 == 0) {
            return this.mLayoutWidget;
        }
        View viewFindViewById = this.mChildrenByIds.get(i10);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i10)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.mLayoutWidget;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).f7396v0;
    }

    private void b(AttributeSet attributeSet, int i10, int i11) {
        this.mLayoutWidget.F0(this);
        this.mLayoutWidget.a2(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i10, i11);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i12 = 0; i12 < indexCount; i12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = typedArrayObtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == R$styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.mConstraintSet = bVar;
                        bVar.E(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.b2(this.mOptimizationLevel);
    }

    private void c() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void e() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i10));
            if (viewWidget != null) {
                viewWidget.v0();
            }
        }
        if (zIsInEditMode) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    a(childAt.getId()).G0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt2 = getChildAt(i12);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.b bVar = this.mConstraintSet;
        if (bVar != null) {
            bVar.k(this, true);
        }
        this.mLayoutWidget.y1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i13 = 0; i13 < size; i13++) {
                this.mConstraintHelpers.get(i13).updatePreLayout(this);
            }
        }
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt3 = getChildAt(i14);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).updatePreLayout(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt4 = getChildAt(i15);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt5 = getChildAt(i16);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                b bVar2 = (b) childAt5.getLayoutParams();
                this.mLayoutWidget.a(viewWidget2);
                applyConstraintsFromLayoutParams(zIsInEditMode, childAt5, viewWidget2, bVar2, this.mTempMapIdToWidget);
            }
        }
    }

    private void f(ConstraintWidget constraintWidget, b bVar, SparseArray sparseArray, int i10, ConstraintAnchor.Type type) {
        View view = this.mChildrenByIds.get(i10);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i10);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.f7366g0 = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            b bVar2 = (b) view.getLayoutParams();
            bVar2.f7366g0 = true;
            bVar2.f7396v0.O0(true);
        }
        constraintWidget.q(type2).b(constraintWidget2.q(type), bVar.D, bVar.C, true);
        constraintWidget.O0(true);
        constraintWidget.q(ConstraintAnchor.Type.TOP).q();
        constraintWidget.q(ConstraintAnchor.Type.BOTTOM).q();
    }

    private boolean g() {
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10).isLayoutRequested()) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            e();
        }
        return z10;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static d getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new d();
        }
        return sSharedValues;
    }

    public void applyConstraintsFromLayoutParams(boolean z10, View view, ConstraintWidget constraintWidget, b bVar, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        int i10;
        bVar.c();
        bVar.f7398w0 = false;
        constraintWidget.n1(view.getVisibility());
        if (bVar.f7372j0) {
            constraintWidget.X0(true);
            constraintWidget.n1(8);
        }
        constraintWidget.F0(view);
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).resolveRtl(constraintWidget, this.mLayoutWidget.U1());
        }
        if (bVar.f7368h0) {
            f fVar = (f) constraintWidget;
            int i11 = bVar.f7390s0;
            int i12 = bVar.f7392t0;
            float f10 = bVar.f7394u0;
            if (f10 != -1.0f) {
                fVar.D1(f10);
                return;
            } else if (i11 != -1) {
                fVar.B1(i11);
                return;
            } else {
                if (i12 != -1) {
                    fVar.C1(i12);
                    return;
                }
                return;
            }
        }
        int i13 = bVar.f7376l0;
        int i14 = bVar.f7378m0;
        int i15 = bVar.f7380n0;
        int i16 = bVar.f7382o0;
        int i17 = bVar.f7384p0;
        int i18 = bVar.f7386q0;
        float f11 = bVar.f7388r0;
        int i19 = bVar.f7383p;
        if (i19 != -1) {
            ConstraintWidget constraintWidget6 = sparseArray.get(i19);
            if (constraintWidget6 != null) {
                constraintWidget.m(constraintWidget6, bVar.f7387r, bVar.f7385q);
            }
        } else {
            if (i13 != -1) {
                ConstraintWidget constraintWidget7 = sparseArray.get(i13);
                if (constraintWidget7 != null) {
                    ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                    constraintWidget.g0(type, constraintWidget7, type, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i17);
                }
            } else if (i14 != -1 && (constraintWidget2 = sparseArray.get(i14)) != null) {
                constraintWidget.g0(ConstraintAnchor.Type.LEFT, constraintWidget2, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i17);
            }
            if (i15 != -1) {
                ConstraintWidget constraintWidget8 = sparseArray.get(i15);
                if (constraintWidget8 != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.RIGHT, constraintWidget8, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i18);
                }
            } else if (i16 != -1 && (constraintWidget3 = sparseArray.get(i16)) != null) {
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.g0(type2, constraintWidget3, type2, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i18);
            }
            int i20 = bVar.f7369i;
            if (i20 != -1) {
                ConstraintWidget constraintWidget9 = sparseArray.get(i20);
                if (constraintWidget9 != null) {
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    constraintWidget.g0(type3, constraintWidget9, type3, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f7399x);
                }
            } else {
                int i21 = bVar.f7371j;
                if (i21 != -1 && (constraintWidget4 = sparseArray.get(i21)) != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.TOP, constraintWidget4, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f7399x);
                }
            }
            int i22 = bVar.f7373k;
            if (i22 != -1) {
                ConstraintWidget constraintWidget10 = sparseArray.get(i22);
                if (constraintWidget10 != null) {
                    constraintWidget.g0(ConstraintAnchor.Type.BOTTOM, constraintWidget10, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f7401z);
                }
            } else {
                int i23 = bVar.f7375l;
                if (i23 != -1 && (constraintWidget5 = sparseArray.get(i23)) != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                    constraintWidget.g0(type4, constraintWidget5, type4, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f7401z);
                }
            }
            int i24 = bVar.f7377m;
            if (i24 != -1) {
                f(constraintWidget, bVar, sparseArray, i24, ConstraintAnchor.Type.BASELINE);
            } else {
                int i25 = bVar.f7379n;
                if (i25 != -1) {
                    f(constraintWidget, bVar, sparseArray, i25, ConstraintAnchor.Type.TOP);
                } else {
                    int i26 = bVar.f7381o;
                    if (i26 != -1) {
                        f(constraintWidget, bVar, sparseArray, i26, ConstraintAnchor.Type.BOTTOM);
                    }
                }
            }
            if (f11 >= 0.0f) {
                constraintWidget.Q0(f11);
            }
            float f12 = bVar.H;
            if (f12 >= 0.0f) {
                constraintWidget.h1(f12);
            }
        }
        if (z10 && ((i10 = bVar.X) != -1 || bVar.Y != -1)) {
            constraintWidget.f1(i10, bVar.Y);
        }
        if (bVar.f7362e0) {
            constraintWidget.T0(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.o1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.f7354a0) {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.q(ConstraintAnchor.Type.LEFT).f6543g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            constraintWidget.q(ConstraintAnchor.Type.RIGHT).f6543g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            constraintWidget.T0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.o1(0);
        }
        if (bVar.f7364f0) {
            constraintWidget.k1(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.P0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.f7356b0) {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.q(ConstraintAnchor.Type.TOP).f6543g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            constraintWidget.q(ConstraintAnchor.Type.BOTTOM).f6543g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            constraintWidget.k1(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.P0(0);
        }
        constraintWidget.H0(bVar.I);
        constraintWidget.V0(bVar.L);
        constraintWidget.m1(bVar.M);
        constraintWidget.R0(bVar.N);
        constraintWidget.i1(bVar.O);
        constraintWidget.p1(bVar.f7360d0);
        constraintWidget.U0(bVar.P, bVar.R, bVar.T, bVar.V);
        constraintWidget.l1(bVar.Q, bVar.S, bVar.U, bVar.W);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.mConstraintHelpers.get(i10).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i12 = Integer.parseInt(strArrSplit[0]);
                        int i13 = Integer.parseInt(strArrSplit[1]);
                        int i14 = Integer.parseInt(strArrSplit[2]);
                        int i15 = (int) ((i12 / 1080.0f) * width);
                        int i16 = (int) ((i13 / 1920.0f) * height);
                        int i17 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(FlowLayout.SPACING_AUTO);
                        float f10 = i15;
                        float f11 = i16;
                        float f12 = i15 + ((int) ((i14 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float f13 = i16 + i17;
                        canvas.drawLine(f12, f11, f12, f13, paint);
                        canvas.drawLine(f12, f13, f10, f13, paint);
                        canvas.drawLine(f10, f13, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, f13, paint);
                        canvas.drawLine(f10, f13, f12, f11, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(androidx.constraintlayout.core.e eVar) {
        this.mMetrics = eVar;
        this.mLayoutWidget.M1(eVar);
    }

    @Override
    public void forceLayout() {
        c();
        super.forceLayout();
    }

    public Object getDesignInformation(int i10, Object obj) {
        if (i10 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.mDesignIds;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.O1();
    }

    public String getSceneString() {
        int id2;
        StringBuilder sb2 = new StringBuilder();
        if (this.mLayoutWidget.f6575o == null) {
            int id3 = getId();
            if (id3 != -1) {
                this.mLayoutWidget.f6575o = getContext().getResources().getResourceEntryName(id3);
            } else {
                this.mLayoutWidget.f6575o = "parent";
            }
        }
        if (this.mLayoutWidget.v() == null) {
            androidx.constraintlayout.core.widgets.d dVar = this.mLayoutWidget;
            dVar.G0(dVar.f6575o);
            Log.v(TAG, " setDebugName " + this.mLayoutWidget.v());
        }
        for (ConstraintWidget constraintWidget : this.mLayoutWidget.v1()) {
            View view = (View) constraintWidget.u();
            if (view != null) {
                if (constraintWidget.f6575o == null && (id2 = view.getId()) != -1) {
                    constraintWidget.f6575o = getContext().getResources().getResourceEntryName(id2);
                }
                if (constraintWidget.v() == null) {
                    constraintWidget.G0(constraintWidget.f6575o);
                    Log.v(TAG, " setDebugName " + constraintWidget.v());
                }
            }
        }
        this.mLayoutWidget.Q(sb2);
        return sb2.toString();
    }

    public View getViewById(int i10) {
        return this.mChildrenByIds.get(i10);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f7396v0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f7396v0;
        }
        return null;
    }

    public boolean isRtl() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    public void loadLayoutDescription(int i10) {
        if (i10 == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.a(getContext(), this, i10);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            b bVar = (b) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = bVar.f7396v0;
            if ((childAt.getVisibility() != 8 || bVar.f7368h0 || bVar.f7370i0 || bVar.f7374k0 || zIsInEditMode) && !bVar.f7372j0) {
                int iZ = constraintWidget.Z();
                int iA0 = constraintWidget.a0();
                int iY = constraintWidget.Y() + iZ;
                int iZ2 = constraintWidget.z() + iA0;
                childAt.layout(iZ, iA0, iY, iZ2);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iZ, iA0, iY, iZ2);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                this.mConstraintHelpers.get(i15).updatePostLayout(this);
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.mOnMeasureWidthMeasureSpec == i10) {
            int i12 = this.mOnMeasureHeightMeasureSpec;
        }
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                if (getChildAt(i13).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
            }
        }
        this.mOnMeasureWidthMeasureSpec = i10;
        this.mOnMeasureHeightMeasureSpec = i11;
        this.mLayoutWidget.d2(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (g()) {
                this.mLayoutWidget.f2();
            }
        }
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i10, i11);
        resolveMeasuredDimension(i10, i11, this.mLayoutWidget.Y(), this.mLayoutWidget.z(), this.mLayoutWidget.V1(), this.mLayoutWidget.T1());
    }

    @Override
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof f)) {
            b bVar = (b) view.getLayoutParams();
            f fVar = new f();
            bVar.f7396v0 = fVar;
            bVar.f7368h0 = true;
            fVar.E1(bVar.Z);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((b) view.getLayoutParams()).f7370i0 = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.x1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    protected void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.a(getContext(), this, i10);
    }

    @Override
    public void requestLayout() {
        c();
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        c cVar = this.mMeasurer;
        int i14 = cVar.f7407e;
        int iResolveSizeAndState = View.resolveSizeAndState(i12 + cVar.f7406d, i10, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i13 + i14, i11, 0) & 16777215;
        int iMin = Math.min(this.mMaxWidth, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.mMaxHeight, iResolveSizeAndState2);
        if (z10) {
            iMin |= 16777216;
        }
        if (z11) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.mLastMeasureWidth = iMin;
        this.mLastMeasureHeight = iMin2;
    }

    public void resolveSystem(androidx.constraintlayout.core.widgets.d dVar, int i10, int i11, int i12) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i13 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i11, i12, iMax2, iMax3, paddingWidth, i13);
        int iMax4 = Math.max(0, getPaddingStart());
        int iMax5 = Math.max(0, getPaddingEnd());
        if (iMax4 > 0 || iMax5 > 0) {
            iMax = isRtl() ? iMax5 : iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i14 = size - paddingWidth;
        int i15 = size2 - i13;
        setSelfDimensionBehaviour(dVar, mode, i14, mode2, i15);
        dVar.W1(i10, mode, i14, mode2, i15, this.mLastMeasureWidth, this.mLastMeasureHeight, iMax, iMax2);
    }

    public void setConstraintSet(androidx.constraintlayout.widget.b bVar) {
        this.mConstraintSet = bVar;
    }

    public void setDesignInformation(int i10, Object obj, Object obj2) {
        if (i10 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            Integer num = (Integer) obj2;
            num.intValue();
            this.mDesignIds.put(strSubstring, num);
        }
    }

    @Override
    public void setId(int i10) {
        this.mChildrenByIds.remove(getId());
        super.setId(i10);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(androidx.constraintlayout.widget.c cVar) {
        this.mConstraintsChangedListener = cVar;
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.c(cVar);
        }
    }

    public void setOptimizationLevel(int i10) {
        this.mOptimizationLevel = i10;
        this.mLayoutWidget.b2(i10);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
      (r2v3 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
      (r2v0 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
     binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    protected void setSelfDimensionBehaviour(androidx.constraintlayout.core.widgets.d dVar, int i10, int i11, int i12, int i13) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        c cVar = this.mMeasurer;
        int i14 = cVar.f7407e;
        int i15 = cVar.f7406d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i10 == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i11 = Math.max(0, this.mMinWidth);
            }
        } else if (i10 == 0) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            i11 = childCount == 0 ? Math.max(0, this.mMinWidth) : 0;
        } else if (i10 != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
        } else {
            i11 = Math.min(this.mMaxWidth - i15, i11);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (i12 == Integer.MIN_VALUE) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i13 = Math.max(0, this.mMinHeight);
            }
        } else if (i12 == 0) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i13 = Math.max(0, this.mMinHeight);
            } else {
                i13 = 0;
            }
        } else if (i12 != 1073741824) {
            i13 = 0;
        } else {
            i13 = Math.min(this.mMaxHeight - i14, i13);
        }
        if (i11 != dVar.Y() || i13 != dVar.z()) {
            dVar.S1();
        }
        dVar.q1(0);
        dVar.r1(0);
        dVar.b1(this.mMaxWidth - i15);
        dVar.a1(this.mMaxHeight - i14);
        dVar.e1(0);
        dVar.d1(0);
        dVar.T0(dimensionBehaviour);
        dVar.o1(i11);
        dVar.k1(dimensionBehaviour2);
        dVar.P0(i13);
        dVar.e1(this.mMinWidth - i15);
        dVar.d1(this.mMinHeight - i14);
    }

    public void setState(int i10, int i11, int i12) {
        androidx.constraintlayout.widget.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i10, i11, i12);
        }
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, i10, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = InputDeviceCompat.SOURCE_KEYBOARD;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        b(attributeSet, i10, i11);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public int D;
        boolean E;
        boolean F;
        public float G;
        public float H;
        public String I;
        float J;
        int K;
        public float L;
        public float M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public int U;
        public float V;
        public float W;
        public int X;
        public int Y;
        public int Z;

        public int f7353a;

        public boolean f7354a0;

        public int f7355b;

        public boolean f7356b0;

        public float f7357c;

        public String f7358c0;

        public boolean f7359d;

        public int f7360d0;

        public int f7361e;

        boolean f7362e0;

        public int f7363f;

        boolean f7364f0;

        public int f7365g;

        boolean f7366g0;

        public int f7367h;

        boolean f7368h0;

        public int f7369i;

        boolean f7370i0;

        public int f7371j;

        boolean f7372j0;

        public int f7373k;

        boolean f7374k0;

        public int f7375l;

        int f7376l0;

        public int f7377m;

        int f7378m0;

        public int f7379n;

        int f7380n0;

        public int f7381o;

        int f7382o0;

        public int f7383p;

        int f7384p0;

        public int f7385q;

        int f7386q0;

        public float f7387r;

        float f7388r0;

        public int f7389s;

        int f7390s0;

        public int f7391t;

        int f7392t0;

        public int f7393u;

        float f7394u0;

        public int f7395v;

        ConstraintWidget f7396v0;

        public int f7397w;

        public boolean f7398w0;

        public int f7399x;

        public int f7400y;

        public int f7401z;

        private static class a {

            public static final SparseIntArray f7402a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f7402a = sparseIntArray;
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7353a = -1;
            this.f7355b = -1;
            this.f7357c = -1.0f;
            this.f7359d = true;
            this.f7361e = -1;
            this.f7363f = -1;
            this.f7365g = -1;
            this.f7367h = -1;
            this.f7369i = -1;
            this.f7371j = -1;
            this.f7373k = -1;
            this.f7375l = -1;
            this.f7377m = -1;
            this.f7379n = -1;
            this.f7381o = -1;
            this.f7383p = -1;
            this.f7385q = 0;
            this.f7387r = 0.0f;
            this.f7389s = -1;
            this.f7391t = -1;
            this.f7393u = -1;
            this.f7395v = -1;
            this.f7397w = Integer.MIN_VALUE;
            this.f7399x = Integer.MIN_VALUE;
            this.f7400y = Integer.MIN_VALUE;
            this.f7401z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7354a0 = false;
            this.f7356b0 = false;
            this.f7358c0 = null;
            this.f7360d0 = 0;
            this.f7362e0 = true;
            this.f7364f0 = true;
            this.f7366g0 = false;
            this.f7368h0 = false;
            this.f7370i0 = false;
            this.f7372j0 = false;
            this.f7374k0 = false;
            this.f7376l0 = -1;
            this.f7378m0 = -1;
            this.f7380n0 = -1;
            this.f7382o0 = -1;
            this.f7384p0 = Integer.MIN_VALUE;
            this.f7386q0 = Integer.MIN_VALUE;
            this.f7388r0 = 0.5f;
            this.f7396v0 = new ConstraintWidget();
            this.f7398w0 = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = a.f7402a.get(index);
                switch (i11) {
                    case 1:
                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f7383p);
                        this.f7383p = resourceId;
                        if (resourceId == -1) {
                            this.f7383p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f7385q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7385q);
                        break;
                    case 4:
                        float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.f7387r) % 360.0f;
                        this.f7387r = f10;
                        if (f10 < 0.0f) {
                            this.f7387r = (360.0f - f10) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f7353a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7353a);
                        break;
                    case 6:
                        this.f7355b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7355b);
                        break;
                    case 7:
                        this.f7357c = typedArrayObtainStyledAttributes.getFloat(index, this.f7357c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7361e);
                        this.f7361e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f7361e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7363f);
                        this.f7363f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f7363f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7365g);
                        this.f7365g = resourceId4;
                        if (resourceId4 == -1) {
                            this.f7365g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7367h);
                        this.f7367h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f7367h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7369i);
                        this.f7369i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f7369i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7371j);
                        this.f7371j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f7371j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7373k);
                        this.f7373k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f7373k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7375l);
                        this.f7375l = resourceId9;
                        if (resourceId9 == -1) {
                            this.f7375l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7377m);
                        this.f7377m = resourceId10;
                        if (resourceId10 == -1) {
                            this.f7377m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7389s);
                        this.f7389s = resourceId11;
                        if (resourceId11 == -1) {
                            this.f7389s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7391t);
                        this.f7391t = resourceId12;
                        if (resourceId12 == -1) {
                            this.f7391t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7393u);
                        this.f7393u = resourceId13;
                        if (resourceId13 == -1) {
                            this.f7393u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7395v);
                        this.f7395v = resourceId14;
                        if (resourceId14 == -1) {
                            this.f7395v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f7397w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7397w);
                        break;
                    case 22:
                        this.f7399x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7399x);
                        break;
                    case 23:
                        this.f7400y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7400y);
                        break;
                    case 24:
                        this.f7401z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7401z);
                        break;
                    case 25:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                        break;
                    case 27:
                        this.f7354a0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7354a0);
                        break;
                    case 28:
                        this.f7356b0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7356b0);
                        break;
                    case NOTIFICATION_REDIRECT_VALUE:
                        this.G = typedArrayObtainStyledAttributes.getFloat(index, this.G);
                        break;
                    case 30:
                        this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                        break;
                    case TEMPLATE_HTML_SIZE_VALUE:
                        int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.P = i12;
                        if (i12 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.Q = i13;
                        if (i13 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.R) == -2) {
                                this.R = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.T) == -2) {
                                this.T = -2;
                            }
                        }
                        break;
                    case 35:
                        this.V = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.V));
                        this.P = 2;
                        break;
                    case 36:
                        try {
                            this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.S) == -2) {
                                this.S = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.U) == -2) {
                                this.U = -2;
                            }
                        }
                        break;
                    case 38:
                        this.W = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.W));
                        this.Q = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                androidx.constraintlayout.widget.b.J(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.L = typedArrayObtainStyledAttributes.getFloat(index, this.L);
                                break;
                            case 46:
                                this.M = typedArrayObtainStyledAttributes.getFloat(index, this.M);
                                break;
                            case 47:
                                this.N = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                this.O = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.X = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.X);
                                break;
                            case 50:
                                this.Y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Y);
                                break;
                            case AD_REWARD_USER_VALUE:
                                this.f7358c0 = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7379n);
                                this.f7379n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f7379n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.f7381o);
                                this.f7381o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f7381o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            default:
                                switch (i11) {
                                    case 64:
                                        androidx.constraintlayout.widget.b.H(this, typedArrayObtainStyledAttributes, index, 0);
                                        this.E = true;
                                        break;
                                    case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                                        androidx.constraintlayout.widget.b.H(this, typedArrayObtainStyledAttributes, index, 1);
                                        this.F = true;
                                        break;
                                    case 66:
                                        this.f7360d0 = typedArrayObtainStyledAttributes.getInt(index, this.f7360d0);
                                        break;
                                    case 67:
                                        this.f7359d = typedArrayObtainStyledAttributes.getBoolean(index, this.f7359d);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            c();
        }

        public String a() {
            return this.f7358c0;
        }

        public ConstraintWidget b() {
            return this.f7396v0;
        }

        public void c() {
            this.f7368h0 = false;
            this.f7362e0 = true;
            this.f7364f0 = true;
            int i10 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i10 == -2 && this.f7354a0) {
                this.f7362e0 = false;
                if (this.P == 0) {
                    this.P = 1;
                }
            }
            int i11 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i11 == -2 && this.f7356b0) {
                this.f7364f0 = false;
                if (this.Q == 0) {
                    this.Q = 1;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.f7362e0 = false;
                if (i10 == 0 && this.P == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f7354a0 = true;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.f7364f0 = false;
                if (i11 == 0 && this.Q == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f7356b0 = true;
                }
            }
            if (this.f7357c == -1.0f && this.f7353a == -1 && this.f7355b == -1) {
                return;
            }
            this.f7368h0 = true;
            this.f7362e0 = true;
            this.f7364f0 = true;
            if (!(this.f7396v0 instanceof f)) {
                this.f7396v0 = new f();
            }
            ((f) this.f7396v0).E1(this.Z);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x004a  */
        /* JADX WARN: Code duplicated, block: B:20:0x0051  */
        /* JADX WARN: Code duplicated, block: B:23:0x0058  */
        /* JADX WARN: Code duplicated, block: B:26:0x005e  */
        /* JADX WARN: Code duplicated, block: B:29:0x0064  */
        /* JADX WARN: Code duplicated, block: B:38:0x007a  */
        /* JADX WARN: Code duplicated, block: B:39:0x0082 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:40:0x0084  */
        /* JADX WARN: Code duplicated, block: B:41:0x008b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x008d  */
        @Override
        public void resolveLayoutDirection(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i16 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i10);
            boolean z10 = false;
            boolean z11 = 1 == getLayoutDirection();
            this.f7380n0 = -1;
            this.f7382o0 = -1;
            this.f7376l0 = -1;
            this.f7378m0 = -1;
            this.f7384p0 = this.f7397w;
            this.f7386q0 = this.f7400y;
            float f10 = this.G;
            this.f7388r0 = f10;
            int i17 = this.f7353a;
            this.f7390s0 = i17;
            int i18 = this.f7355b;
            this.f7392t0 = i18;
            float f11 = this.f7357c;
            this.f7394u0 = f11;
            if (z11) {
                int i19 = this.f7389s;
                if (i19 != -1) {
                    this.f7380n0 = i19;
                } else {
                    int i20 = this.f7391t;
                    if (i20 != -1) {
                        this.f7382o0 = i20;
                    } else {
                        i11 = this.f7393u;
                        if (i11 != -1) {
                            this.f7378m0 = i11;
                            z10 = true;
                        }
                        i12 = this.f7395v;
                        if (i12 != -1) {
                            this.f7376l0 = i12;
                            z10 = true;
                        }
                        i13 = this.A;
                        if (i13 != Integer.MIN_VALUE) {
                            this.f7386q0 = i13;
                        }
                        i14 = this.B;
                        if (i14 != Integer.MIN_VALUE) {
                            this.f7384p0 = i14;
                        }
                        if (z10) {
                            this.f7388r0 = 1.0f - f10;
                        }
                        if (this.f7368h0 && this.Z == 1 && this.f7359d) {
                            if (f11 != -1.0f) {
                                this.f7394u0 = 1.0f - f11;
                                this.f7390s0 = -1;
                                this.f7392t0 = -1;
                            } else if (i17 != -1) {
                                this.f7392t0 = i17;
                                this.f7390s0 = -1;
                                this.f7394u0 = -1.0f;
                            } else if (i18 != -1) {
                                this.f7390s0 = i18;
                                this.f7392t0 = -1;
                                this.f7394u0 = -1.0f;
                            }
                        }
                    }
                }
                z10 = true;
                i11 = this.f7393u;
                if (i11 != -1) {
                    this.f7378m0 = i11;
                    z10 = true;
                }
                i12 = this.f7395v;
                if (i12 != -1) {
                    this.f7376l0 = i12;
                    z10 = true;
                }
                i13 = this.A;
                if (i13 != Integer.MIN_VALUE) {
                    this.f7386q0 = i13;
                }
                i14 = this.B;
                if (i14 != Integer.MIN_VALUE) {
                    this.f7384p0 = i14;
                }
                if (z10) {
                    this.f7388r0 = 1.0f - f10;
                }
                if (this.f7368h0) {
                    if (f11 != -1.0f) {
                        this.f7394u0 = 1.0f - f11;
                        this.f7390s0 = -1;
                        this.f7392t0 = -1;
                    } else if (i17 != -1) {
                        this.f7392t0 = i17;
                        this.f7390s0 = -1;
                        this.f7394u0 = -1.0f;
                    } else if (i18 != -1) {
                        this.f7390s0 = i18;
                        this.f7392t0 = -1;
                        this.f7394u0 = -1.0f;
                    }
                }
            } else {
                int i21 = this.f7389s;
                if (i21 != -1) {
                    this.f7378m0 = i21;
                }
                int i22 = this.f7391t;
                if (i22 != -1) {
                    this.f7376l0 = i22;
                }
                int i23 = this.f7393u;
                if (i23 != -1) {
                    this.f7380n0 = i23;
                }
                int i24 = this.f7395v;
                if (i24 != -1) {
                    this.f7382o0 = i24;
                }
                int i25 = this.A;
                if (i25 != Integer.MIN_VALUE) {
                    this.f7384p0 = i25;
                }
                int i26 = this.B;
                if (i26 != Integer.MIN_VALUE) {
                    this.f7386q0 = i26;
                }
            }
            if (this.f7393u == -1 && this.f7395v == -1 && this.f7391t == -1 && this.f7389s == -1) {
                int i27 = this.f7365g;
                if (i27 != -1) {
                    this.f7380n0 = i27;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                    }
                } else {
                    int i28 = this.f7367h;
                    if (i28 != -1) {
                        this.f7382o0 = i28;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                        }
                    }
                }
                int i29 = this.f7361e;
                if (i29 != -1) {
                    this.f7376l0 = i29;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                    return;
                }
                int i30 = this.f7363f;
                if (i30 != -1) {
                    this.f7378m0 = i30;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                }
            }
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f7353a = -1;
            this.f7355b = -1;
            this.f7357c = -1.0f;
            this.f7359d = true;
            this.f7361e = -1;
            this.f7363f = -1;
            this.f7365g = -1;
            this.f7367h = -1;
            this.f7369i = -1;
            this.f7371j = -1;
            this.f7373k = -1;
            this.f7375l = -1;
            this.f7377m = -1;
            this.f7379n = -1;
            this.f7381o = -1;
            this.f7383p = -1;
            this.f7385q = 0;
            this.f7387r = 0.0f;
            this.f7389s = -1;
            this.f7391t = -1;
            this.f7393u = -1;
            this.f7395v = -1;
            this.f7397w = Integer.MIN_VALUE;
            this.f7399x = Integer.MIN_VALUE;
            this.f7400y = Integer.MIN_VALUE;
            this.f7401z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7354a0 = false;
            this.f7356b0 = false;
            this.f7358c0 = null;
            this.f7360d0 = 0;
            this.f7362e0 = true;
            this.f7364f0 = true;
            this.f7366g0 = false;
            this.f7368h0 = false;
            this.f7370i0 = false;
            this.f7372j0 = false;
            this.f7374k0 = false;
            this.f7376l0 = -1;
            this.f7378m0 = -1;
            this.f7380n0 = -1;
            this.f7382o0 = -1;
            this.f7384p0 = Integer.MIN_VALUE;
            this.f7386q0 = Integer.MIN_VALUE;
            this.f7388r0 = 0.5f;
            this.f7396v0 = new ConstraintWidget();
            this.f7398w0 = false;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7353a = -1;
            this.f7355b = -1;
            this.f7357c = -1.0f;
            this.f7359d = true;
            this.f7361e = -1;
            this.f7363f = -1;
            this.f7365g = -1;
            this.f7367h = -1;
            this.f7369i = -1;
            this.f7371j = -1;
            this.f7373k = -1;
            this.f7375l = -1;
            this.f7377m = -1;
            this.f7379n = -1;
            this.f7381o = -1;
            this.f7383p = -1;
            this.f7385q = 0;
            this.f7387r = 0.0f;
            this.f7389s = -1;
            this.f7391t = -1;
            this.f7393u = -1;
            this.f7395v = -1;
            this.f7397w = Integer.MIN_VALUE;
            this.f7399x = Integer.MIN_VALUE;
            this.f7400y = Integer.MIN_VALUE;
            this.f7401z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f7354a0 = false;
            this.f7356b0 = false;
            this.f7358c0 = null;
            this.f7360d0 = 0;
            this.f7362e0 = true;
            this.f7364f0 = true;
            this.f7366g0 = false;
            this.f7368h0 = false;
            this.f7370i0 = false;
            this.f7372j0 = false;
            this.f7374k0 = false;
            this.f7376l0 = -1;
            this.f7378m0 = -1;
            this.f7380n0 = -1;
            this.f7382o0 = -1;
            this.f7384p0 = Integer.MIN_VALUE;
            this.f7386q0 = Integer.MIN_VALUE;
            this.f7388r0 = 0.5f;
            this.f7396v0 = new ConstraintWidget();
            this.f7398w0 = false;
        }
    }
}
