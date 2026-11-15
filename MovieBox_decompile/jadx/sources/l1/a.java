package l1;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.util.i;

public final class a {

    private final b f65541a;

    private int f65542b = Integer.MAX_VALUE;

    private int f65543c = 0;

    private static class C0804a extends b {

        private final EditText f65544a;

        private final g f65545b;

        C0804a(EditText editText, boolean z10) {
            this.f65544a = editText;
            g gVar = new g(editText, z10);
            this.f65545b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(l1.b.getInstance());
        }

        @Override
        KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new e(keyListener);
        }

        @Override
        boolean b() {
            return this.f65545b.b();
        }

        @Override
        InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof c ? inputConnection : new c(this.f65544a, inputConnection, editorInfo);
        }

        @Override
        void d(boolean z10) {
            this.f65545b.d(z10);
        }
    }

    static class b {
        b() {
        }

        abstract KeyListener a(KeyListener keyListener);

        abstract boolean b();

        abstract InputConnection c(InputConnection inputConnection, EditorInfo editorInfo);

        abstract void d(boolean z10);
    }

    public a(EditText editText, boolean z10) {
        i.h(editText, "editText cannot be null");
        this.f65541a = new C0804a(editText, z10);
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f65541a.a(keyListener);
    }

    public boolean b() {
        return this.f65541a.b();
    }

    public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f65541a.c(inputConnection, editorInfo);
    }

    public void d(boolean z10) {
        this.f65541a.d(z10);
    }
}
