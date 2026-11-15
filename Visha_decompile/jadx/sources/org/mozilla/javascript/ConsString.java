package org.mozilla.javascript;

import java.io.Serializable;
import java.util.ArrayDeque;

public class ConsString implements CharSequence, Serializable {
    private static final long serialVersionUID = -8432806714471372570L;
    private boolean isFlat = false;
    private CharSequence left;
    private final int length;
    private CharSequence right;

    public ConsString(CharSequence charSequence, CharSequence charSequence2) {
        this.left = charSequence;
        this.right = charSequence2;
        this.length = charSequence.length() + this.right.length();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x0015, B:8:0x0019, B:10:0x001f, B:13:0x0024, B:19:0x004b, B:14:0x002c, B:17:0x0043, B:20:0x0059), top: B:25:0x0001 }] */
    private synchronized String flatten() {
        try {
            if (!this.isFlat) {
                int length = this.length;
                char[] cArr = new char[length];
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.addFirst(this.left);
                CharSequence charSequence = this.right;
                do {
                    if (charSequence instanceof ConsString) {
                        ConsString consString = (ConsString) charSequence;
                        if (consString.isFlat) {
                            charSequence = consString.left;
                            String str = (String) charSequence;
                            length -= str.length();
                            str.getChars(0, str.length(), cArr, length);
                            if (arrayDeque.isEmpty()) {
                                charSequence = null;
                            } else {
                                charSequence = (CharSequence) arrayDeque.removeFirst();
                            }
                        } else {
                            arrayDeque.addFirst(consString.left);
                            charSequence = consString.right;
                        }
                    } else {
                        String str2 = (String) charSequence;
                        length -= str2.length();
                        str2.getChars(0, str2.length(), cArr, length);
                        if (arrayDeque.isEmpty()) {
                            charSequence = null;
                        } else {
                            charSequence = (CharSequence) arrayDeque.removeFirst();
                        }
                    }
                } while (charSequence != null);
                this.left = new String(cArr);
                this.right = "";
                this.isFlat = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (String) this.left;
    }

    private Object writeReplace() {
        return toString();
    }

    @Override
    public char charAt(int i) {
        return (this.isFlat ? (String) this.left : flatten()).charAt(i);
    }

    @Override
    public int length() {
        return this.length;
    }

    @Override
    public CharSequence subSequence(int i, int i2) {
        return (this.isFlat ? (String) this.left : flatten()).substring(i, i2);
    }

    @Override
    public String toString() {
        return this.isFlat ? (String) this.left : flatten();
    }
}
