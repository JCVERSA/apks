package com.transsion.widgetslib.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import defpackage.olb;
import defpackage.qb9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

@SuppressLint({"AppCompatCustomView"})
public class InvertArrowSpinner extends Spinner {
    public boolean b;
    public qb9 c;
    public OSPopupWindow d;
    public boolean e;
    public SpinnerAdapter f;
    public DataSetObserver g;
    public List h;
    public ListView i;
    public boolean j;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean showDropdown;

        public class a implements Parcelable.Creator {
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.showDropdown ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.showDropdown = parcel.readByte() != 0;
        }
    }

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            InvertArrowSpinner.this.setSelection(i);
            AdapterView.OnItemSelectedListener onItemSelectedListener = InvertArrowSpinner.this.getOnItemSelectedListener();
            if (onItemSelectedListener != null) {
                onItemSelectedListener.onItemSelected(adapterView, view, i, j);
            }
            InvertArrowSpinner.this.d.dismiss();
        }
    }

    public class b implements PopupWindow.OnDismissListener {
        public b() {
        }

        @Override
        public void onDismiss() {
            Activity activity = InvertArrowSpinner.this.getActivity();
            if (activity == null || !activity.isChangingConfigurations()) {
                InvertArrowSpinner.this.e = false;
            }
            InvertArrowSpinner invertArrowSpinner = InvertArrowSpinner.this;
            invertArrowSpinner.setBackground(invertArrowSpinner.getResources().getDrawable(R.drawable.os_spinner_background_material_blue_open));
        }
    }

    public class c extends DataSetObserver {
        public c() {
        }

        @Override
        public void onChanged() {
            if (InvertArrowSpinner.this.i()) {
                InvertArrowSpinner.this.m();
            }
        }

        @Override
        public void onInvalidated() {
            if (InvertArrowSpinner.this.i()) {
                InvertArrowSpinner.this.m();
            }
        }
    }

    public InvertArrowSpinner(Context context) {
        this(context, null);
    }

    public Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public final void g() {
        if (this.g == null) {
            this.g = new c();
        }
    }

    public ListView getPopupList() {
        return this.i;
    }

    public OSPopupWindow getPopupWindow() {
        return this.d;
    }

    public final List h(SpinnerAdapter spinnerAdapter) {
        int count = spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        ArrayList arrayList = new ArrayList(count);
        for (int i = 0; i < count; i++) {
            Object item = spinnerAdapter.getItem(i);
            if (item instanceof CharSequence) {
                arrayList.add((CharSequence) item);
            } else if (item instanceof TextView) {
                arrayList.add(((TextView) item).getText());
            } else if (item != null) {
                arrayList.add(String.valueOf(item));
            } else {
                arrayList.add("");
            }
        }
        return arrayList;
    }

    public final boolean i() {
        SpinnerAdapter spinnerAdapter = this.f;
        if (spinnerAdapter == null) {
            return false;
        }
        if (this.h == null) {
            return true;
        }
        return !Objects.equals(l(spinnerAdapter), this.h);
    }

    public final void j() {
        qb9 qb9Var = this.c;
        if (qb9Var == null || qb9Var.getCount() == 0) {
            return;
        }
        Context context = getContext();
        if (this.i == null) {
            ListView listView = new ListView(context);
            this.i = listView;
            listView.setDivider(null);
            this.i.setSelector(new ColorDrawable(0));
            this.i.setChoiceMode(0);
            this.i.setAdapter((ListAdapter) this.c);
        }
        if (this.d == null) {
            OSPopupWindow oSPopupWindow = new OSPopupWindow(context, null, 0, R.style.OsLiquidPopupWindowStyle);
            this.d = oSPopupWindow;
            oSPopupWindow.setContentView(this.i);
            this.d.setOutsideTouchable(true);
            this.d.setFocusable(true);
            this.i.setOnItemClickListener(new a());
            this.d.setOnDismissListener(new b());
        }
    }

    public final void k(SpinnerAdapter spinnerAdapter) {
        if (spinnerAdapter == null) {
            return;
        }
        g();
        spinnerAdapter.registerDataSetObserver(this.g);
        this.j = true;
    }

    public final List l(SpinnerAdapter spinnerAdapter) {
        if (spinnerAdapter == null) {
            return new ArrayList();
        }
        List listH = h(spinnerAdapter);
        ArrayList arrayList = new ArrayList(listH.size());
        Iterator it = listH.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf((CharSequence) it.next()));
        }
        return arrayList;
    }

    public final void m() {
        SpinnerAdapter spinnerAdapter = this.f;
        if (spinnerAdapter == null) {
            return;
        }
        n(spinnerAdapter);
    }

    public final void n(SpinnerAdapter spinnerAdapter) {
        if (spinnerAdapter == null) {
            return;
        }
        List listH = h(spinnerAdapter);
        int size = listH.size();
        qb9 qb9Var = this.c;
        if (qb9Var == null) {
            this.c = new qb9(getContext(), listH);
        } else {
            qb9Var.clear();
            this.c.addAll(listH);
        }
        this.c.notifyDataSetChanged();
        this.h = l(spinnerAdapter);
        if (size > 0) {
            j();
            p();
            return;
        }
        OSPopupWindow oSPopupWindow = this.d;
        if (oSPopupWindow == null || !oSPopupWindow.isShowing()) {
            return;
        }
        this.d.dismiss();
    }

    public final void o(SpinnerAdapter spinnerAdapter) {
        DataSetObserver dataSetObserver;
        if (spinnerAdapter == null || (dataSetObserver = this.g) == null || !this.j) {
            return;
        }
        spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        this.j = false;
    }

    @Override
    public void onDetachedFromWindow() {
        OSPopupWindow oSPopupWindow = this.d;
        if (oSPopupWindow != null && oSPopupWindow.isShowing()) {
            this.d.setDisableAnimation(true);
            this.d.dismiss();
            this.d.setDisableAnimation(false);
        }
        o(this.f);
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getSelectedItemPosition();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.showDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                ViewTreeObserver viewTreeObserver2 = InvertArrowSpinner.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    viewTreeObserver2.removeOnGlobalLayoutListener(this);
                }
                InvertArrowSpinner.this.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (InvertArrowSpinner.this.e) {
                            return;
                        }
                        InvertArrowSpinner.this.performClick();
                    }
                }, 150L);
            }
        });
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.showDropdown = this.e;
        return savedState;
    }

    public final void p() {
        qb9 qb9Var;
        if (this.d == null || (qb9Var = this.c) == null || qb9Var.getCount() == 0) {
            return;
        }
        this.d.setWidth(olb.A0(getContext(), this.c));
    }

    @Override
    public boolean performClick() {
        if (i()) {
            m();
        }
        qb9 qb9Var = this.c;
        if (qb9Var != null && qb9Var.getCount() > 0) {
            setBackground(getResources().getDrawable(R.drawable.os_spinner_background_material_blue_close));
            try {
                this.c.setDropDownSpinner(true);
                this.d.J(false, true);
                p();
                this.d.P(this, this.c.getCount());
                this.e = true;
                return true;
            } catch (Exception e) {
                Log.e("os_spinner", "performClick OSPopupWindow error: " + e);
            }
        }
        return super.performClick();
    }

    public void setNeedRemoveAllGlobalLayoutListeners(boolean z) {
        this.b = z;
    }

    public InvertArrowSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = false;
        setBackground(getResources().getDrawable(R.drawable.os_spinner_background_material_blue_open));
        setPopupBackgroundDrawable(getResources().getDrawable(R.drawable.os_liquid_popup_background));
    }

    @Override
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        o(this.f);
        this.f = spinnerAdapter;
        super.setAdapter(spinnerAdapter);
        k(spinnerAdapter);
        n(spinnerAdapter);
    }

    @Override
    public qb9 getAdapter() {
        return this.c;
    }
}
