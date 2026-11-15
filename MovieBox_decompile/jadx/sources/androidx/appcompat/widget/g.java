package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.R$styleable;

class g {

    private final EditText f1717a;

    private final l1.a f1718b;

    g(EditText editText) {
        this.f1717a = editText;
        this.f1718b = new l1.a(editText, false);
    }

    KeyListener a(KeyListener keyListener) {
        return b(keyListener) ? this.f1718b.a(keyListener) : keyListener;
    }

    boolean b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    boolean c() {
        return this.f1718b.b();
    }

    void d(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f1717a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            f(z10);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    InputConnection e(InputConnection inputConnection, EditorInfo editorInfo) {
        return this.f1718b.c(inputConnection, editorInfo);
    }

    void f(boolean z10) {
        this.f1718b.d(z10);
    }
}
