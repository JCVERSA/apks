package com.transsion.widgetslib.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.d;
import java.lang.reflect.Method;

public abstract class OSDialogPreference extends Preference implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, PreferenceManager.OnActivityDestroyListener {
    public d.a b;
    public CharSequence c;
    public CharSequence d;
    public Drawable e;
    public CharSequence f;
    public CharSequence g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;
    public Dialog l;
    public int m;
    public int n;
    public int o;
    public final Runnable p;

    public OSDialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.j = true;
        this.k = true;
        this.p = new Runnable() {
            @Override
            public void run() {
                if (OSDialogPreference.this.l != null) {
                    OSDialogPreference.this.l.dismiss();
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OsDialogPreference, i, i2);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.OsDialogPreference_dialogTitle);
        this.c = string;
        if (string == null) {
            this.c = getTitle();
        }
        this.d = typedArrayObtainStyledAttributes.getString(R.styleable.OsDialogPreference_dialogMessage);
        this.e = typedArrayObtainStyledAttributes.getDrawable(R.styleable.OsDialogPreference_dialogIcon);
        this.f = typedArrayObtainStyledAttributes.getString(R.styleable.OsDialogPreference_positiveButtonText);
        this.g = typedArrayObtainStyledAttributes.getString(R.styleable.OsDialogPreference_negativeButtonText);
        this.h = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OsDialogPreference_dialogLayout, this.h);
        this.i = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OsDialogPreference_dialogXosDiff, false);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{android.R.attr.listPreferredItemPaddingStart, android.R.attr.listPreferredItemPaddingEnd});
        Resources resources = context.getResources();
        int i3 = R.dimen.os_no_curve_content_padding;
        this.n = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, resources.getDimensionPixelSize(i3));
        this.o = typedArrayObtainStyledAttributes2.getDimensionPixelSize(1, context.getResources().getDimensionPixelSize(i3));
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final View b() {
        Dialog dialog = this.l;
        if (dialog == null || dialog.getWindow() == null) {
            return null;
        }
        return this.l.getWindow().getDecorView();
    }

    public final void d(PreferenceManager preferenceManager, String str) {
        try {
            Method declaredMethod = preferenceManager.getClass().getDeclaredMethod(str, PreferenceManager.OnActivityDestroyListener.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(preferenceManager, this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean e() {
        return false;
    }

    public void f(View view) {
        int i;
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence dialogMessage = getDialogMessage();
            if (TextUtils.isEmpty(dialogMessage)) {
                i = 8;
            } else {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(dialogMessage);
                }
                i = 0;
            }
            if (viewFindViewById.getVisibility() != i) {
                viewFindViewById.setVisibility(i);
            }
        }
    }

    public View g() {
        if (this.h == 0) {
            return null;
        }
        return LayoutInflater.from(this.b.getContext()).inflate(this.h, (ViewGroup) null);
    }

    public Dialog getDialog() {
        return this.l;
    }

    public Drawable getDialogIcon() {
        return this.e;
    }

    public int getDialogLayoutResource() {
        return this.h;
    }

    public CharSequence getDialogMessage() {
        return this.d;
    }

    public CharSequence getDialogTitle() {
        return this.c;
    }

    public CharSequence getNegativeButtonText() {
        return this.g;
    }

    public CharSequence getPositiveButtonText() {
        return this.f;
    }

    public void h(boolean z) {
    }

    public void i(d.a aVar) {
    }

    public void j() {
        k();
        View viewB = b();
        if (viewB != null) {
            viewB.post(this.p);
        }
    }

    public final void k() {
        View viewB = b();
        if (viewB != null) {
            viewB.removeCallbacks(this.p);
        }
    }

    public final void l(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public void m(Bundle bundle) {
        Context context = getContext();
        this.m = -2;
        this.b = new d.a(context, this.i).B(this.c).g(this.e).w(this.f, this).n(this.g, this);
        View viewG = g();
        if (viewG != null) {
            f(viewG);
            this.b.E(viewG);
        } else {
            this.b.k(this.d);
        }
        i(this.b);
        d(getPreferenceManager(), "registerOnActivityDestroyListener");
        d dVarA = this.b.e(this.j).f(this.k).a();
        this.l = dVarA;
        if (bundle != null) {
            dVarA.onRestoreInstanceState(bundle);
        }
        if (e()) {
            l(dVarA);
        }
        dVarA.setOnDismissListener(this);
        dVarA.show();
    }

    @Override
    public void onActivityDestroy() {
        Dialog dialog = this.l;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.l.dismiss();
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        if (view instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) view;
            if (linearLayout.getChildCount() >= 2) {
                View childAt = linearLayout.getChildAt(1);
                if (childAt instanceof RelativeLayout) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.setMarginStart(0);
                    layoutParams.setMarginEnd(0);
                    childAt.setLayoutParams(layoutParams);
                    linearLayout.setPadding(this.n, linearLayout.getPaddingTop(), this.o, linearLayout.getPaddingBottom());
                }
            }
        }
    }

    @Override
    public void onClick() {
        Dialog dialog = this.l;
        if (dialog == null || !dialog.isShowing()) {
            m(null);
        }
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        d(getPreferenceManager(), "unregisterOnActivityDestroyListener");
        this.l = null;
        h(this.m == -1);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isDialogShowing) {
            m(savedState.dialogBundle);
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Dialog dialog = this.l;
        if (dialog == null || !dialog.isShowing()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.isDialogShowing = true;
        savedState.dialogBundle = this.l.onSaveInstanceState();
        return savedState;
    }

    public void setDialogIcon(Drawable drawable) {
        this.e = drawable;
    }

    public void setDialogLayoutResource(int i) {
        this.h = i;
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.d = charSequence;
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.c = charSequence;
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.g = charSequence;
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.f = charSequence;
    }

    public void setDialogIcon(@DrawableRes int i) {
        this.e = ContextCompat.getDrawable(getContext(), i);
    }

    public void setDialogMessage(int i) {
        setDialogMessage(getContext().getString(i));
    }

    public void setDialogTitle(int i) {
        setDialogTitle(getContext().getString(i));
    }

    public void setNegativeButtonText(@StringRes int i) {
        setNegativeButtonText(getContext().getString(i));
    }

    public void setPositiveButtonText(@StringRes int i) {
        setPositiveButtonText(getContext().getString(i));
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Bundle dialogBundle;
        boolean isDialogShowing;

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

        public SavedState(Parcel parcel) {
            super(parcel);
            this.isDialogShowing = parcel.readInt() == 1;
            this.dialogBundle = parcel.readBundle();
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isDialogShowing ? 1 : 0);
            parcel.writeBundle(this.dialogBundle);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        this.m = i;
    }

    @RequiresApi(api = 21)
    public OSDialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @RequiresApi(api = 21)
    public OSDialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.OsDialogPreferenceStyle);
    }
}
