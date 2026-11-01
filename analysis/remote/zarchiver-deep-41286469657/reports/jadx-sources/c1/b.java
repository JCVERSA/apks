package c1;

import android.text.Editable;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.SurroundingText;
import ru.zdevs.zarchiver.ui.editor.EditableView;

public final class b extends BaseInputConnection {

    public final ru.zdevs.zarchiver.ui.editor.b f445a;

    public final EditableView f446b;

    public int f447c;

    public b(EditableView editableView, ru.zdevs.zarchiver.ui.editor.b bVar) {
        super(editableView, true);
        this.f445a = bVar;
        this.f446b = editableView;
        this.f447c = 0;
    }

    @Override
    public final boolean beginBatchEdit() {
        synchronized (this) {
            int i2 = this.f447c;
            if (i2 < 0) {
                return false;
            }
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f445a;
            bVar.f1859e = true;
            bVar.f1860f = 0;
            this.f447c = i2 + 1;
            return true;
        }
    }

    @Override
    public final boolean clearMetaKeyStates(int i2) {
        EditableView editableView = this.f446b;
        try {
            editableView.getKeyListener().clearMetaKeyState(editableView, this.f445a, i2);
            return true;
        } catch (AbstractMethodError unused) {
            return true;
        }
    }

    @Override
    public final boolean endBatchEdit() {
        synchronized (this) {
            if (this.f447c <= 0) {
                return false;
            }
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f445a;
            bVar.f1859e = false;
            int i2 = bVar.f1860f;
            if (i2 != 0) {
                ((EditableView) bVar.f1855a).n(i2);
                bVar.f1860f = 0;
            }
            int i3 = this.f447c - 1;
            this.f447c = i3;
            return i3 > 0;
        }
    }

    @Override
    public final Editable getEditable() {
        return this.f445a;
    }

    @Override
    public final CharSequence getSelectedText(int i2) {
        return super.getSelectedText(i2 | 1);
    }

    @Override
    public final SurroundingText getSurroundingText(int i2, int i3, int i4) {
        return super.getSurroundingText(i2, i3, i4 | 1);
    }

    @Override
    public final CharSequence getTextAfterCursor(int i2, int i3) {
        if (i2 < 0) {
            return null;
        }
        return this.f445a.i(i2);
    }

    @Override
    public final CharSequence getTextBeforeCursor(int i2, int i3) {
        if (i2 < 0) {
            return null;
        }
        return this.f445a.i(-i2);
    }

    @Override
    public final boolean performContextMenuAction(int i2) {
        return this.f446b.o(i2);
    }

    @Override
    public final boolean reportFullscreenMode(boolean z2) {
        return !z2;
    }
}
