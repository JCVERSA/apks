package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import java.nio.ByteBuffer;

public final class n {

    private final androidx.emoji2.text.flatbuffer.c f8818a;

    private final char[] f8819b;

    private final a f8820c = new a(1024);

    private final Typeface f8821d;

    static class a {

        private final SparseArray f8822a;

        private p f8823b;

        private a() {
            this(1);
        }

        a a(int i10) {
            SparseArray sparseArray = this.f8822a;
            if (sparseArray == null) {
                return null;
            }
            return (a) sparseArray.get(i10);
        }

        final p b() {
            return this.f8823b;
        }

        void c(p pVar, int i10, int i11) {
            a aVarA = a(pVar.b(i10));
            if (aVarA == null) {
                aVarA = new a();
                this.f8822a.put(pVar.b(i10), aVarA);
            }
            if (i11 > i10) {
                aVarA.c(pVar, i10 + 1, i11);
            } else {
                aVarA.f8823b = pVar;
            }
        }

        a(int i10) {
            this.f8822a = new SparseArray(i10);
        }
    }

    private n(Typeface typeface, androidx.emoji2.text.flatbuffer.c cVar) {
        this.f8821d = typeface;
        this.f8818a = cVar;
        this.f8819b = new char[cVar.l() * 2];
        a(cVar);
    }

    private void a(androidx.emoji2.text.flatbuffer.c cVar) {
        int iL = cVar.l();
        for (int i10 = 0; i10 < iL; i10++) {
            p pVar = new p(this, i10);
            Character.toChars(pVar.f(), this.f8819b, i10 * 2);
            h(pVar);
        }
    }

    public static n b(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            androidx.core.os.s.a("EmojiCompat.MetadataRepo.create");
            return new n(typeface, m.b(byteBuffer));
        } finally {
            androidx.core.os.s.b();
        }
    }

    public char[] c() {
        return this.f8819b;
    }

    public androidx.emoji2.text.flatbuffer.c d() {
        return this.f8818a;
    }

    int e() {
        return this.f8818a.m();
    }

    a f() {
        return this.f8820c;
    }

    Typeface g() {
        return this.f8821d;
    }

    void h(p pVar) {
        androidx.core.util.i.h(pVar, "emoji metadata cannot be null");
        androidx.core.util.i.b(pVar.c() > 0, "invalid metadata codepoint length");
        this.f8820c.c(pVar, 0, pVar.c() - 1);
    }
}
