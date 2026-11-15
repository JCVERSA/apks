package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.inputmethod.EditorInfo;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.Executor;
import org.mvel2.ast.ASTNode;

public abstract class h0 {
    public static final Executor d(final Choreographer choreographer) {
        return new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                h0.e(choreographer, runnable);
            }
        };
    }

    public static final void e(Choreographer choreographer, final Runnable runnable) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j10) {
                h0.f(runnable, j10);
            }
        });
    }

    public static final void f(Runnable runnable, long j10) {
        runnable.run();
    }

    private static final boolean g(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    public static final void h(EditorInfo editorInfo, p pVar, TextFieldValue textFieldValue) {
        String strA;
        int iD = pVar.d();
        o.a aVar = o.f5931b;
        int i10 = 6;
        if (o.l(iD, aVar.a())) {
            if (!pVar.g()) {
                i10 = 0;
            }
        } else if (o.l(iD, aVar.e())) {
            i10 = 1;
        } else if (o.l(iD, aVar.c())) {
            i10 = 2;
        } else if (o.l(iD, aVar.d())) {
            i10 = 5;
        } else if (o.l(iD, aVar.f())) {
            i10 = 7;
        } else if (o.l(iD, aVar.g())) {
            i10 = 3;
        } else if (o.l(iD, aVar.h())) {
            i10 = 4;
        } else if (!o.l(iD, aVar.b())) {
            throw new IllegalStateException("invalid ImeAction");
        }
        editorInfo.imeOptions = i10;
        x xVarF = pVar.f();
        if (xVarF != null && (strA = xVarF.a()) != null) {
            editorInfo.privateImeOptions = strA;
        }
        int iE = pVar.e();
        u.a aVar2 = u.f5957a;
        if (u.k(iE, aVar2.h())) {
            editorInfo.inputType = 1;
        } else if (u.k(iE, aVar2.a())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (u.k(iE, aVar2.d())) {
            editorInfo.inputType = 2;
        } else if (u.k(iE, aVar2.g())) {
            editorInfo.inputType = 3;
        } else if (u.k(iE, aVar2.i())) {
            editorInfo.inputType = 17;
        } else if (u.k(iE, aVar2.c())) {
            editorInfo.inputType = 33;
        } else if (u.k(iE, aVar2.f())) {
            editorInfo.inputType = 129;
        } else if (u.k(iE, aVar2.e())) {
            editorInfo.inputType = 18;
        } else {
            if (!u.k(iE, aVar2.b())) {
                throw new IllegalStateException("Invalid Keyboard Type");
            }
            editorInfo.inputType = InputDeviceCompat.SOURCE_MOUSE;
        }
        if (!pVar.g() && g(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (o.l(pVar.d(), aVar.a())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (g(editorInfo.inputType, 1)) {
            int iC = pVar.c();
            t.a aVar3 = t.f5951a;
            if (t.f(iC, aVar3.a())) {
                editorInfo.inputType |= 4096;
            } else if (t.f(iC, aVar3.d())) {
                editorInfo.inputType |= 8192;
            } else if (t.f(iC, aVar3.c())) {
                editorInfo.inputType |= 16384;
            }
            if (pVar.b()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = androidx.compose.ui.text.b0.k(textFieldValue.e());
        editorInfo.initialSelEnd = androidx.compose.ui.text.b0.g(textFieldValue.e());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.f());
        editorInfo.imeOptions |= ASTNode.PCTX_STORED;
    }

    public static final void i(EditorInfo editorInfo) {
        if (EmojiCompat.i()) {
            EmojiCompat.c().v(editorInfo);
        }
    }
}
