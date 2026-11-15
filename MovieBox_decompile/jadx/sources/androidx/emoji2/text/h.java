package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

final class h {

    private final EmojiCompat.i f8779a;

    private final n f8780b;

    private EmojiCompat.e f8781c;

    private final boolean f8782d;

    private final int[] f8783e;

    private static final class a {
        static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    private static class b implements c {

        public t f8784a;

        private final EmojiCompat.i f8785b;

        b(t tVar, EmojiCompat.i iVar) {
            this.f8784a = tVar;
            this.f8785b = iVar;
        }

        @Override
        public boolean b(CharSequence charSequence, int i10, int i11, p pVar) {
            if (pVar.k()) {
                return true;
            }
            if (this.f8784a == null) {
                this.f8784a = new t(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.f8784a.setSpan(this.f8785b.a(pVar), i10, i11, 33);
            return true;
        }

        @Override
        public t a() {
            return this.f8784a;
        }
    }

    private interface c {
        Object a();

        boolean b(CharSequence charSequence, int i10, int i11, p pVar);
    }

    static final class e {

        private int f8787a = 1;

        private final n.a f8788b;

        private n.a f8789c;

        private n.a f8790d;

        private int f8791e;

        private int f8792f;

        private final boolean f8793g;

        private final int[] f8794h;

        e(n.a aVar, boolean z10, int[] iArr) {
            this.f8788b = aVar;
            this.f8789c = aVar;
            this.f8793g = z10;
            this.f8794h = iArr;
        }

        private static boolean d(int i10) {
            return i10 == 65039;
        }

        private static boolean f(int i10) {
            return i10 == 65038;
        }

        private int g() {
            this.f8787a = 1;
            this.f8789c = this.f8788b;
            this.f8792f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f8789c.b().j() || d(this.f8791e)) {
                return true;
            }
            if (this.f8793g) {
                if (this.f8794h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f8794h, this.f8789c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i10) {
            n.a aVarA = this.f8789c.a(i10);
            int iG = 2;
            if (this.f8787a != 2) {
                if (aVarA == null) {
                    iG = g();
                } else {
                    this.f8787a = 2;
                    this.f8789c = aVarA;
                    this.f8792f = 1;
                }
            } else if (aVarA != null) {
                this.f8789c = aVarA;
                this.f8792f++;
            } else if (f(i10)) {
                iG = g();
            } else if (!d(i10)) {
                if (this.f8789c.b() != null) {
                    iG = 3;
                    if (this.f8792f != 1 || h()) {
                        this.f8790d = this.f8789c;
                        g();
                    } else {
                        iG = g();
                    }
                } else {
                    iG = g();
                }
            }
            this.f8791e = i10;
            return iG;
        }

        p b() {
            return this.f8789c.b();
        }

        p c() {
            return this.f8790d.b();
        }

        boolean e() {
            return this.f8787a == 2 && this.f8789c.b() != null && (this.f8792f > 1 || h());
        }
    }

    h(n nVar, EmojiCompat.i iVar, EmojiCompat.e eVar, boolean z10, int[] iArr, Set set) {
        this.f8779a = iVar;
        this.f8780b = nVar;
        this.f8781c = eVar;
        this.f8782d = z10;
        this.f8783e = iArr;
        g(set);
    }

    private static boolean a(Editable editable, KeyEvent keyEvent, boolean z10) {
        i[] iVarArr;
        if (f(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!e(selectionStart, selectionEnd) && (iVarArr = (i[]) editable.getSpans(selectionStart, selectionEnd, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = editable.getSpanStart(iVar);
                int spanEnd = editable.getSpanEnd(iVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    static boolean b(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (e(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                iMax = a.a(editable, selectionStart, Math.max(i10, 0));
                iMin = a.b(editable, selectionEnd, Math.max(i11, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i10, 0);
                iMin = Math.min(selectionEnd + i11, editable.length());
            }
            i[] iVarArr = (i[]) editable.getSpans(iMax, iMin, i.class);
            if (iVarArr != null && iVarArr.length > 0) {
                for (i iVar : iVarArr) {
                    int spanStart = editable.getSpanStart(iVar);
                    int spanEnd = editable.getSpanEnd(iVar);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    static boolean c(Editable editable, int i10, KeyEvent keyEvent) {
        boolean zA;
        if (i10 != 67) {
            zA = i10 != 112 ? false : a(editable, keyEvent, true);
        } else {
            zA = a(editable, keyEvent, false);
        }
        if (!zA) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean d(CharSequence charSequence, int i10, int i11, p pVar) {
        if (pVar.d() == 0) {
            pVar.m(this.f8781c.a(charSequence, i10, i11, pVar.h()));
        }
        return pVar.d() == 2;
    }

    private static boolean e(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    private static boolean f(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    private void g(Set set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            i(str, 0, str.length(), 1, true, new d(str));
        }
    }

    private Object i(CharSequence charSequence, int i10, int i11, int i12, boolean z10, c cVar) {
        int iCharCount;
        e eVar = new e(this.f8780b.f(), this.f8782d, this.f8783e);
        int i13 = 0;
        boolean zB = true;
        int iCodePointAt = Character.codePointAt(charSequence, i10);
        loop0: while (true) {
            iCharCount = i10;
            while (true) {
                if (i10 >= i11 || i13 >= i12 || !zB) {
                    break loop0;
                }
                int iA = eVar.a(iCodePointAt);
                if (iA == 1) {
                    iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                    if (iCharCount < i11) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                    }
                    i10 = iCharCount;
                } else if (iA == 2) {
                    i10 += Character.charCount(iCodePointAt);
                    if (i10 < i11) {
                        iCodePointAt = Character.codePointAt(charSequence, i10);
                    }
                } else if (iA != 3) {
                }
            }
            if (z10 || !d(charSequence, iCharCount, i10, eVar.c())) {
                zB = cVar.b(charSequence, iCharCount, i10, eVar.c());
                i13++;
            }
        }
        if (eVar.e() && i13 < i12 && zB && (z10 || !d(charSequence, iCharCount, i10, eVar.b()))) {
            cVar.b(charSequence, iCharCount, i10, eVar.b());
        }
        return cVar.a();
    }

    CharSequence h(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
        t tVar;
        i[] iVarArr;
        boolean z11 = charSequence instanceof o;
        if (z11) {
            ((o) charSequence).a();
        }
        if (!z11) {
            try {
                tVar = charSequence instanceof Spannable ? new t((Spannable) charSequence) : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i10 + (-1), i11 + 1, i.class) > i11) ? null : new t(charSequence);
            } finally {
                if (z11) {
                    ((o) charSequence).d();
                }
            }
        }
        if (tVar != null && (iVarArr = (i[]) tVar.getSpans(i10, i11, i.class)) != null && iVarArr.length > 0) {
            for (i iVar : iVarArr) {
                int spanStart = tVar.getSpanStart(iVar);
                int spanEnd = tVar.getSpanEnd(iVar);
                if (spanStart != i11) {
                    tVar.removeSpan(iVar);
                }
                i10 = Math.min(spanStart, i10);
                i11 = Math.max(spanEnd, i11);
            }
        }
        int i13 = i11;
        if (i10 != i13 && i10 < charSequence.length()) {
            if (i12 != Integer.MAX_VALUE && tVar != null) {
                i12 -= ((i[]) tVar.getSpans(0, tVar.length(), i.class)).length;
            }
            t tVar2 = (t) i(charSequence, i10, i13, i12, z10, new b(tVar, this.f8779a));
            return tVar2 != null ? tVar2.b() : charSequence;
        }
        return charSequence;
    }

    private static class d implements c {

        private final String f8786a;

        d(String str) {
            this.f8786a = str;
        }

        @Override
        public boolean b(CharSequence charSequence, int i10, int i11, p pVar) {
            if (!TextUtils.equals(charSequence.subSequence(i10, i11), this.f8786a)) {
                return true;
            }
            pVar.l(true);
            return false;
        }

        @Override
        public d a() {
            return this;
        }
    }
}
