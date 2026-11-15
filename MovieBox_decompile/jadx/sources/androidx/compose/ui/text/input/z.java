package androidx.compose.ui.text.input;

import android.R;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;

public final class z implements InputConnection {

    private final q f5973a;

    private final boolean f5974b;

    private int f5975c;

    private TextFieldValue f5976d;

    private int f5977e;

    private boolean f5978f;

    private final List f5979g = new ArrayList();

    private boolean f5980h = true;

    public z(TextFieldValue textFieldValue, q qVar, boolean z10) {
        this.f5973a = qVar;
        this.f5974b = z10;
        this.f5976d = textFieldValue;
    }

    private final void a(m mVar) {
        b();
        try {
            this.f5979g.add(mVar);
        } finally {
            c();
        }
    }

    private final boolean b() {
        this.f5975c++;
        return true;
    }

    private final boolean c() {
        int i10 = this.f5975c - 1;
        this.f5975c = i10;
        if (i10 == 0 && !this.f5979g.isEmpty()) {
            this.f5973a.e(CollectionsKt.U0(this.f5979g));
            this.f5979g.clear();
        }
        return this.f5975c > 0;
    }

    private final void d(int i10) {
        sendKeyEvent(new KeyEvent(0, i10));
        sendKeyEvent(new KeyEvent(1, i10));
    }

    @Override
    public boolean beginBatchEdit() {
        boolean z10 = this.f5980h;
        return z10 ? b() : z10;
    }

    @Override
    public boolean clearMetaKeyStates(int i10) {
        boolean z10 = this.f5980h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override
    public void closeConnection() {
        this.f5979g.clear();
        this.f5975c = 0;
        this.f5980h = false;
        this.f5973a.b(this);
    }

    @Override
    public boolean commitCompletion(CompletionInfo completionInfo) {
        boolean z10 = this.f5980h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override
    public boolean commitContent(InputContentInfo inputContentInfo, int i10, Bundle bundle) {
        boolean z10 = this.f5980h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        boolean z10 = this.f5980h;
        return z10 ? this.f5974b : z10;
    }

    @Override
    public boolean commitText(CharSequence charSequence, int i10) {
        boolean z10 = this.f5980h;
        if (z10) {
            a(new a(String.valueOf(charSequence), i10));
        }
        return z10;
    }

    @Override
    public boolean deleteSurroundingText(int i10, int i11) {
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        a(new k(i10, i11));
        return true;
    }

    @Override
    public boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        a(new l(i10, i11));
        return true;
    }

    @Override
    public boolean endBatchEdit() {
        return c();
    }

    @Override
    public boolean finishComposingText() {
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        a(new n());
        return true;
    }

    @Override
    public int getCursorCapsMode(int i10) {
        return TextUtils.getCapsMode(this.f5976d.f(), androidx.compose.ui.text.b0.j(this.f5976d.e()), i10);
    }

    @Override
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i10) {
        boolean z10 = (i10 & 1) != 0;
        this.f5978f = z10;
        if (z10) {
            this.f5977e = extractedTextRequest != null ? extractedTextRequest.token : 0;
        }
        return s.a(this.f5976d);
    }

    @Override
    public Handler getHandler() {
        return null;
    }

    @Override
    public CharSequence getSelectedText(int i10) {
        if (androidx.compose.ui.text.b0.f(this.f5976d.e())) {
            return null;
        }
        return d0.a(this.f5976d).toString();
    }

    @Override
    public CharSequence getTextAfterCursor(int i10, int i11) {
        return d0.b(this.f5976d, i10).toString();
    }

    @Override
    public CharSequence getTextBeforeCursor(int i10, int i11) {
        return d0.c(this.f5976d, i10).toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public boolean performContextMenuAction(int i10) {
        boolean z10 = this.f5980h;
        if (z10) {
            z10 = false;
            switch (i10) {
                case R.id.selectAll:
                    a(new c0(0, this.f5976d.f().length()));
                    break;
                case R.id.cut:
                    d(277);
                    break;
                case R.id.copy:
                    d(278);
                    break;
                case R.id.paste:
                    d(279);
                    break;
            }
        }
        return z10;
    }

    @Override
    public boolean performEditorAction(int i10) {
        int iA;
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        if (i10 != 0) {
            switch (i10) {
                case 2:
                    iA = o.f5931b.c();
                    break;
                case 3:
                    iA = o.f5931b.g();
                    break;
                case 4:
                    iA = o.f5931b.h();
                    break;
                case 5:
                    iA = o.f5931b.d();
                    break;
                case 6:
                    iA = o.f5931b.b();
                    break;
                case 7:
                    iA = o.f5931b.f();
                    break;
                default:
                    Log.w("RecordingIC", "IME sends unsupported Editor Action: " + i10);
                    iA = o.f5931b.a();
                    break;
            }
        } else {
            iA = o.f5931b.a();
        }
        this.f5973a.d(iA);
        return true;
    }

    @Override
    public boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z10 = this.f5980h;
        if (z10) {
            return true;
        }
        return z10;
    }

    @Override
    public boolean reportFullscreenMode(boolean z10) {
        return false;
    }

    @Override
    public boolean requestCursorUpdates(int i10) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14 = this.f5980h;
        if (!z14) {
            return z14;
        }
        boolean z15 = false;
        boolean z16 = (i10 & 1) != 0;
        boolean z17 = (i10 & 2) != 0;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33) {
            boolean z18 = (i10 & 16) != 0;
            boolean z19 = (i10 & 8) != 0;
            boolean z20 = (i10 & 4) != 0;
            if (i11 >= 34 && (i10 & 32) != 0) {
                z15 = true;
            }
            if (z18 || z19 || z20 || z15) {
                z11 = z15;
                z10 = z20;
                z13 = z19;
                z12 = z18;
            } else if (i11 >= 34) {
                z12 = true;
                z13 = true;
                z10 = true;
                z11 = true;
            } else {
                z11 = z15;
                z12 = true;
                z13 = true;
                z10 = true;
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = true;
            z13 = true;
        }
        this.f5973a.c(z16, z17, z12, z13, z10, z11);
        return true;
    }

    @Override
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        this.f5973a.a(keyEvent);
        return true;
    }

    @Override
    public boolean setComposingRegion(int i10, int i11) {
        boolean z10 = this.f5980h;
        if (z10) {
            a(new a0(i10, i11));
        }
        return z10;
    }

    @Override
    public boolean setComposingText(CharSequence charSequence, int i10) {
        boolean z10 = this.f5980h;
        if (z10) {
            a(new b0(String.valueOf(charSequence), i10));
        }
        return z10;
    }

    @Override
    public boolean setSelection(int i10, int i11) {
        boolean z10 = this.f5980h;
        if (!z10) {
            return z10;
        }
        a(new c0(i10, i11));
        return true;
    }
}
