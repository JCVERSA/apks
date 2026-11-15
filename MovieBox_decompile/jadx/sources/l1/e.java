package l1;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

final class e implements KeyListener {

    private final KeyListener f65555a;

    private final a f65556b;

    public static class a {
        public boolean a(Editable editable, int i10, KeyEvent keyEvent) {
            return EmojiCompat.g(editable, i10, keyEvent);
        }
    }

    e(KeyListener keyListener) {
        this(keyListener, new a());
    }

    @Override
    public void clearMetaKeyState(View view, Editable editable, int i10) {
        this.f65555a.clearMetaKeyState(view, editable, i10);
    }

    @Override
    public int getInputType() {
        return this.f65555a.getInputType();
    }

    @Override
    public boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f65556b.a(editable, i10, keyEvent) || this.f65555a.onKeyDown(view, editable, i10, keyEvent);
    }

    @Override
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f65555a.onKeyOther(view, editable, keyEvent);
    }

    @Override
    public boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f65555a.onKeyUp(view, editable, i10, keyEvent);
    }

    e(KeyListener keyListener, a aVar) {
        this.f65555a = keyListener;
        this.f65556b = aVar;
    }
}
