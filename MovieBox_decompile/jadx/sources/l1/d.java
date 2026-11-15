package l1;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

final class d implements InputFilter {

    private final TextView f65551a;

    private EmojiCompat.f f65552b;

    private static class a extends EmojiCompat.f {

        private final Reference f65553a;

        private final Reference f65554b;

        a(TextView textView, d dVar) {
            this.f65553a = new WeakReference(textView);
            this.f65554b = new WeakReference(dVar);
        }

        private boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public void b() {
            CharSequence text;
            CharSequence charSequenceP;
            super.b();
            TextView textView = (TextView) this.f65553a.get();
            if (c(textView, (InputFilter) this.f65554b.get()) && textView.isAttachedToWindow() && text != (charSequenceP = EmojiCompat.c().p((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(charSequenceP);
                int selectionEnd = Selection.getSelectionEnd(charSequenceP);
                textView.setText(charSequenceP);
                if (charSequenceP instanceof Spannable) {
                    d.b((Spannable) charSequenceP, selectionStart, selectionEnd);
                }
            }
        }
    }

    d(TextView textView) {
        this.f65551a = textView;
    }

    private EmojiCompat.f a() {
        if (this.f65552b == null) {
            this.f65552b = new a(this.f65551a, this);
        }
        return this.f65552b;
    }

    static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    @Override
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.f65551a.isInEditMode()) {
            return charSequence;
        }
        int iE = EmojiCompat.c().e();
        if (iE != 0) {
            if (iE == 1) {
                if ((i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.f65551a.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return EmojiCompat.c().q(charSequence, 0, charSequence.length());
            }
            if (iE != 3) {
                return charSequence;
            }
        }
        EmojiCompat.c().t(a());
        return charSequence;
    }
}
