package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import cb.n;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

public class MaterialButtonToggleGroup extends LinearLayout {

    private static final int f27672k = R$style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    private final List f27673a;

    private final d f27674b;

    private final LinkedHashSet f27675c;

    private final Comparator f27676d;

    private Integer[] f27677e;

    private boolean f27678f;

    private boolean f27679g;

    private boolean f27680h;

    private final int f27681i;

    private Set f27682j;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.g(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private static class b {

        private static final cb.d f27684e = new cb.a(0.0f);

        cb.d f27685a;

        cb.d f27686b;

        cb.d f27687c;

        cb.d f27688d;

        b(cb.d dVar, cb.d dVar2, cb.d dVar3, cb.d dVar4) {
            this.f27685a = dVar;
            this.f27686b = dVar3;
            this.f27687c = dVar4;
            this.f27688d = dVar2;
        }

        public static b a(b bVar) {
            cb.d dVar = f27684e;
            return new b(dVar, bVar.f27688d, dVar, bVar.f27687c);
        }

        public static b b(b bVar, View view) {
            return f0.p(view) ? c(bVar) : d(bVar);
        }

        public static b c(b bVar) {
            cb.d dVar = bVar.f27685a;
            cb.d dVar2 = bVar.f27688d;
            cb.d dVar3 = f27684e;
            return new b(dVar, dVar2, dVar3, dVar3);
        }

        public static b d(b bVar) {
            cb.d dVar = f27684e;
            return new b(dVar, dVar, bVar.f27686b, bVar.f27687c);
        }

        public static b e(b bVar, View view) {
            return f0.p(view) ? d(bVar) : c(bVar);
        }

        public static b f(b bVar) {
            cb.d dVar = bVar.f27685a;
            cb.d dVar2 = f27684e;
            return new b(dVar, dVar2, bVar.f27686b, dVar2);
        }
    }

    public interface c {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10);
    }

    private class d implements MaterialButton.b {
        private d() {
        }

        @Override
        public void a(MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private void b() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonF = f(i10);
            int iMin = Math.min(materialButtonF.getStrokeWidth(), f(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsC = c(materialButtonF);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParamsC, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParamsC, -iMin);
                layoutParamsC.topMargin = 0;
            } else {
                layoutParamsC.bottomMargin = 0;
                layoutParamsC.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParamsC, 0);
            }
            materialButtonF.setLayoutParams(layoutParamsC);
        }
        k(firstVisibleChildIndex);
    }

    private LinearLayout.LayoutParams c(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void d(int i10, boolean z10) {
        if (i10 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i10);
            return;
        }
        HashSet hashSet = new HashSet(this.f27682j);
        if (z10 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f27679g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z10 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f27680h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        n(hashSet);
    }

    private void e(int i10, boolean z10) {
        Iterator it = this.f27675c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(this, i10, z10);
        }
    }

    private MaterialButton f(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    public int g(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && i(i11)) {
                i10++;
            }
        }
        return -1;
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (i(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (i(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && i(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private b h(int i10, int i11, int i12) {
        b bVar = (b) this.f27673a.get(i10);
        if (i11 == i12) {
            return bVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i10 == i11) {
            return z10 ? b.e(bVar, this) : b.f(bVar);
        }
        if (i10 == i12) {
            return z10 ? b.b(bVar, this) : b.a(bVar);
        }
        return null;
    }

    private boolean i(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    private void k(int i10) {
        if (getChildCount() == 0 || i10 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) f(i10).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void l(int i10, boolean z10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof MaterialButton) {
            this.f27678f = true;
            ((MaterialButton) viewFindViewById).setChecked(z10);
            this.f27678f = false;
        }
    }

    private static void m(n.b bVar, b bVar2) {
        if (bVar2 == null) {
            bVar.o(0.0f);
        } else {
            bVar.I(bVar2.f27685a).x(bVar2.f27688d).N(bVar2.f27686b).C(bVar2.f27687c);
        }
    }

    private void n(Set set) {
        Set set2 = this.f27682j;
        this.f27682j = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = f(i10).getId();
            l(id2, set.contains(Integer.valueOf(id2)));
            if (set2.contains(Integer.valueOf(id2)) != set.contains(Integer.valueOf(id2))) {
                e(id2, set.contains(Integer.valueOf(id2)));
            }
        }
        invalidate();
    }

    private void o() {
        TreeMap treeMap = new TreeMap(this.f27676d);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(f(i10), Integer.valueOf(i10));
        }
        this.f27677e = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    private void q() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            f(i10).setA11yClassName((this.f27679g ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f27674b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public void addOnButtonCheckedListener(@NonNull c cVar) {
        this.f27675c.add(cVar);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        d(materialButton.getId(), materialButton.isChecked());
        n shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f27673a.add(new b(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        materialButton.setEnabled(isEnabled());
        ViewCompat.setAccessibilityDelegate(materialButton, new a());
    }

    public void check(int i10) {
        d(i10, true);
    }

    public void clearChecked() {
        n(new HashSet());
    }

    public void clearOnButtonCheckedListeners() {
        this.f27675c.clear();
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        o();
        super.dispatchDraw(canvas);
    }

    public int getCheckedButtonId() {
        if (!this.f27679g || this.f27682j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f27682j.iterator().next()).intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = f(i10).getId();
            if (this.f27682j.contains(Integer.valueOf(id2))) {
                arrayList.add(Integer.valueOf(id2));
            }
        }
        return arrayList;
    }

    @Override
    protected int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f27677e;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w("MButtonToggleGroup", "Child order wasn't updated");
        return i11;
    }

    public boolean isSelectionRequired() {
        return this.f27680h;
    }

    public boolean isSingleSelection() {
        return this.f27679g;
    }

    void j(MaterialButton materialButton, boolean z10) {
        if (this.f27678f) {
            return;
        }
        d(materialButton.getId(), z10);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f27681i;
        if (i10 != -1) {
            n(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, isSingleSelection() ? 1 : 2));
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        p();
        b();
        super.onMeasure(i10, i11);
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f27673a.remove(iIndexOfChild);
        }
        p();
        b();
    }

    void p() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonF = f(i10);
            if (materialButtonF.getVisibility() != 8) {
                n.b bVarV = materialButtonF.getShapeAppearanceModel().v();
                m(bVarV, h(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonF.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    public void removeOnButtonCheckedListener(@NonNull c cVar) {
        this.f27675c.remove(cVar);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            f(i10).setEnabled(z10);
        }
    }

    public void setSelectionRequired(boolean z10) {
        this.f27680h = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f27679g != z10) {
            this.f27679g = z10;
            clearChecked();
        }
        q();
    }

    public void uncheck(int i10) {
        d(i10, false);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27672k;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27673a = new ArrayList();
        this.f27674b = new d();
        this.f27675c = new LinkedHashSet();
        this.f27676d = new Comparator<MaterialButton>() {
            @Override
            public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
                int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
            }
        };
        this.f27678f = false;
        this.f27682j = new HashSet();
        TypedArray typedArrayI = b0.i(getContext(), attributeSet, R$styleable.MaterialButtonToggleGroup, i10, i11, new int[0]);
        setSingleSelection(typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f27681i = typedArrayI.getResourceId(R$styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f27680h = typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_android_enabled, true));
        typedArrayI.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
