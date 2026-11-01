package ru.zdevs.zarchiver.ui.preference;

import a0.c;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import c0.b;

public class ColorPreference extends DialogPreference {

    public final int f1945a;

    public int f1946b;

    public class a implements DialogInterface.OnClickListener {

        public final b f1947a;

        public a(b bVar) {
            this.f1947a = bVar;
        }

        @Override
        public final void onClick(DialogInterface dialogInterface, int i2) {
            int i3 = ((b.a) this.f1947a.f387b.get(i2)).f390c;
            ColorPreference colorPreference = ColorPreference.this;
            colorPreference.f1946b = i3;
            colorPreference.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public ColorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f9a);
        if (typedArrayObtainStyledAttributes == null) {
            this.f1945a = 16777215;
        } else {
            this.f1945a = typedArrayObtainStyledAttributes.getInt(0, 16777215);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public final void onBindView(View view) {
        this.f1946b = getPersistedInt(0);
        setSummary(b.a(getContext(), this.f1946b));
        super.onBindView(view);
    }

    @Override
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        persistInt(this.f1946b);
        setSummary(b.a(getContext(), this.f1946b));
        notifyChanged();
    }

    @Override
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        b bVar = new b(getContext(), this.f1945a);
        int persistedInt = getPersistedInt(0);
        this.f1946b = persistedInt;
        builder.setSingleChoiceItems(bVar, persistedInt, new a(bVar));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
