package ru.zdevs.zarchiver.ui.preference;

import a0.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Locale;
import ru.zdevs.zarchiver.R;

public class SeekBarPreference extends DialogPreference implements SeekBar.OnSeekBarChangeListener {

    public final int f1967a;

    public final int f1968b;

    public final int f1969c;

    public int f1970d;

    public TextView f1971e;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f13e);
        if (typedArrayObtainStyledAttributes == null) {
            this.f1967a = 0;
            this.f1969c = 0;
            this.f1968b = 100;
            return;
        }
        try {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getInt(2, Integer.MIN_VALUE);
        } catch (NumberFormatException unused) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, Integer.MIN_VALUE);
        }
        this.f1967a = dimensionPixelSize;
        try {
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getInt(1, Integer.MIN_VALUE);
        } catch (NumberFormatException unused2) {
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, Integer.MIN_VALUE);
        }
        this.f1968b = dimensionPixelSize2;
        try {
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getInt(0, Integer.MIN_VALUE);
        } catch (NumberFormatException unused3) {
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Integer.MIN_VALUE);
        }
        this.f1969c = dimensionPixelSize3;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override
    public final View onCreateDialogView() {
        this.f1970d = getPersistedInt(this.f1969c);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_slider, (ViewGroup) null, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.min_value);
        Locale locale = Locale.ENGLISH;
        int i2 = this.f1967a;
        textView.setText(String.format(locale, "%d", Integer.valueOf(i2)));
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.max_value);
        int i3 = this.f1968b;
        textView2.setText(String.format(locale, "%d", Integer.valueOf(i3)));
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.seek_bar);
        seekBar.setMax(i3 - i2);
        seekBar.setProgress(this.f1970d - i2);
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.current_value);
        this.f1971e = textView3;
        textView3.setText(String.format(locale, "%d", Integer.valueOf(this.f1970d)));
        return viewInflate;
    }

    @Override
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        if (z2) {
            if (shouldPersist()) {
                persistInt(this.f1970d);
            }
            notifyChanged();
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        int i3 = i2 + this.f1967a;
        this.f1970d = i3;
        this.f1971e.setText(String.format(Locale.ENGLISH, "%d", Integer.valueOf(i3)));
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
