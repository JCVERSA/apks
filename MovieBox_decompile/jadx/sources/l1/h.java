package l1;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

class h implements TransformationMethod {

    private final TransformationMethod f65569a;

    h(TransformationMethod transformationMethod) {
        this.f65569a = transformationMethod;
    }

    public TransformationMethod a() {
        return this.f65569a;
    }

    @Override
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f65569a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || EmojiCompat.c().e() != 1) ? charSequence : EmojiCompat.c().p(charSequence);
    }

    @Override
    public void onFocusChanged(View view, CharSequence charSequence, boolean z10, int i10, Rect rect) {
        TransformationMethod transformationMethod = this.f65569a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z10, i10, rect);
        }
    }
}
