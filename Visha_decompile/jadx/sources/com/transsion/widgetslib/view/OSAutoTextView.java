package com.transsion.widgetslib.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.olb;
import defpackage.q47;

public class OSAutoTextView extends AppCompatTextView {
    public static final float[] i = {0.85f, 1.0f, 1.15f, 1.3f, 1.45f};
    public int c;
    public int d;
    public int e;
    public int f;
    public float g;
    public float h;

    public interface a {
    }

    public OSAutoTextView(@NonNull Context context) {
        super(context);
        this.c = 14;
        this.d = 12;
        this.e = 2;
        this.f = 8;
        this.g = 0.0f;
        this.h = 0.0f;
        b();
    }

    private void b() {
        setMaxLines(2);
        setTextSize(this.c);
        setLetterSpacing(this.g);
    }

    public static float[] c(float f, float f2) {
        if (f <= 0.0f || f2 <= 1.0f) {
            return new float[0];
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            float[] fArr = i;
            if (i2 >= fArr.length || fArr[i2] >= f2 - 0.001f) {
                break;
            }
            i3 = i2 + 1;
            i2 = i3;
        }
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                i4 = 0;
                break;
            }
            if (i[i4] + 0.001f >= 1.0f) {
                break;
            }
            if (i4 == i3 - 1) {
                return new float[0];
            }
            i4++;
        }
        int i5 = i3 - i4;
        if (i5 <= 0) {
            return new float[0];
        }
        float[] fArr2 = new float[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            fArr2[i6] = (i[(i3 - 1) - i6] * f) / f2;
        }
        return fArr2;
    }

    public final void a() {
        if (getLineCount() == this.e) {
            if (isTextFullyVisible(getText(), this.c, this.g)) {
                setLetterSpacing(this.g);
                setTextSize(this.c);
            } else {
                if (isTextFullyVisible(((Object) getText()) + CmcdData.OBJECT_TYPE_AUDIO_ONLY, this.c, this.h)) {
                    setLetterSpacing(this.h);
                    setTextSize(this.c);
                } else {
                    float f = getResources().getConfiguration().fontScale;
                    float f2 = this.d;
                    if (f > 1.0f) {
                        boolean z = false;
                        for (float f3 : c(this.c, f)) {
                            if (isTextFullyVisible(getText(), f3, this.g)) {
                                z = true;
                                f2 = f3;
                                break;
                            }
                        }
                        if (!z) {
                            f2 = this.d / f;
                        }
                    }
                    Log.d("OSAutoTextView", "appliedSize= " + f2);
                    setLetterSpacing(this.g);
                    setTextSize(f2);
                }
            }
        }
        setMaxLines(this.e);
        setEllipsize(TextUtils.TruncateAt.END);
    }

    public float getMaxLetterSpacing() {
        return this.g;
    }

    public int getMaxTextLine() {
        return this.e;
    }

    public int getMaxTextSizeSp() {
        return this.c;
    }

    public float getMinLetterSpacing() {
        return this.h;
    }

    public int getMinTextSizeSp() {
        return this.d;
    }

    public int getPaddingCorrection() {
        return this.f;
    }

    public boolean isTextFullyVisible(CharSequence charSequence, float f, float f2) {
        return isTextFullyVisible(charSequence, f, f2, this.e);
    }

    @Override
    public void onMeasure(int i2, int i3) {
        a();
        super.onMeasure(i2, i3);
        a();
    }

    public void registerOnMeasureListener(a aVar) {
    }

    public void setMaxLetterSpacing(float f) {
        this.g = f;
    }

    public void setMaxTextLine(int i2) {
        this.e = i2;
    }

    public void setMaxTextSizeSp(int i2) {
        this.c = i2;
    }

    public void setMinLetterSpacing(float f) {
        this.h = f;
    }

    public void setMinTextSizeSp(int i2) {
        this.d = i2;
    }

    public void setPaddingCorrection(int i2) {
        this.f = i2;
    }

    @Override
    public void setTextSize(float f) {
        if (olb.q0(getContext())) {
            setTextSize(0, f * 3.0f);
        } else {
            setTextSize(2, f);
        }
    }

    public void unregisterOnMeasureListener() {
    }

    public boolean isTextFullyVisible(CharSequence charSequence, float f, float f2, int i2) {
        return isTextFullyVisible(charSequence, f, f2, i2, getMeasuredWidth());
    }

    public boolean isTextFullyVisible(CharSequence charSequence, float f, float f2, int i2, int i3) {
        return q47.d(getContext(), charSequence, f, f2, i2, i3 - (getPaddingLeft() + getPaddingRight()));
    }

    public OSAutoTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 14;
        this.d = 12;
        this.e = 2;
        this.f = 8;
        this.g = 0.0f;
        this.h = 0.0f;
        b();
    }

    public OSAutoTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = 14;
        this.d = 12;
        this.e = 2;
        this.f = 8;
        this.g = 0.0f;
        this.h = 0.0f;
        b();
    }
}
