package androidx.compose.ui.text.platform;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.emoji2.text.EmojiCompat;
import kotlin.jvm.internal.Intrinsics;

final class i implements l {

    private a3 f6015a;

    public static final class a extends EmojiCompat.f {

        final i1 f6016a;

        final i f6017b;

        a(i1 i1Var, i iVar) {
            this.f6016a = i1Var;
            this.f6017b = iVar;
        }

        @Override
        public void a(Throwable th2) {
            this.f6017b.f6015a = m.f6022a;
        }

        @Override
        public void b() {
            this.f6016a.setValue(Boolean.TRUE);
            this.f6017b.f6015a = new n(true);
        }
    }

    public i() {
        this.f6015a = EmojiCompat.i() ? c() : null;
    }

    private final a3 c() {
        EmojiCompat emojiCompatC = EmojiCompat.c();
        if (emojiCompatC.e() == 1) {
            return new n(true);
        }
        i1 i1VarC = u2.c(Boolean.FALSE, null, 2, null);
        emojiCompatC.t(new a(i1VarC, this));
        return i1VarC;
    }

    @Override
    public a3 a() {
        a3 a3Var = this.f6015a;
        if (a3Var != null) {
            Intrinsics.e(a3Var);
            return a3Var;
        }
        if (!EmojiCompat.i()) {
            return m.f6022a;
        }
        a3 a3VarC = c();
        this.f6015a = a3VarC;
        Intrinsics.e(a3VarC);
        return a3VarC;
    }
}
