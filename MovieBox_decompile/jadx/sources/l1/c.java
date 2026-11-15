package l1;

import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;

final class c extends InputConnectionWrapper {

    private final TextView f65549a;

    private final a f65550b;

    public static class a {
        public boolean a(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
            return EmojiCompat.f(inputConnection, editable, i10, i11, z10);
        }

        public void b(EditorInfo editorInfo) {
            if (EmojiCompat.i()) {
                EmojiCompat.c().v(editorInfo);
            }
        }
    }

    c(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        this(textView, inputConnection, editorInfo, new a());
    }

    private Editable a() {
        return this.f65549a.getEditableText();
    }

    @Override
    public boolean deleteSurroundingText(int i10, int i11) {
        return this.f65550b.a(this, a(), i10, i11, false) || super.deleteSurroundingText(i10, i11);
    }

    @Override
    public boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        return this.f65550b.a(this, a(), i10, i11, true) || super.deleteSurroundingTextInCodePoints(i10, i11);
    }

    c(TextView textView, InputConnection inputConnection, EditorInfo editorInfo, a aVar) {
        super(inputConnection, false);
        this.f65549a = textView;
        this.f65550b = aVar;
        aVar.b(editorInfo);
    }
}
