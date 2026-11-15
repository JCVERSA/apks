package l1;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

final class g implements TextWatcher {

    private final EditText f65562a;

    private final boolean f65563b;

    private EmojiCompat.f f65564c;

    private int f65565d = Integer.MAX_VALUE;

    private int f65566e = 0;

    private boolean f65567f = true;

    private static class a extends EmojiCompat.f {

        private final Reference f65568a;

        a(EditText editText) {
            this.f65568a = new WeakReference(editText);
        }

        @Override
        public void b() {
            super.b();
            g.c((EditText) this.f65568a.get(), 1);
        }
    }

    g(EditText editText, boolean z10) {
        this.f65562a = editText;
        this.f65563b = z10;
    }

    private EmojiCompat.f a() {
        if (this.f65564c == null) {
            this.f65564c = new a(this.f65562a);
        }
        return this.f65564c;
    }

    static void c(EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.c().p(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean e() {
        return (this.f65567f && (this.f65563b || EmojiCompat.i())) ? false : true;
    }

    public boolean b() {
        return this.f65567f;
    }

    public void d(boolean z10) {
        if (this.f65567f != z10) {
            if (this.f65564c != null) {
                EmojiCompat.c().u(this.f65564c);
            }
            this.f65567f = z10;
            if (z10) {
                c(this.f65562a, EmojiCompat.c().e());
            }
        }
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (this.f65562a.isInEditMode() || e() || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iE = EmojiCompat.c().e();
        if (iE != 0) {
            if (iE == 1) {
                EmojiCompat.c().s((Spannable) charSequence, i10, i10 + i12, this.f65565d, this.f65566e);
                return;
            } else if (iE != 3) {
                return;
            }
        }
        EmojiCompat.c().t(a());
    }

    @Override
    public void afterTextChanged(Editable editable) {
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
