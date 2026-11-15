package com.google.android.material.textfield;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.util.List;

public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    private final ListPopupWindow f29006e;

    private final AccessibilityManager f29007f;

    private final Rect f29008g;

    private final int f29009h;

    private final float f29010i;

    private ColorStateList f29011j;

    private int f29012k;

    private ColorStateList f29013l;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            MaterialAutoCompleteTextView.this.l(i10 < 0 ? materialAutoCompleteTextView.f29006e.u() : materialAutoCompleteTextView.getAdapter().getItem(i10));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i10 < 0) {
                    view = MaterialAutoCompleteTextView.this.f29006e.x();
                    i10 = MaterialAutoCompleteTextView.this.f29006e.w();
                    j10 = MaterialAutoCompleteTextView.this.f29006e.v();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f29006e.o(), view, i10, j10);
            }
            MaterialAutoCompleteTextView.this.f29006e.dismiss();
        }
    }

    private class b extends ArrayAdapter {

        private ColorStateList f29015a;

        private ColorStateList f29016b;

        b(Context context, int i10, String[] strArr) {
            super(context, i10, strArr);
            f();
        }

        private ColorStateList a() {
            if (!c() || !d()) {
                return null;
            }
            int[] iArr = {R.attr.state_hovered, -16842919};
            int[] iArr2 = {R.attr.state_selected, -16842919};
            return new ColorStateList(new int[][]{iArr2, iArr, new int[0]}, new int[]{com.google.android.material.color.b.i(MaterialAutoCompleteTextView.this.f29012k, MaterialAutoCompleteTextView.this.f29013l.getColorForState(iArr2, 0)), com.google.android.material.color.b.i(MaterialAutoCompleteTextView.this.f29012k, MaterialAutoCompleteTextView.this.f29013l.getColorForState(iArr, 0)), MaterialAutoCompleteTextView.this.f29012k});
        }

        private Drawable b() {
            if (!c()) {
                return null;
            }
            ColorDrawable colorDrawable = new ColorDrawable(MaterialAutoCompleteTextView.this.f29012k);
            if (this.f29016b == null) {
                return colorDrawable;
            }
            a1.a.o(colorDrawable, this.f29015a);
            return new RippleDrawable(this.f29016b, colorDrawable, null);
        }

        private boolean c() {
            return MaterialAutoCompleteTextView.this.f29012k != 0;
        }

        private boolean d() {
            return MaterialAutoCompleteTextView.this.f29013l != null;
        }

        private ColorStateList e() {
            if (!d()) {
                return null;
            }
            int[] iArr = {R.attr.state_pressed};
            return new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{MaterialAutoCompleteTextView.this.f29013l.getColorForState(iArr, 0), 0});
        }

        void f() {
            this.f29016b = e();
            this.f29015a = a();
        }

        @Override
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                ViewCompat.setBackground(textView, MaterialAutoCompleteTextView.this.getText().toString().contentEquals(textView.getText()) ? b() : null);
            }
            return view2;
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    private TextInputLayout f() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private boolean g() {
        return i() || h();
    }

    private boolean h() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f29007f;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = this.f29007f.getEnabledAccessibilityServiceList(16)) != null) {
            for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean i() {
        AccessibilityManager accessibilityManager = this.f29007f;
        return accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled();
    }

    private int j() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutF = f();
        int i10 = 0;
        if (adapter == null || textInputLayoutF == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.f29006e.w()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutF);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableG = this.f29006e.g();
        if (drawableG != null) {
            drawableG.getPadding(this.f29008g);
            Rect rect = this.f29008g;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutF.getEndIconView().getMeasuredWidth();
    }

    private void k() {
        TextInputLayout textInputLayoutF = f();
        if (textInputLayoutF != null) {
            textInputLayoutF.l0();
        }
    }

    public void l(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override
    public void dismissDropDown() {
        if (g()) {
            this.f29006e.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    @Nullable
    public ColorStateList getDropDownBackgroundTintList() {
        return this.f29011j;
    }

    @Override
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayoutF = f();
        return (textInputLayoutF == null || !textInputLayoutF.isProvidingHint()) ? super.getHint() : textInputLayoutF.getHint();
    }

    public float getPopupElevation() {
        return this.f29010i;
    }

    public int getSimpleItemSelectedColor() {
        return this.f29012k;
    }

    @Nullable
    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f29013l;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutF = f();
        if (textInputLayoutF != null && textInputLayoutF.isProvidingHint() && super.getHint() == null && com.google.android.material.internal.k.d()) {
            setHint("");
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29006e.dismiss();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), j()), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        if (g()) {
            return;
        }
        super.onWindowFocusChanged(z10);
    }

    @Override
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t10) {
        super.setAdapter(t10);
        this.f29006e.m(getAdapter());
    }

    @Override
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f29006e;
        if (listPopupWindow != null) {
            listPopupWindow.b(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i10) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i10));
    }

    public void setDropDownBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f29011j = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof cb.i) {
            ((cb.i) dropDownBackground).d0(this.f29011j);
        }
    }

    @Override
    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f29006e.L(getOnItemSelectedListener());
    }

    @Override
    public void setRawInputType(int i10) {
        super.setRawInputType(i10);
        k();
    }

    public void setSimpleItemSelectedColor(int i10) {
        this.f29012k = i10;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItemSelectedRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29013l = colorStateList;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItems(int i10) {
        setSimpleItems(getResources().getStringArray(i10));
    }

    @Override
    public void showDropDown() {
        if (g()) {
            this.f29006e.show();
        } else {
            super.showDropDown();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new b(getContext(), this.f29009h, strArr));
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(db.a.c(context, attributeSet, i10, 0), attributeSet, i10);
        this.f29008g = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.MaterialAutoCompleteTextView, i10, R$style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_android_inputType) && typedArrayI.getInt(R$styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f29009h = typedArrayI.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItemLayout, R$layout.mtrl_auto_complete_simple_item);
        this.f29010i = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialAutoCompleteTextView_android_popupElevation, R$dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint)) {
            this.f29011j = ColorStateList.valueOf(typedArrayI.getColor(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint, 0));
        }
        this.f29012k = typedArrayI.getColor(R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor, 0);
        this.f29013l = za.c.a(context2, typedArrayI, R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor);
        this.f29007f = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f29006e = listPopupWindow;
        listPopupWindow.I(true);
        listPopupWindow.C(this);
        listPopupWindow.H(2);
        listPopupWindow.m(getAdapter());
        listPopupWindow.K(new a());
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(typedArrayI.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        typedArrayI.recycle();
    }
}
