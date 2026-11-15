package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;

class h {

    private final TextView f1723a;

    private final l1.f f1724b;

    h(TextView textView) {
        this.f1723a = textView;
        this.f1724b = new l1.f(textView, false);
    }

    InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1724b.a(inputFilterArr);
    }

    public boolean b() {
        return this.f1724b.b();
    }

    void c(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f1723a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            e(z10);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    void d(boolean z10) {
        this.f1724b.c(z10);
    }

    void e(boolean z10) {
        this.f1724b.d(z10);
    }

    public TransformationMethod f(TransformationMethod transformationMethod) {
        return this.f1724b.e(transformationMethod);
    }
}
