package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.core.view.TintableBackgroundView;

public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    private static final int[] f1384i = {R.attr.spinnerMode};

    private final androidx.appcompat.widget.c f1385a;

    private final Context f1386b;

    private ForwardingListener f1387c;

    private SpinnerAdapter f1388d;

    private final boolean f1389e;

    private g f1390f;

    int f1391g;

    final Rect f1392h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        boolean f1393a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f1393a ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1393a = parcel.readByte() != 0;
        }
    }

    class a extends ForwardingListener {

        final f f1394j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, f fVar) {
            super(view);
            this.f1394j = fVar;
        }

        @Override
        public androidx.appcompat.view.menu.o b() {
            return this.f1394j;
        }

        @Override
        public boolean c() {
            if (AppCompatSpinner.this.getInternalPopup().a()) {
                return true;
            }
            AppCompatSpinner.this.b();
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().a()) {
                AppCompatSpinner.this.b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    private static final class c {
        static void a(@NonNull ThemedSpinnerAdapter themedSpinnerAdapter, @Nullable Resources.Theme theme) {
            if (androidx.core.util.d.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    class d implements g, DialogInterface.OnClickListener {

        androidx.appcompat.app.c f1397a;

        private ListAdapter f1398b;

        private CharSequence f1399c;

        d() {
        }

        @Override
        public boolean a() {
            androidx.appcompat.app.c cVar = this.f1397a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override
        public void b(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override
        public int c() {
            return 0;
        }

        @Override
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f1397a;
            if (cVar != null) {
                cVar.dismiss();
                this.f1397a = null;
            }
        }

        @Override
        public void e(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override
        public CharSequence f() {
            return this.f1399c;
        }

        @Override
        public Drawable g() {
            return null;
        }

        @Override
        public void h(CharSequence charSequence) {
            this.f1399c = charSequence;
        }

        @Override
        public void i(int i10) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override
        public void j(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override
        public void k(int i10, int i11) {
            if (this.f1398b == null) {
                return;
            }
            androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1399c;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            androidx.appcompat.app.c cVarCreate = aVar.h(this.f1398b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f1397a = cVarCreate;
            ListView listViewF = cVarCreate.f();
            listViewF.setTextDirection(i10);
            listViewF.setTextAlignment(i11);
            this.f1397a.show();
        }

        @Override
        public int l() {
            return 0;
        }

        @Override
        public void m(ListAdapter listAdapter) {
            this.f1398b = listAdapter;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i10) {
            AppCompatSpinner.this.setSelection(i10);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i10, this.f1398b.getItemId(i10));
            }
            dismiss();
        }
    }

    private static class e implements ListAdapter, SpinnerAdapter {

        private SpinnerAdapter f1401a;

        private ListAdapter f1402b;

        public e(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1401a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1402b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                return;
            }
            c.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
        }

        @Override
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1402b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override
        public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override
        public Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override
        public long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override
        public int getItemViewType(int i10) {
            return 0;
        }

        @Override
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override
        public int getViewTypeCount() {
            return 1;
        }

        @Override
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override
        public boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f1402b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1401a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class f extends ListPopupWindow implements g {
        private CharSequence J;
        ListAdapter K;
        private final Rect L;
        private int M;

        class a implements AdapterView.OnItemClickListener {

            final AppCompatSpinner f1403a;

            a(AppCompatSpinner appCompatSpinner) {
                this.f1403a = appCompatSpinner;
            }

            @Override
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                AppCompatSpinner.this.setSelection(i10);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    f fVar = f.this;
                    AppCompatSpinner.this.performItemClick(view, i10, fVar.K.getItemId(i10));
                }
                f.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override
            public void onGlobalLayout() {
                f fVar = f.this;
                if (!fVar.U(AppCompatSpinner.this)) {
                    f.this.dismiss();
                } else {
                    f.this.S();
                    f.super.show();
                }
            }
        }

        class c implements PopupWindow.OnDismissListener {

            final ViewTreeObserver.OnGlobalLayoutListener f1406a;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1406a = onGlobalLayoutListener;
            }

            @Override
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1406a);
                }
            }
        }

        public f(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.L = new Rect();
            C(AppCompatSpinner.this);
            I(true);
            O(0);
            K(new a(AppCompatSpinner.this));
        }

        void S() {
            int i10;
            Drawable drawableG = g();
            if (drawableG != null) {
                drawableG.getPadding(AppCompatSpinner.this.f1392h);
                i10 = u0.b(AppCompatSpinner.this) ? AppCompatSpinner.this.f1392h.right : -AppCompatSpinner.this.f1392h.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1392h;
                rect.right = 0;
                rect.left = 0;
                i10 = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i11 = appCompatSpinner.f1391g;
            if (i11 == -2) {
                int iA = appCompatSpinner.a((SpinnerAdapter) this.K, g());
                int i12 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f1392h;
                int i13 = (i12 - rect2.left) - rect2.right;
                if (iA > i13) {
                    iA = i13;
                }
                E(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i11 == -1) {
                E((width - paddingLeft) - paddingRight);
            } else {
                E(i11);
            }
            e(u0.b(AppCompatSpinner.this) ? i10 + (((width - paddingRight) - y()) - T()) : i10 + paddingLeft + T());
        }

        public int T() {
            return this.M;
        }

        boolean U(View view) {
            return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.L);
        }

        @Override
        public CharSequence f() {
            return this.J;
        }

        @Override
        public void h(CharSequence charSequence) {
            this.J = charSequence;
        }

        @Override
        public void j(int i10) {
            this.M = i10;
        }

        @Override
        public void k(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            S();
            H(2);
            super.show();
            ListView listViewO = o();
            listViewO.setChoiceMode(1);
            listViewO.setTextDirection(i10);
            listViewO.setTextAlignment(i11);
            P(AppCompatSpinner.this.getSelectedItemPosition());
            if (zA || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            J(new c(bVar));
        }

        @Override
        public void m(ListAdapter listAdapter) {
            super.m(listAdapter);
            this.K = listAdapter;
        }
    }

    interface g {
        boolean a();

        void b(Drawable drawable);

        int c();

        void dismiss();

        void e(int i10);

        CharSequence f();

        Drawable g();

        void h(CharSequence charSequence);

        void i(int i10);

        void j(int i10);

        void k(int i10, int i11);

        int l();

        void m(ListAdapter listAdapter);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f1392h);
        Rect rect = this.f1392h;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        this.f1390f.k(getTextDirection(), getTextAlignment());
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override
    public int getDropDownHorizontalOffset() {
        g gVar = this.f1390f;
        return gVar != null ? gVar.c() : super.getDropDownHorizontalOffset();
    }

    @Override
    public int getDropDownVerticalOffset() {
        g gVar = this.f1390f;
        return gVar != null ? gVar.l() : super.getDropDownVerticalOffset();
    }

    @Override
    public int getDropDownWidth() {
        return this.f1390f != null ? this.f1391g : super.getDropDownWidth();
    }

    final g getInternalPopup() {
        return this.f1390f;
    }

    @Override
    public Drawable getPopupBackground() {
        g gVar = this.f1390f;
        return gVar != null ? gVar.g() : super.getPopupBackground();
    }

    @Override
    public Context getPopupContext() {
        return this.f1386b;
    }

    @Override
    public CharSequence getPrompt() {
        g gVar = this.f1390f;
        return gVar != null ? gVar.f() : super.getPrompt();
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.f1390f;
        if (gVar == null || !gVar.a()) {
            return;
        }
        this.f1390f.dismiss();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1390f == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f1393a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        g gVar = this.f1390f;
        savedState.f1393a = gVar != null && gVar.a();
        return savedState;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.f1387c;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override
    public boolean performClick() {
        g gVar = this.f1390f;
        if (gVar == null) {
            return super.performClick();
        }
        if (gVar.a()) {
            return true;
        }
        b();
        return true;
    }

    @Override
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setDropDownHorizontalOffset(int i10) {
        g gVar = this.f1390f;
        if (gVar == null) {
            super.setDropDownHorizontalOffset(i10);
        } else {
            gVar.j(i10);
            this.f1390f.e(i10);
        }
    }

    @Override
    public void setDropDownVerticalOffset(int i10) {
        g gVar = this.f1390f;
        if (gVar != null) {
            gVar.i(i10);
        } else {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override
    public void setDropDownWidth(int i10) {
        if (this.f1390f != null) {
            this.f1391g = i10;
        } else {
            super.setDropDownWidth(i10);
        }
    }

    @Override
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.f1390f;
        if (gVar != null) {
            gVar.b(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(g.a.b(getPopupContext(), i10));
    }

    @Override
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.f1390f;
        if (gVar != null) {
            gVar.h(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        androidx.appcompat.widget.c cVar = this.f1385a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public AppCompatSpinner(@NonNull Context context, int i10) {
        this(context, null, R$attr.spinnerStyle, i10);
    }

    @Override
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1389e) {
            this.f1388d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1390f != null) {
            Context context = this.f1386b;
            if (context == null) {
                context = getContext();
            }
            this.f1390f.m(new e(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        this(context, attributeSet, i10, i11, null);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x006a  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d2  */
    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11, Resources.Theme theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] charSequenceArrQ;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, i10);
        this.f1392h = new Rect();
        f0.a(this, getContext());
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.Spinner, i10, 0);
        this.f1385a = new androidx.appcompat.widget.c(this);
        if (theme != null) {
            this.f1386b = new androidx.appcompat.view.d(context, theme);
        } else {
            int iN = j0VarV.n(R$styleable.Spinner_popupTheme, 0);
            if (iN != 0) {
                this.f1386b = new androidx.appcompat.view.d(context, iN);
            } else {
                this.f1386b = context;
            }
        }
        TypedArray typedArray = null;
        if (i11 == -1) {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1384i, i10, 0);
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i11 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception unused) {
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i11 != 0) {
                        d dVar = new d();
                        this.f1390f = dVar;
                        dVar.h(j0VarV.o(R$styleable.Spinner_android_prompt));
                    } else if (i11 == 1) {
                        f fVar = new f(this.f1386b, attributeSet, i10);
                        j0 j0VarV2 = j0.v(this.f1386b, attributeSet, R$styleable.Spinner, i10, 0);
                        this.f1391g = j0VarV2.m(R$styleable.Spinner_android_dropDownWidth, -2);
                        fVar.b(j0VarV2.g(R$styleable.Spinner_android_popupBackground));
                        fVar.h(j0VarV.o(R$styleable.Spinner_android_prompt));
                        j0VarV2.x();
                        this.f1390f = fVar;
                        this.f1387c = new a(this, fVar);
                    }
                    charSequenceArrQ = j0VarV.q(R$styleable.Spinner_android_entries);
                    if (charSequenceArrQ != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
                        arrayAdapter.setDropDownViewResource(R$layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    j0VarV.x();
                    this.f1389e = true;
                    spinnerAdapter = this.f1388d;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f1388d = null;
                    }
                    this.f1385a.e(attributeSet, i10);
                } catch (Throwable th2) {
                    th = th2;
                    typedArray = typedArrayObtainStyledAttributes;
                    if (typedArray != null) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                typedArrayObtainStyledAttributes = null;
            } catch (Throwable th3) {
                th = th3;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (i11 != 0) {
            d dVar2 = new d();
            this.f1390f = dVar2;
            dVar2.h(j0VarV.o(R$styleable.Spinner_android_prompt));
        } else if (i11 == 1) {
            f fVar2 = new f(this.f1386b, attributeSet, i10);
            j0 j0VarV3 = j0.v(this.f1386b, attributeSet, R$styleable.Spinner, i10, 0);
            this.f1391g = j0VarV3.m(R$styleable.Spinner_android_dropDownWidth, -2);
            fVar2.b(j0VarV3.g(R$styleable.Spinner_android_popupBackground));
            fVar2.h(j0VarV.o(R$styleable.Spinner_android_prompt));
            j0VarV3.x();
            this.f1390f = fVar2;
            this.f1387c = new a(this, fVar2);
        }
        charSequenceArrQ = j0VarV.q(R$styleable.Spinner_android_entries);
        if (charSequenceArrQ != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
            arrayAdapter2.setDropDownViewResource(R$layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        j0VarV.x();
        this.f1389e = true;
        spinnerAdapter = this.f1388d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f1388d = null;
        }
        this.f1385a.e(attributeSet, i10);
    }
}
