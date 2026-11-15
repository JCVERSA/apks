package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.j0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    private static final int C0 = R$style.Widget_Design_TextInputLayout;
    private static final int[][] D0 = {new int[]{R.attr.state_pressed}, new int[0]};
    public static final int END_ICON_CLEAR_TEXT = 2;
    public static final int END_ICON_CUSTOM = -1;
    public static final int END_ICON_DROPDOWN_MENU = 3;
    public static final int END_ICON_NONE = 0;
    public static final int END_ICON_PASSWORD_TOGGLE = 1;
    private ColorStateList A;
    private boolean A0;
    private ColorStateList B;
    private boolean B0;
    private boolean C;
    private CharSequence D;
    private boolean E;
    private cb.i F;
    private cb.i G;
    private StateListDrawable H;
    private boolean I;
    private cb.i J;
    private cb.i K;
    private cb.n L;
    private boolean M;
    private final int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private final Rect V;
    private final Rect W;

    private final FrameLayout f29020a;

    private final RectF f29021a0;

    private final y f29022b;

    private Typeface f29023b0;

    private final r f29024c;

    private Drawable f29025c0;

    EditText f29026d;

    private int f29027d0;

    private CharSequence f29028e;

    private final LinkedHashSet f29029e0;

    private int f29030f;

    private Drawable f29031f0;

    private int f29032g;

    private int f29033g0;

    private int f29034h;

    private Drawable f29035h0;

    private int f29036i;

    private ColorStateList f29037i0;

    private final u f29038j;

    private ColorStateList f29039j0;

    boolean f29040k;

    private int f29041k0;

    private int f29042l;

    private int f29043l0;

    private boolean f29044m;

    private int f29045m0;

    private d f29046n;

    private ColorStateList f29047n0;

    private TextView f29048o;

    private int f29049o0;

    private int f29050p;

    private int f29051p0;

    private int f29052q;

    private int f29053q0;

    private CharSequence f29054r;

    private int f29055r0;

    private boolean f29056s;

    private int f29057s0;

    private TextView f29058t;

    int f29059t0;

    private ColorStateList f29060u;

    private boolean f29061u0;

    private int f29062v;

    final com.google.android.material.internal.b f29063v0;

    private androidx.transition.c f29064w;

    private boolean f29065w0;

    private androidx.transition.c f29066x;

    private boolean f29067x0;

    private ColorStateList f29068y;

    private ValueAnimator f29069y0;

    private ColorStateList f29070z;

    private boolean f29071z0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        CharSequence f29072a;

        boolean f29073b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f29072a) + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.f29072a, parcel, i10);
            parcel.writeInt(this.f29073b ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f29072a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f29073b = parcel.readInt() == 1;
        }
    }

    class a implements TextWatcher {

        int f29074a;

        final EditText f29075b;

        a(EditText editText) {
            this.f29075b = editText;
            this.f29074a = editText.getLineCount();
        }

        @Override
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.o0(!textInputLayout.A0);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f29040k) {
                textInputLayout2.e0(editable);
            }
            if (TextInputLayout.this.f29056s) {
                TextInputLayout.this.s0(editable);
            }
            int lineCount = this.f29075b.getLineCount();
            int i10 = this.f29074a;
            if (lineCount != i10) {
                if (lineCount < i10) {
                    int minimumHeight = ViewCompat.getMinimumHeight(this.f29075b);
                    int i11 = TextInputLayout.this.f29059t0;
                    if (minimumHeight != i11) {
                        this.f29075b.setMinimumHeight(i11);
                    }
                }
                this.f29074a = lineCount;
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f29063v0.z0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class c extends AccessibilityDelegateCompat {

        private final TextInputLayout f29078a;

        public c(TextInputLayout textInputLayout) {
            this.f29078a = textInputLayout;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f29078a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f29078a.getHint();
            CharSequence error = this.f29078a.getError();
            CharSequence placeholderText = this.f29078a.getPlaceholderText();
            int counterMaxLength = this.f29078a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f29078a.getCounterOverflowDescription();
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean zIsEmpty2 = TextUtils.isEmpty(hint);
            boolean zL = this.f29078a.L();
            boolean zIsEmpty3 = TextUtils.isEmpty(error);
            boolean z10 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String string = !zIsEmpty2 ? hint.toString() : "";
            this.f29078a.f29022b.B(accessibilityNodeInfoCompat);
            if (!zIsEmpty) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (!zL && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (!zIsEmpty) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z10) {
                if (zIsEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            View viewT = this.f29078a.f29038j.t();
            if (viewT != null) {
                accessibilityNodeInfoCompat.setLabelFor(viewT);
            }
            this.f29078a.f29024c.o().o(view, accessibilityNodeInfoCompat);
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.f29078a.f29024c.o().p(view, accessibilityEvent);
        }
    }

    public interface d {
        int a(Editable editable);
    }

    public interface e {
        void a(TextInputLayout textInputLayout);
    }

    public interface f {
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean A() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof h);
    }

    private void B() {
        Iterator it = this.f29029e0.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(this);
        }
    }

    private void C(Canvas canvas) {
        cb.i iVar;
        if (this.K == null || (iVar = this.J) == null) {
            return;
        }
        iVar.draw(canvas);
        if (this.f29026d.isFocused()) {
            Rect bounds = this.K.getBounds();
            Rect bounds2 = this.J.getBounds();
            float F = this.f29063v0.F();
            int iCenterX = bounds2.centerX();
            bounds.left = qa.a.c(iCenterX, bounds2.left, F);
            bounds.right = qa.a.c(iCenterX, bounds2.right, F);
            this.K.draw(canvas);
        }
    }

    private void D(Canvas canvas) {
        if (this.C) {
            this.f29063v0.l(canvas);
        }
    }

    private void E(boolean z10) {
        ValueAnimator valueAnimator = this.f29069y0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29069y0.cancel();
        }
        if (z10 && this.f29067x0) {
            k(0.0f);
        } else {
            this.f29063v0.z0(0.0f);
        }
        if (A() && ((h) this.F).v0()) {
            x();
        }
        this.f29061u0 = true;
        K();
        this.f29022b.m(true);
        this.f29024c.L(true);
    }

    private cb.i F(boolean z10) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_shape_corner_size_small_component);
        float f10 = z10 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f29026d;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(R$dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R$dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        cb.n nVarM = cb.n.a().H(f10).M(f10).w(dimensionPixelOffset).B(dimensionPixelOffset).m();
        EditText editText2 = this.f29026d;
        cb.i iVarO = cb.i.o(getContext(), popupElevation, editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null);
        iVarO.setShapeAppearanceModel(nVarM);
        iVarO.f0(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return iVarO;
    }

    private static Drawable G(cb.i iVar, int i10, int i11, int[][] iArr) {
        return new RippleDrawable(new ColorStateList(iArr, new int[]{com.google.android.material.color.b.j(i11, i10, 0.1f), i10}), iVar, iVar);
    }

    private int H(int i10, boolean z10) {
        int compoundPaddingLeft;
        if (z10 || getPrefixText() == null) {
            compoundPaddingLeft = (!z10 || getSuffixText() == null) ? this.f29026d.getCompoundPaddingLeft() : this.f29024c.A();
        } else {
            compoundPaddingLeft = this.f29022b.c();
        }
        return i10 + compoundPaddingLeft;
    }

    private int I(int i10, boolean z10) {
        int compoundPaddingRight;
        if (z10 || getSuffixText() == null) {
            compoundPaddingRight = (!z10 || getPrefixText() == null) ? this.f29026d.getCompoundPaddingRight() : this.f29022b.c();
        } else {
            compoundPaddingRight = this.f29024c.A();
        }
        return i10 - compoundPaddingRight;
    }

    private static Drawable J(Context context, cb.i iVar, int i10, int[][] iArr) {
        int iC = com.google.android.material.color.b.c(context, R$attr.colorSurface, "TextInputLayout");
        cb.i iVar2 = new cb.i(iVar.G());
        int iJ = com.google.android.material.color.b.j(i10, iC, 0.1f);
        iVar2.d0(new ColorStateList(iArr, new int[]{iJ, 0}));
        iVar2.setTint(iC);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iJ, iC});
        cb.i iVar3 = new cb.i(iVar.G());
        iVar3.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, iVar2, iVar3), iVar});
    }

    private void K() {
        TextView textView = this.f29058t;
        if (textView == null || !this.f29056s) {
            return;
        }
        textView.setText((CharSequence) null);
        androidx.transition.s.a(this.f29020a, this.f29066x);
        this.f29058t.setVisibility(4);
    }

    private boolean M() {
        return X() || (this.f29048o != null && this.f29044m);
    }

    private boolean N() {
        return this.O == 1 && this.f29026d.getMinLines() <= 1;
    }

    public static int O(Editable editable) {
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    public void P() {
        this.f29026d.requestLayout();
    }

    private void Q() {
        o();
        l0();
        u0();
        b0();
        j();
        if (this.O != 0) {
            n0();
        }
        V();
    }

    private void R() {
        if (A()) {
            RectF rectF = this.f29021a0;
            this.f29063v0.o(rectF, this.f29026d.getWidth(), this.f29026d.getGravity());
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            n(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.Q);
            ((h) this.F).y0(rectF);
        }
    }

    private void S() {
        if (!A() || this.f29061u0) {
            return;
        }
        x();
        R();
    }

    private static void T(ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                T((ViewGroup) childAt, z10);
            }
        }
    }

    private void U() {
        TextView textView = this.f29058t;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void V() {
        EditText editText = this.f29026d;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i10 = this.O;
                if (i10 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i10 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    private boolean Y() {
        return (this.f29024c.J() || ((this.f29024c.C() && isEndIconVisible()) || this.f29024c.y() != null)) && this.f29024c.getMeasuredWidth() > 0;
    }

    private boolean Z() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f29022b.getMeasuredWidth() > 0;
    }

    private void a0() {
        if (this.f29058t == null || !this.f29056s || TextUtils.isEmpty(this.f29054r)) {
            return;
        }
        this.f29058t.setText(this.f29054r);
        androidx.transition.s.a(this.f29020a, this.f29064w);
        this.f29058t.setVisibility(0);
        this.f29058t.bringToFront();
        announceForAccessibility(this.f29054r);
    }

    private void b0() {
        if (this.O == 1) {
            if (za.c.k(getContext())) {
                this.P = getResources().getDimensionPixelSize(R$dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (za.c.j(getContext())) {
                this.P = getResources().getDimensionPixelSize(R$dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void c0(Rect rect) {
        cb.i iVar = this.J;
        if (iVar != null) {
            int i10 = rect.bottom;
            iVar.setBounds(rect.left, i10 - this.R, rect.right, i10);
        }
        cb.i iVar2 = this.K;
        if (iVar2 != null) {
            int i11 = rect.bottom;
            iVar2.setBounds(rect.left, i11 - this.S, rect.right, i11);
        }
    }

    private void d0() {
        if (this.f29048o != null) {
            EditText editText = this.f29026d;
            e0(editText == null ? null : editText.getText());
        }
    }

    private static void f0(Context context, TextView textView, int i10, int i11, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? R$string.character_counter_overflowed_content_description : R$string.character_counter_content_description, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private void g0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f29048o;
        if (textView != null) {
            W(textView, this.f29044m ? this.f29050p : this.f29052q);
            if (!this.f29044m && (colorStateList2 = this.f29068y) != null) {
                this.f29048o.setTextColor(colorStateList2);
            }
            if (!this.f29044m || (colorStateList = this.f29070z) == null) {
                return;
            }
            this.f29048o.setTextColor(colorStateList);
        }
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f29026d;
        if (!(editText instanceof AutoCompleteTextView) || q.a(editText)) {
            return this.F;
        }
        int iD = com.google.android.material.color.b.d(this.f29026d, R$attr.colorControlHighlight);
        int i10 = this.O;
        if (i10 == 2) {
            return J(getContext(), this.F, iD, D0);
        }
        if (i10 == 1) {
            return G(this.F, this.U, iD, D0);
        }
        return null;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.H == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.H = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.H.addState(new int[0], F(false));
        }
        return this.H;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.G == null) {
            this.G = F(true);
        }
        return this.G;
    }

    private void h0() {
        ColorStateList colorStateList;
        ColorStateList colorStateListG = this.A;
        if (colorStateListG == null) {
            colorStateListG = com.google.android.material.color.b.g(getContext(), R$attr.colorControlActivated);
        }
        EditText editText = this.f29026d;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = a1.a.r(this.f29026d.getTextCursorDrawable()).mutate();
        if (M() && (colorStateList = this.B) != null) {
            colorStateListG = colorStateList;
        }
        a1.a.o(drawableMutate, colorStateListG);
    }

    private void i() {
        TextView textView = this.f29058t;
        if (textView != null) {
            this.f29020a.addView(textView);
            this.f29058t.setVisibility(0);
        }
    }

    private void j() {
        if (this.f29026d == null || this.O != 1) {
            return;
        }
        if (za.c.k(getContext())) {
            EditText editText = this.f29026d;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f29026d), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (za.c.j(getContext())) {
            EditText editText2 = this.f29026d;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f29026d), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private void k0() {
        ViewCompat.setBackground(this.f29026d, getEditTextBoxBackground());
    }

    private void l() {
        cb.i iVar = this.F;
        if (iVar == null) {
            return;
        }
        cb.n nVarG = iVar.G();
        cb.n nVar = this.L;
        if (nVarG != nVar) {
            this.F.setShapeAppearanceModel(nVar);
        }
        if (v()) {
            this.F.l0(this.Q, this.T);
        }
        int iP = p();
        this.U = iP;
        this.F.d0(ColorStateList.valueOf(iP));
        m();
        l0();
    }

    private void m() {
        if (this.J == null || this.K == null) {
            return;
        }
        if (w()) {
            this.J.d0(this.f29026d.isFocused() ? ColorStateList.valueOf(this.f29041k0) : ColorStateList.valueOf(this.T));
            this.K.d0(ColorStateList.valueOf(this.T));
        }
        invalidate();
    }

    private boolean m0() {
        int iMax;
        if (this.f29026d == null || this.f29026d.getMeasuredHeight() >= (iMax = Math.max(this.f29024c.getMeasuredHeight(), this.f29022b.getMeasuredHeight()))) {
            return false;
        }
        this.f29026d.setMinimumHeight(iMax);
        return true;
    }

    private void n(RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.N;
        rectF.left = f10 - i10;
        rectF.right += i10;
    }

    private void n0() {
        if (this.O != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f29020a.getLayoutParams();
            int iU = u();
            if (iU != layoutParams.topMargin) {
                layoutParams.topMargin = iU;
                this.f29020a.requestLayout();
            }
        }
    }

    private void o() {
        int i10 = this.O;
        if (i10 == 0) {
            this.F = null;
            this.J = null;
            this.K = null;
            return;
        }
        if (i10 == 1) {
            this.F = new cb.i(this.L);
            this.J = new cb.i();
            this.K = new cb.i();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.O + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.C || (this.F instanceof h)) {
                this.F = new cb.i(this.L);
            } else {
                this.F = h.t0(this.L);
            }
            this.J = null;
            this.K = null;
        }
    }

    private int p() {
        return this.O == 1 ? com.google.android.material.color.b.i(com.google.android.material.color.b.e(this, R$attr.colorSurface, 0), this.U) : this.U;
    }

    private void p0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f29026d;
        boolean z12 = false;
        boolean z13 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f29026d;
        if (editText2 != null && editText2.hasFocus()) {
            z12 = true;
        }
        ColorStateList colorStateList2 = this.f29037i0;
        if (colorStateList2 != null) {
            this.f29063v0.e0(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f29037i0;
            this.f29063v0.e0(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f29057s0) : this.f29057s0));
        } else if (X()) {
            this.f29063v0.e0(this.f29038j.r());
        } else if (this.f29044m && (textView = this.f29048o) != null) {
            this.f29063v0.e0(textView.getTextColors());
        } else if (z12 && (colorStateList = this.f29039j0) != null) {
            this.f29063v0.j0(colorStateList);
        }
        if (z13 || !this.f29065w0 || (isEnabled() && z12)) {
            if (z11 || this.f29061u0) {
                y(z10);
                return;
            }
            return;
        }
        if (z11 || !this.f29061u0) {
            E(z10);
        }
    }

    private Rect q(Rect rect) {
        if (this.f29026d == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.W;
        boolean zP = com.google.android.material.internal.f0.p(this);
        rect2.bottom = rect.bottom;
        int i10 = this.O;
        if (i10 == 1) {
            rect2.left = H(rect.left, zP);
            rect2.top = rect.top + this.P;
            rect2.right = I(rect.right, zP);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = H(rect.left, zP);
            rect2.top = getPaddingTop();
            rect2.right = I(rect.right, zP);
            return rect2;
        }
        rect2.left = rect.left + this.f29026d.getPaddingLeft();
        rect2.top = rect.top - u();
        rect2.right = rect.right - this.f29026d.getPaddingRight();
        return rect2;
    }

    private void q0() {
        EditText editText;
        if (this.f29058t == null || (editText = this.f29026d) == null) {
            return;
        }
        this.f29058t.setGravity(editText.getGravity());
        this.f29058t.setPadding(this.f29026d.getCompoundPaddingLeft(), this.f29026d.getCompoundPaddingTop(), this.f29026d.getCompoundPaddingRight(), this.f29026d.getCompoundPaddingBottom());
    }

    private int r(Rect rect, Rect rect2, float f10) {
        return N() ? (int) (rect2.top + f10) : rect.bottom - this.f29026d.getCompoundPaddingBottom();
    }

    private void r0() {
        EditText editText = this.f29026d;
        s0(editText == null ? null : editText.getText());
    }

    private int s(Rect rect, float f10) {
        return N() ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f29026d.getCompoundPaddingTop();
    }

    public void s0(Editable editable) {
        if (this.f29046n.a(editable) != 0 || this.f29061u0) {
            K();
        } else {
            a0();
        }
    }

    private void setEditText(EditText editText) {
        if (this.f29026d != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3) {
            boolean z10 = editText instanceof TextInputEditText;
        }
        this.f29026d = editText;
        int i10 = this.f29030f;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f29034h);
        }
        int i11 = this.f29032g;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f29036i);
        }
        this.I = false;
        Q();
        setTextInputAccessibilityDelegate(new c(this));
        this.f29063v0.O0(this.f29026d.getTypeface());
        this.f29063v0.w0(this.f29026d.getTextSize());
        int i12 = Build.VERSION.SDK_INT;
        this.f29063v0.r0(this.f29026d.getLetterSpacing());
        int gravity = this.f29026d.getGravity();
        this.f29063v0.k0((gravity & (-113)) | 48);
        this.f29063v0.v0(gravity);
        this.f29059t0 = ViewCompat.getMinimumHeight(editText);
        this.f29026d.addTextChangedListener(new a(editText));
        if (this.f29037i0 == null) {
            this.f29037i0 = this.f29026d.getHintTextColors();
        }
        if (this.C) {
            if (TextUtils.isEmpty(this.D)) {
                CharSequence hint = this.f29026d.getHint();
                this.f29028e = hint;
                setHint(hint);
                this.f29026d.setHint((CharSequence) null);
            }
            this.E = true;
        }
        if (i12 >= 29) {
            h0();
        }
        if (this.f29048o != null) {
            e0(this.f29026d.getText());
        }
        j0();
        this.f29038j.f();
        this.f29022b.bringToFront();
        this.f29024c.bringToFront();
        B();
        this.f29024c.D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        p0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        this.f29063v0.L0(charSequence);
        if (this.f29061u0) {
            return;
        }
        R();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f29056s == z10) {
            return;
        }
        if (z10) {
            i();
        } else {
            U();
            this.f29058t = null;
        }
        this.f29056s = z10;
    }

    private Rect t(Rect rect) {
        if (this.f29026d == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.W;
        float fC = this.f29063v0.C();
        rect2.left = rect.left + this.f29026d.getCompoundPaddingLeft();
        rect2.top = s(rect, fC);
        rect2.right = rect.right - this.f29026d.getCompoundPaddingRight();
        rect2.bottom = r(rect, rect2, fC);
        return rect2;
    }

    private void t0(boolean z10, boolean z11) {
        int defaultColor = this.f29047n0.getDefaultColor();
        int colorForState = this.f29047n0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f29047n0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.T = colorForState2;
        } else if (z11) {
            this.T = colorForState;
        } else {
            this.T = defaultColor;
        }
    }

    private int u() {
        float fR;
        if (!this.C) {
            return 0;
        }
        int i10 = this.O;
        if (i10 == 0) {
            fR = this.f29063v0.r();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fR = this.f29063v0.r() / 2.0f;
        }
        return (int) fR;
    }

    private boolean v() {
        return this.O == 2 && w();
    }

    private boolean w() {
        return this.Q > -1 && this.T != 0;
    }

    private void x() {
        if (A()) {
            ((h) this.F).w0();
        }
    }

    private void y(boolean z10) {
        ValueAnimator valueAnimator = this.f29069y0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29069y0.cancel();
        }
        if (z10 && this.f29067x0) {
            k(1.0f);
        } else {
            this.f29063v0.z0(1.0f);
        }
        this.f29061u0 = false;
        if (A()) {
            R();
        }
        r0();
        this.f29022b.m(false);
        this.f29024c.L(false);
    }

    private androidx.transition.c z() {
        androidx.transition.c cVar = new androidx.transition.c();
        cVar.X(ya.j.f(getContext(), R$attr.motionDurationShort2, 87));
        cVar.Z(ya.j.g(getContext(), R$attr.motionEasingLinearInterpolator, qa.a.f69577a));
        return cVar;
    }

    final boolean L() {
        return this.f29061u0;
    }

    void W(TextView textView, int i10) {
        try {
            androidx.core.widget.l.p(textView, i10);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        androidx.core.widget.l.p(textView, R$style.TextAppearance_AppCompat_Caption);
        textView.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.design_error));
    }

    boolean X() {
        return this.f29038j.l();
    }

    public void addOnEditTextAttachedListener(@NonNull e eVar) {
        this.f29029e0.add(eVar);
        if (this.f29026d != null) {
            eVar.a(this);
        }
    }

    public void addOnEndIconChangedListener(@NonNull f fVar) {
        this.f29024c.g(fVar);
    }

    @Override
    public void addView(@NonNull View view, int i10, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f29020a.addView(view, layoutParams2);
        this.f29020a.setLayoutParams(layoutParams);
        n0();
        setEditText((EditText) view);
    }

    public void clearOnEditTextAttachedListeners() {
        this.f29029e0.clear();
    }

    public void clearOnEndIconChangedListeners() {
        this.f29024c.j();
    }

    @Override
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i10) {
        EditText editText = this.f29026d;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f29028e != null) {
            boolean z10 = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.f29026d.setHint(this.f29028e);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f29026d.setHint(hint);
                this.E = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f29020a.getChildCount());
        for (int i11 = 0; i11 < this.f29020a.getChildCount(); i11++) {
            View childAt = this.f29020a.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f29026d) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.A0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.A0 = false;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        D(canvas);
        C(canvas);
    }

    @Override
    protected void drawableStateChanged() {
        if (this.f29071z0) {
            return;
        }
        this.f29071z0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.f29063v0;
        boolean zJ0 = bVar != null ? bVar.J0(drawableState) : false;
        if (this.f29026d != null) {
            o0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        j0();
        u0();
        if (zJ0) {
            invalidate();
        }
        this.f29071z0 = false;
    }

    void e0(Editable editable) {
        int iA = this.f29046n.a(editable);
        boolean z10 = this.f29044m;
        int i10 = this.f29042l;
        if (i10 == -1) {
            this.f29048o.setText(String.valueOf(iA));
            this.f29048o.setContentDescription(null);
            this.f29044m = false;
        } else {
            this.f29044m = iA > i10;
            f0(getContext(), this.f29048o, iA, this.f29042l, this.f29044m);
            if (z10 != this.f29044m) {
                g0();
            }
            this.f29048o.setText(androidx.core.text.a.c().l(getContext().getString(R$string.character_counter_pattern, Integer.valueOf(iA), Integer.valueOf(this.f29042l))));
        }
        if (this.f29026d == null || z10 == this.f29044m) {
            return;
        }
        o0(false);
        u0();
        j0();
    }

    @Override
    public int getBaseline() {
        EditText editText = this.f29026d;
        return editText != null ? editText.getBaseline() + getPaddingTop() + u() : super.getBaseline();
    }

    @NonNull
    cb.i getBoxBackground() {
        int i10 = this.O;
        if (i10 == 1 || i10 == 2) {
            return this.F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.U;
    }

    public int getBoxBackgroundMode() {
        return this.O;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.P;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return com.google.android.material.internal.f0.p(this) ? this.L.j().a(this.f29021a0) : this.L.l().a(this.f29021a0);
    }

    public float getBoxCornerRadiusBottomStart() {
        return com.google.android.material.internal.f0.p(this) ? this.L.l().a(this.f29021a0) : this.L.j().a(this.f29021a0);
    }

    public float getBoxCornerRadiusTopEnd() {
        return com.google.android.material.internal.f0.p(this) ? this.L.r().a(this.f29021a0) : this.L.t().a(this.f29021a0);
    }

    public float getBoxCornerRadiusTopStart() {
        return com.google.android.material.internal.f0.p(this) ? this.L.t().a(this.f29021a0) : this.L.r().a(this.f29021a0);
    }

    public int getBoxStrokeColor() {
        return this.f29045m0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f29047n0;
    }

    public int getBoxStrokeWidth() {
        return this.R;
    }

    public int getBoxStrokeWidthFocused() {
        return this.S;
    }

    public int getCounterMaxLength() {
        return this.f29042l;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f29040k && this.f29044m && (textView = this.f29048o) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f29070z;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f29068y;
    }

    @Nullable
    public ColorStateList getCursorColor() {
        return this.A;
    }

    @Nullable
    public ColorStateList getCursorErrorColor() {
        return this.B;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f29037i0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f29026d;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f29024c.n();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f29024c.p();
    }

    public int getEndIconMinSize() {
        return this.f29024c.q();
    }

    public int getEndIconMode() {
        return this.f29024c.r();
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.f29024c.s();
    }

    @NonNull
    CheckableImageButton getEndIconView() {
        return this.f29024c.t();
    }

    @Nullable
    public CharSequence getError() {
        if (this.f29038j.A()) {
            return this.f29038j.p();
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f29038j.n();
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f29038j.o();
    }

    public int getErrorCurrentTextColors() {
        return this.f29038j.q();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f29024c.u();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f29038j.B()) {
            return this.f29038j.s();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f29038j.u();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f29063v0.r();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f29063v0.w();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f29039j0;
    }

    @NonNull
    public d getLengthCounter() {
        return this.f29046n;
    }

    public int getMaxEms() {
        return this.f29032g;
    }

    public int getMaxWidth() {
        return this.f29036i;
    }

    public int getMinEms() {
        return this.f29030f;
    }

    public int getMinWidth() {
        return this.f29034h;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f29024c.w();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f29024c.x();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f29056s) {
            return this.f29054r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f29062v;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f29060u;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f29022b.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f29022b.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f29022b.d();
    }

    @NonNull
    public cb.n getShapeAppearanceModel() {
        return this.L;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f29022b.e();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f29022b.f();
    }

    public int getStartIconMinSize() {
        return this.f29022b.g();
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f29022b.h();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f29024c.y();
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f29024c.z();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f29024c.B();
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f29023b0;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    boolean i0() {
        boolean z10;
        if (this.f29026d == null) {
            return false;
        }
        boolean z11 = true;
        if (Z()) {
            int measuredWidth = this.f29022b.getMeasuredWidth() - this.f29026d.getPaddingLeft();
            if (this.f29025c0 == null || this.f29027d0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f29025c0 = colorDrawable;
                this.f29027d0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = androidx.core.widget.l.a(this.f29026d);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.f29025c0;
            if (drawable != drawable2) {
                androidx.core.widget.l.j(this.f29026d, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z10 = true;
            } else {
                z10 = false;
            }
        } else if (this.f29025c0 != null) {
            Drawable[] drawableArrA2 = androidx.core.widget.l.a(this.f29026d);
            androidx.core.widget.l.j(this.f29026d, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
            this.f29025c0 = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (Y()) {
            int measuredWidth2 = this.f29024c.B().getMeasuredWidth() - this.f29026d.getPaddingRight();
            CheckableImageButton checkableImageButtonM = this.f29024c.m();
            if (checkableImageButtonM != null) {
                measuredWidth2 = measuredWidth2 + checkableImageButtonM.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButtonM.getLayoutParams());
            }
            Drawable[] drawableArrA3 = androidx.core.widget.l.a(this.f29026d);
            Drawable drawable3 = this.f29031f0;
            if (drawable3 == null || this.f29033g0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f29031f0 = colorDrawable2;
                    this.f29033g0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.f29031f0;
                if (drawable4 != drawable5) {
                    this.f29035h0 = drawable4;
                    androidx.core.widget.l.j(this.f29026d, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f29033g0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                androidx.core.widget.l.j(this.f29026d, drawableArrA3[0], drawableArrA3[1], this.f29031f0, drawableArrA3[3]);
            }
        } else {
            if (this.f29031f0 == null) {
                return z10;
            }
            Drawable[] drawableArrA4 = androidx.core.widget.l.a(this.f29026d);
            if (drawableArrA4[2] == this.f29031f0) {
                androidx.core.widget.l.j(this.f29026d, drawableArrA4[0], drawableArrA4[1], this.f29035h0, drawableArrA4[3]);
            } else {
                z11 = z10;
            }
            this.f29031f0 = null;
        }
        return z11;
    }

    public boolean isCounterEnabled() {
        return this.f29040k;
    }

    public boolean isEndIconCheckable() {
        return this.f29024c.G();
    }

    public boolean isEndIconVisible() {
        return this.f29024c.I();
    }

    public boolean isErrorEnabled() {
        return this.f29038j.A();
    }

    public boolean isExpandedHintEnabled() {
        return this.f29065w0;
    }

    public boolean isHelperTextEnabled() {
        return this.f29038j.B();
    }

    public boolean isHintAnimationEnabled() {
        return this.f29067x0;
    }

    public boolean isHintEnabled() {
        return this.C;
    }

    @Deprecated
    public boolean isPasswordVisibilityToggleEnabled() {
        return this.f29024c.K();
    }

    public boolean isProvidingHint() {
        return this.E;
    }

    public boolean isStartIconCheckable() {
        return this.f29022b.k();
    }

    public boolean isStartIconVisible() {
        return this.f29022b.l();
    }

    void j0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f29026d;
        if (editText == null || this.O != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (androidx.appcompat.widget.y.a(background)) {
            background = background.mutate();
        }
        if (X()) {
            background.setColorFilter(androidx.appcompat.widget.f.e(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f29044m && (textView = this.f29048o) != null) {
            background.setColorFilter(androidx.appcompat.widget.f.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            a1.a.c(background);
            this.f29026d.refreshDrawableState();
        }
    }

    void k(float f10) {
        if (this.f29063v0.F() == f10) {
            return;
        }
        if (this.f29069y0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f29069y0 = valueAnimator;
            valueAnimator.setInterpolator(ya.j.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, qa.a.f69578b));
            this.f29069y0.setDuration(ya.j.f(getContext(), R$attr.motionDurationMedium4, 167));
            this.f29069y0.addUpdateListener(new b());
        }
        this.f29069y0.setFloatValues(this.f29063v0.F(), f10);
        this.f29069y0.start();
    }

    void l0() {
        EditText editText = this.f29026d;
        if (editText == null || this.F == null) {
            return;
        }
        if ((this.I || editText.getBackground() == null) && this.O != 0) {
            k0();
            this.I = true;
        }
    }

    void o0(boolean z10) {
        p0(z10, false);
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f29063v0.Z(configuration);
    }

    @Override
    public void onGlobalLayout() {
        this.f29024c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.B0 = false;
        boolean zM0 = m0();
        boolean zI0 = i0();
        if (zM0 || zI0) {
            this.f29026d.post(new Runnable() {
                @Override
                public final void run() {
                    this.f29095a.P();
                }
            });
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f29026d;
        if (editText != null) {
            Rect rect = this.V;
            com.google.android.material.internal.d.a(this, editText, rect);
            c0(rect);
            if (this.C) {
                this.f29063v0.w0(this.f29026d.getTextSize());
                int gravity = this.f29026d.getGravity();
                this.f29063v0.k0((gravity & (-113)) | 48);
                this.f29063v0.v0(gravity);
                this.f29063v0.g0(q(rect));
                this.f29063v0.q0(t(rect));
                this.f29063v0.b0();
                if (!A() || this.f29061u0) {
                    return;
                }
                R();
            }
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.B0) {
            this.f29024c.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.B0 = true;
        }
        q0();
        this.f29024c.D0();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f29072a);
        if (savedState.f29073b) {
            post(new Runnable() {
                @Override
                public void run() {
                    TextInputLayout.this.f29024c.i();
                }
            });
        }
        requestLayout();
    }

    @Override
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z10 = i10 == 1;
        if (z10 != this.M) {
            float fA = this.L.r().a(this.f29021a0);
            float fA2 = this.L.t().a(this.f29021a0);
            cb.n nVarM = cb.n.a().G(this.L.s()).L(this.L.q()).v(this.L.k()).A(this.L.i()).H(fA2).M(fA).w(this.L.l().a(this.f29021a0)).B(this.L.j().a(this.f29021a0)).m();
            this.M = z10;
            setShapeAppearanceModel(nVarM);
        }
    }

    @Override
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (X()) {
            savedState.f29072a = getError();
        }
        savedState.f29073b = this.f29024c.H();
        return savedState;
    }

    @Deprecated
    public void passwordVisibilityToggleRequested(boolean z10) {
        this.f29024c.A0(z10);
    }

    public void refreshEndIconDrawableState() {
        this.f29024c.N();
    }

    public void refreshErrorIconDrawableState() {
        this.f29024c.O();
    }

    public void refreshStartIconDrawableState() {
        this.f29022b.n();
    }

    public void removeOnEditTextAttachedListener(@NonNull e eVar) {
        this.f29029e0.remove(eVar);
    }

    public void removeOnEndIconChangedListener(@NonNull f fVar) {
        this.f29024c.Q(fVar);
    }

    public void setBoxBackgroundColor(int i10) {
        if (this.U != i10) {
            this.U = i10;
            this.f29049o0 = i10;
            this.f29053q0 = i10;
            this.f29055r0 = i10;
            l();
        }
    }

    public void setBoxBackgroundColorResource(int i10) {
        setBoxBackgroundColor(androidx.core.content.b.getColor(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f29049o0 = defaultColor;
        this.U = defaultColor;
        this.f29051p0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f29053q0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f29055r0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        l();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.O) {
            return;
        }
        this.O = i10;
        if (this.f29026d != null) {
            Q();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.P = i10;
    }

    public void setBoxCornerFamily(int i10) {
        this.L = this.L.v().F(i10, this.L.r()).K(i10, this.L.t()).u(i10, this.L.j()).z(i10, this.L.l()).m();
        l();
    }

    public void setBoxCornerRadii(float f10, float f11, float f12, float f13) {
        boolean zP = com.google.android.material.internal.f0.p(this);
        this.M = zP;
        float f14 = zP ? f11 : f10;
        if (!zP) {
            f10 = f11;
        }
        float f15 = zP ? f13 : f12;
        if (!zP) {
            f12 = f13;
        }
        cb.i iVar = this.F;
        if (iVar != null && iVar.L() == f14 && this.F.M() == f10 && this.F.u() == f15 && this.F.v() == f12) {
            return;
        }
        this.L = this.L.v().H(f14).M(f10).w(f15).B(f12).m();
        l();
    }

    public void setBoxCornerRadiiResources(int i10, int i11, int i12, int i13) {
        setBoxCornerRadii(getContext().getResources().getDimension(i10), getContext().getResources().getDimension(i11), getContext().getResources().getDimension(i13), getContext().getResources().getDimension(i12));
    }

    public void setBoxStrokeColor(int i10) {
        if (this.f29045m0 != i10) {
            this.f29045m0 = i10;
            u0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f29041k0 = colorStateList.getDefaultColor();
            this.f29057s0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f29043l0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f29045m0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f29045m0 != colorStateList.getDefaultColor()) {
            this.f29045m0 = colorStateList.getDefaultColor();
        }
        u0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f29047n0 != colorStateList) {
            this.f29047n0 = colorStateList;
            u0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.R = i10;
        u0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.S = i10;
        u0();
    }

    public void setBoxStrokeWidthFocusedResource(int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f29040k != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f29048o = appCompatTextView;
                appCompatTextView.setId(R$id.textinput_counter);
                Typeface typeface = this.f29023b0;
                if (typeface != null) {
                    this.f29048o.setTypeface(typeface);
                }
                this.f29048o.setMaxLines(1);
                this.f29038j.e(this.f29048o, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f29048o.getLayoutParams(), getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_counter_margin_start));
                g0();
                d0();
            } else {
                this.f29038j.C(this.f29048o, 2);
                this.f29048o = null;
            }
            this.f29040k = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f29042l != i10) {
            if (i10 > 0) {
                this.f29042l = i10;
            } else {
                this.f29042l = -1;
            }
            if (this.f29040k) {
                d0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f29050p != i10) {
            this.f29050p = i10;
            g0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29070z != colorStateList) {
            this.f29070z = colorStateList;
            g0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f29052q != i10) {
            this.f29052q = i10;
            g0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29068y != colorStateList) {
            this.f29068y = colorStateList;
            g0();
        }
    }

    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            h0();
        }
    }

    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (M()) {
                h0();
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f29037i0 = colorStateList;
        this.f29039j0 = colorStateList;
        if (this.f29026d != null) {
            o0(false);
        }
    }

    @Override
    public void setEnabled(boolean z10) {
        T(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f29024c.S(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f29024c.T(z10);
    }

    public void setEndIconContentDescription(int i10) {
        this.f29024c.U(i10);
    }

    public void setEndIconDrawable(int i10) {
        this.f29024c.W(i10);
    }

    public void setEndIconMinSize(int i10) {
        this.f29024c.Y(i10);
    }

    public void setEndIconMode(int i10) {
        this.f29024c.Z(i10);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29024c.a0(onClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29024c.b0(onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f29024c.c0(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29024c.d0(colorStateList);
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29024c.e0(mode);
    }

    public void setEndIconVisible(boolean z10) {
        this.f29024c.f0(z10);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f29038j.A()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f29038j.w();
        } else {
            this.f29038j.Q(charSequence);
        }
    }

    public void setErrorAccessibilityLiveRegion(int i10) {
        this.f29038j.E(i10);
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f29038j.F(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f29038j.G(z10);
    }

    public void setErrorIconDrawable(int i10) {
        this.f29024c.g0(i10);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29024c.i0(onClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29024c.j0(onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29024c.k0(colorStateList);
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29024c.l0(mode);
    }

    public void setErrorTextAppearance(int i10) {
        this.f29038j.H(i10);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f29038j.I(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.f29065w0 != z10) {
            this.f29065w0 = z10;
            o0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!isHelperTextEnabled()) {
                setHelperTextEnabled(true);
            }
            this.f29038j.R(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f29038j.L(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f29038j.K(z10);
    }

    public void setHelperTextTextAppearance(int i10) {
        this.f29038j.J(i10);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.f29067x0 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.C) {
            this.C = z10;
            if (z10) {
                CharSequence hint = this.f29026d.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.f29026d.setHint((CharSequence) null);
                }
                this.E = true;
            } else {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.f29026d.getHint())) {
                    this.f29026d.setHint(this.D);
                }
                setHintInternal(null);
            }
            if (this.f29026d != null) {
                n0();
            }
        }
    }

    public void setHintTextAppearance(int i10) {
        this.f29063v0.h0(i10);
        this.f29039j0 = this.f29063v0.p();
        if (this.f29026d != null) {
            o0(false);
            n0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29039j0 != colorStateList) {
            if (this.f29037i0 == null) {
                this.f29063v0.j0(colorStateList);
            }
            this.f29039j0 = colorStateList;
            if (this.f29026d != null) {
                o0(false);
            }
        }
    }

    public void setLengthCounter(@NonNull d dVar) {
        this.f29046n = dVar;
    }

    public void setMaxEms(int i10) {
        this.f29032g = i10;
        EditText editText = this.f29026d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(int i10) {
        this.f29036i = i10;
        EditText editText = this.f29026d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f29030f = i10;
        EditText editText = this.f29026d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(int i10) {
        this.f29034h = i10;
        EditText editText = this.f29026d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i10) {
        this.f29024c.n0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i10) {
        this.f29024c.p0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        this.f29024c.r0(z10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f29024c.s0(colorStateList);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29024c.t0(mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f29058t == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f29058t = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f29058t, 2);
            androidx.transition.c cVarZ = z();
            this.f29064w = cVarZ;
            cVarZ.c0(67L);
            this.f29066x = z();
            setPlaceholderTextAppearance(this.f29062v);
            setPlaceholderTextColor(this.f29060u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f29056s) {
                setPlaceholderTextEnabled(true);
            }
            this.f29054r = charSequence;
        }
        r0();
    }

    public void setPlaceholderTextAppearance(int i10) {
        this.f29062v = i10;
        TextView textView = this.f29058t;
        if (textView != null) {
            androidx.core.widget.l.p(textView, i10);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29060u != colorStateList) {
            this.f29060u = colorStateList;
            TextView textView = this.f29058t;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f29022b.o(charSequence);
    }

    public void setPrefixTextAppearance(int i10) {
        this.f29022b.p(i10);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f29022b.q(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull cb.n nVar) {
        cb.i iVar = this.F;
        if (iVar == null || iVar.G() == nVar) {
            return;
        }
        this.L = nVar;
        l();
    }

    public void setStartIconCheckable(boolean z10) {
        this.f29022b.r(z10);
    }

    public void setStartIconContentDescription(int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(int i10) {
        setStartIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setStartIconMinSize(int i10) {
        this.f29022b.u(i10);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29022b.v(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29022b.w(onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f29022b.x(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29022b.y(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29022b.z(mode);
    }

    public void setStartIconVisible(boolean z10) {
        this.f29022b.A(z10);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f29024c.u0(charSequence);
    }

    public void setSuffixTextAppearance(int i10) {
        this.f29024c.v0(i10);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f29024c.w0(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable c cVar) {
        EditText editText = this.f29026d;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, cVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f29023b0) {
            this.f29023b0 = typeface;
            this.f29063v0.O0(typeface);
            this.f29038j.N(typeface);
            TextView textView = this.f29048o;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void u0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.O == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f29026d) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f29026d) != null && editText.isHovered())) {
            z10 = true;
        }
        if (!isEnabled()) {
            this.T = this.f29057s0;
        } else if (X()) {
            if (this.f29047n0 != null) {
                t0(z11, z10);
            } else {
                this.T = getErrorCurrentTextColors();
            }
        } else if (!this.f29044m || (textView = this.f29048o) == null) {
            if (z11) {
                this.T = this.f29045m0;
            } else if (z10) {
                this.T = this.f29043l0;
            } else {
                this.T = this.f29041k0;
            }
        } else if (this.f29047n0 != null) {
            t0(z11, z10);
        } else {
            this.T = textView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            h0();
        }
        this.f29024c.M();
        refreshStartIconDrawableState();
        if (this.O == 2) {
            int i10 = this.Q;
            if (z11 && isEnabled()) {
                this.Q = this.S;
            } else {
                this.Q = this.R;
            }
            if (this.Q != i10) {
                S();
            }
        }
        if (this.O == 1) {
            if (!isEnabled()) {
                this.U = this.f29051p0;
            } else if (z10 && !z11) {
                this.U = this.f29055r0;
            } else if (z11) {
                this.U = this.f29053q0;
            } else {
                this.U = this.f29049o0;
            }
        }
        l();
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.textInputStyle);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        this.f29024c.V(charSequence);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f29024c.X(drawable);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f29024c.h0(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f29024c.o0(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f29024c.q0(drawable);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.f29022b.s(charSequence);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f29022b.t(drawable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = C0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29030f = -1;
        this.f29032g = -1;
        this.f29034h = -1;
        this.f29036i = -1;
        this.f29038j = new u(this);
        this.f29046n = new d() {
            @Override
            public final int a(Editable editable) {
                return TextInputLayout.O(editable);
            }
        };
        this.V = new Rect();
        this.W = new Rect();
        this.f29021a0 = new RectF();
        this.f29029e0 = new LinkedHashSet();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.f29063v0 = bVar;
        this.B0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f29020a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = qa.a.f69577a;
        bVar.M0(timeInterpolator);
        bVar.H0(timeInterpolator);
        bVar.k0(MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START);
        j0 j0VarJ = com.google.android.material.internal.b0.j(context2, attributeSet, R$styleable.TextInputLayout, i10, i11, R$styleable.TextInputLayout_counterTextAppearance, R$styleable.TextInputLayout_counterOverflowTextAppearance, R$styleable.TextInputLayout_errorTextAppearance, R$styleable.TextInputLayout_helperTextTextAppearance, R$styleable.TextInputLayout_hintTextAppearance);
        y yVar = new y(this, j0VarJ);
        this.f29022b = yVar;
        this.C = j0VarJ.a(R$styleable.TextInputLayout_hintEnabled, true);
        setHint(j0VarJ.p(R$styleable.TextInputLayout_android_hint));
        this.f29067x0 = j0VarJ.a(R$styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f29065w0 = j0VarJ.a(R$styleable.TextInputLayout_expandedHintEnabled, true);
        if (j0VarJ.s(R$styleable.TextInputLayout_android_minEms)) {
            setMinEms(j0VarJ.k(R$styleable.TextInputLayout_android_minEms, -1));
        } else if (j0VarJ.s(R$styleable.TextInputLayout_android_minWidth)) {
            setMinWidth(j0VarJ.f(R$styleable.TextInputLayout_android_minWidth, -1));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_android_maxEms)) {
            setMaxEms(j0VarJ.k(R$styleable.TextInputLayout_android_maxEms, -1));
        } else if (j0VarJ.s(R$styleable.TextInputLayout_android_maxWidth)) {
            setMaxWidth(j0VarJ.f(R$styleable.TextInputLayout_android_maxWidth, -1));
        }
        this.L = cb.n.e(context2, attributeSet, i10, i11).m();
        this.N = context2.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_label_cutout_padding);
        this.P = j0VarJ.e(R$styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.R = j0VarJ.f(R$styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_default));
        this.S = j0VarJ.f(R$styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_focused));
        this.Q = this.R;
        float fD = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        cb.n.b bVarV = this.L.v();
        if (fD >= 0.0f) {
            bVarV.H(fD);
        }
        if (fD2 >= 0.0f) {
            bVarV.M(fD2);
        }
        if (fD3 >= 0.0f) {
            bVarV.B(fD3);
        }
        if (fD4 >= 0.0f) {
            bVarV.w(fD4);
        }
        this.L = bVarV.m();
        ColorStateList colorStateListB = za.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.f29049o0 = defaultColor;
            this.U = defaultColor;
            if (colorStateListB.isStateful()) {
                this.f29051p0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.f29053q0 = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f29055r0 = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f29053q0 = this.f29049o0;
                ColorStateList colorStateListA = g.a.a(context2, R$color.mtrl_filled_background_color);
                this.f29051p0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.f29055r0 = colorStateListA.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.U = 0;
            this.f29049o0 = 0;
            this.f29051p0 = 0;
            this.f29053q0 = 0;
            this.f29055r0 = 0;
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateListC = j0VarJ.c(R$styleable.TextInputLayout_android_textColorHint);
            this.f29039j0 = colorStateListC;
            this.f29037i0 = colorStateListC;
        }
        ColorStateList colorStateListB2 = za.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxStrokeColor);
        this.f29045m0 = j0VarJ.b(R$styleable.TextInputLayout_boxStrokeColor, 0);
        this.f29041k0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_default_box_stroke_color);
        this.f29057s0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_disabled_color);
        this.f29043l0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(za.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxStrokeErrorColor));
        }
        if (j0VarJ.n(R$styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(j0VarJ.n(R$styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.A = j0VarJ.c(R$styleable.TextInputLayout_cursorColor);
        this.B = j0VarJ.c(R$styleable.TextInputLayout_cursorErrorColor);
        int iN = j0VarJ.n(R$styleable.TextInputLayout_errorTextAppearance, 0);
        CharSequence charSequenceP = j0VarJ.p(R$styleable.TextInputLayout_errorContentDescription);
        int iK = j0VarJ.k(R$styleable.TextInputLayout_errorAccessibilityLiveRegion, 1);
        boolean zA = j0VarJ.a(R$styleable.TextInputLayout_errorEnabled, false);
        int iN2 = j0VarJ.n(R$styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean zA2 = j0VarJ.a(R$styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceP2 = j0VarJ.p(R$styleable.TextInputLayout_helperText);
        int iN3 = j0VarJ.n(R$styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceP3 = j0VarJ.p(R$styleable.TextInputLayout_placeholderText);
        boolean zA3 = j0VarJ.a(R$styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(j0VarJ.k(R$styleable.TextInputLayout_counterMaxLength, -1));
        this.f29052q = j0VarJ.n(R$styleable.TextInputLayout_counterTextAppearance, 0);
        this.f29050p = j0VarJ.n(R$styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        setBoxBackgroundMode(j0VarJ.k(R$styleable.TextInputLayout_boxBackgroundMode, 0));
        setErrorContentDescription(charSequenceP);
        setErrorAccessibilityLiveRegion(iK);
        setCounterOverflowTextAppearance(this.f29050p);
        setHelperTextTextAppearance(iN2);
        setErrorTextAppearance(iN);
        setCounterTextAppearance(this.f29052q);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        if (j0VarJ.s(R$styleable.TextInputLayout_errorTextColor)) {
            setErrorTextColor(j0VarJ.c(R$styleable.TextInputLayout_errorTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(j0VarJ.c(R$styleable.TextInputLayout_helperTextTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_hintTextColor)) {
            setHintTextColor(j0VarJ.c(R$styleable.TextInputLayout_hintTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_counterTextColor)) {
            setCounterTextColor(j0VarJ.c(R$styleable.TextInputLayout_counterTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(j0VarJ.c(R$styleable.TextInputLayout_counterOverflowTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(j0VarJ.c(R$styleable.TextInputLayout_placeholderTextColor));
        }
        r rVar = new r(this, j0VarJ);
        this.f29024c = rVar;
        boolean zA4 = j0VarJ.a(R$styleable.TextInputLayout_android_enabled, true);
        j0VarJ.x();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        frameLayout.addView(yVar);
        frameLayout.addView(rVar);
        addView(frameLayout);
        setEnabled(zA4);
        setHelperTextEnabled(zA2);
        setErrorEnabled(zA);
        setCounterEnabled(zA3);
        setHelperText(charSequenceP2);
    }

    public void setHint(int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}
