package androidx.collection;

import androidx.annotation.IntRange;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import defpackage.e74;
import defpackage.s74;
import defpackage.u15;
import defpackage.u74;
import defpackage.wn8;
import defpackage.y45;
import java.util.NoSuchElementException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0016\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0011\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bJ2\u0010\t\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\t\u0010\rJ2\u0010\u000e\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u000e\u0010\rJ\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000bH\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J2\u0010\u0015\u001a\u00020\u00022\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0015\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0019J2\u0010\u0018\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0018\u0010\u001aJF\u0010\u001f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00028\u00002\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b\u001f\u0010 JL\u0010\"\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00028\u00002\u001e\u0010\u001e\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000!H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b\"\u0010#JF\u0010$\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00028\u00002\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b$\u0010 JL\u0010%\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00028\u00002\u001e\u0010\u001e\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000!H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b%\u0010#J2\u0010(\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020&0\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b(\u0010)J8\u0010*\u001a\u00020&2\u0018\u0010'\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020&0\u001dH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b*\u0010+J2\u0010,\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020&0\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b,\u0010)J8\u0010-\u001a\u00020&2\u0018\u0010'\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020&0\u001dH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b-\u0010+J\u001a\u0010/\u001a\u00020\u000b2\b\b\u0001\u0010.\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020\u000b2\b\b\u0001\u0010.\u001a\u00020\u0002¢\u0006\u0004\b1\u00100J1\u00103\u001a\u00020\u000b2\b\b\u0001\u0010.\u001a\u00020\u00022\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b5\u00106J2\u00107\u001a\u00020\u00022\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b7\u0010\u0017J2\u00108\u001a\u00020\u00022\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b8\u0010\u0017J\r\u00109\u001a\u00020\u0006¢\u0006\u0004\b9\u0010\bJ\r\u0010:\u001a\u00020\u0006¢\u0006\u0004\b:\u0010\bJ\r\u0010;\u001a\u00020\u000b¢\u0006\u0004\b;\u0010\u0019J2\u0010;\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b;\u0010\u001aJ\u0015\u0010<\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b<\u00106JA\u0010D\u001a\u00020C2\b\b\u0002\u0010>\u001a\u00020=2\b\b\u0002\u0010?\u001a\u00020=2\b\b\u0002\u0010@\u001a\u00020=2\b\b\u0002\u0010A\u001a\u00020\u00022\b\b\u0002\u0010B\u001a\u00020=H\u0007¢\u0006\u0004\bD\u0010EJ[\u0010D\u001a\u00020C2\b\b\u0002\u0010>\u001a\u00020=2\b\b\u0002\u0010?\u001a\u00020=2\b\b\u0002\u0010@\u001a\u00020=2\b\b\u0002\u0010A\u001a\u00020\u00022\b\b\u0002\u0010B\u001a\u00020=2\u0014\b\u0004\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020=0\nH\u0087\bø\u0001\u0000¢\u0006\u0004\bD\u0010GJ\u000f\u0010H\u001a\u00020\u0002H\u0016¢\u0006\u0004\bH\u0010\u0016J\u001a\u0010J\u001a\u00020\u00062\b\u0010I\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020CH\u0016¢\u0006\u0004\bL\u0010MR\u001c\u0010O\u001a\u00020N8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bO\u0010P\u0012\u0004\bQ\u0010RR\u001c\u0010S\u001a\u00020\u00028\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bS\u0010T\u0012\u0004\bU\u0010RR\u0011\u0010W\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\bV\u0010\u0016R\u0012\u0010Y\u001a\u00020\u00028Ç\u0002¢\u0006\u0006\u001a\u0004\bX\u0010\u0016R\u0012\u0010]\u001a\u00020Z8Æ\u0002¢\u0006\u0006\u001a\u0004\b[\u0010\\\u0082\u0001\u0001^\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006_"}, d2 = {"Landroidx/collection/LongList;", "", "", "initialCapacity", MethodDecl.initName, "(I)V", "", "none", "()Z", "any", "Lkotlin/Function1;", "", "predicate", "(Le74;)Z", "reversedAny", "element", "contains", "(J)Z", "elements", "containsAll", "(Landroidx/collection/LongList;)Z", "count", "()I", "(Le74;)I", "first", "()J", "(Le74;)J", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Ls74;)Ljava/lang/Object;", "Lkotlin/Function3;", "foldIndexed", "(Ljava/lang/Object;Lu74;)Ljava/lang/Object;", "foldRight", "foldRightIndexed", "Lzfb;", "block", "forEach", "(Le74;)V", "forEachIndexed", "(Ls74;)V", "forEachReversed", "forEachReversedIndexed", "index", "get", "(I)J", "elementAt", "defaultValue", "elementAtOrElse", "(ILe74;)J", "indexOf", "(J)I", "indexOfFirst", "indexOfLast", "isEmpty", "isNotEmpty", "last", "lastIndexOf", "", "separator", "prefix", "postfix", "limit", "truncated", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;", "transform", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;)Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "toString", "()Ljava/lang/String;", "", ICode.CALL.CALL_KEY_CONTENT, "[J", "getContent$annotations", "()V", "_size", "I", "get_size$annotations", "getSize", PlayAudioData.TAG_SIZE, "getLastIndex", "lastIndex", "Lu15;", "getIndices", "()Lu15;", "indices", "Landroidx/collection/MutableLongList;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class LongList {
    public int _size;
    public long[] content;

    public LongList(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public static void getContent$annotations() {
    }

    public static void get_size$annotations() {
    }

    public static String joinToString$default(LongList longList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        return longList.joinToString(charSequence, charSequence5, charSequence6, i3, charSequence4);
    }

    public final boolean any() {
        return isNotEmpty();
    }

    public final boolean contains(long element) {
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (jArr[i2] == element) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsAll(LongList elements) {
        y45.j(elements, "elements");
        u15 u15VarQ = wn8.q(0, elements._size);
        int iB = u15VarQ.b();
        int iC = u15VarQ.c();
        if (iB > iC) {
            return true;
        }
        while (contains(elements.get(iB))) {
            if (iB == iC) {
                return true;
            }
            iB++;
        }
        return false;
    }

    public final int get_size() {
        return this._size;
    }

    public final long elementAt(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final long elementAtOrElse(@IntRange(from = 0) int index, e74 defaultValue) {
        y45.j(defaultValue, "defaultValue");
        return (index < 0 || index >= this._size) ? ((Number) defaultValue.invoke(Integer.valueOf(index))).longValue() : this.content[index];
    }

    public boolean equals(Object other) {
        if (other instanceof LongList) {
            LongList longList = (LongList) other;
            int i = longList._size;
            int i2 = this._size;
            if (i == i2) {
                long[] jArr = this.content;
                long[] jArr2 = longList.content;
                u15 u15VarQ = wn8.q(0, i2);
                int iB = u15VarQ.b();
                int iC = u15VarQ.c();
                if (iB > iC) {
                    return true;
                }
                while (jArr[iB] == jArr2[iB]) {
                    if (iB == iC) {
                        return true;
                    }
                    iB++;
                }
                return false;
            }
        }
        return false;
    }

    public final long first() {
        if (isEmpty()) {
            throw new NoSuchElementException("LongList is empty.");
        }
        return this.content[0];
    }

    public final <R> R fold(R initial, s74 operation) {
        y45.j(operation, "operation");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            initial = (R) operation.invoke(initial, Long.valueOf(jArr[i2]));
        }
        return initial;
    }

    public final <R> R foldIndexed(R initial, u74 operation) {
        y45.j(operation, "operation");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            R r = initial;
            initial = (R) operation.invoke(Integer.valueOf(i2), r, Long.valueOf(jArr[i2]));
        }
        return initial;
    }

    public final <R> R foldRight(R initial, s74 operation) {
        y45.j(operation, "operation");
        long[] jArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return initial;
            }
            initial = (R) operation.invoke(Long.valueOf(jArr[i]), initial);
        }
    }

    public final <R> R foldRightIndexed(R initial, u74 operation) {
        y45.j(operation, "operation");
        long[] jArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return initial;
            }
            initial = (R) operation.invoke(Integer.valueOf(i), Long.valueOf(jArr[i]), initial);
        }
    }

    public final void forEach(e74 block) {
        y45.j(block, "block");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            block.invoke(Long.valueOf(jArr[i2]));
        }
    }

    public final void forEachIndexed(s74 block) {
        y45.j(block, "block");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            block.invoke(Integer.valueOf(i2), Long.valueOf(jArr[i2]));
        }
    }

    public final void forEachReversed(e74 block) {
        y45.j(block, "block");
        long[] jArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                block.invoke(Long.valueOf(jArr[i]));
            }
        }
    }

    public final void forEachReversedIndexed(s74 block) {
        y45.j(block, "block");
        long[] jArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                block.invoke(Integer.valueOf(i), Long.valueOf(jArr[i]));
            }
        }
    }

    public final long get(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final u15 getIndices() {
        return wn8.q(0, this._size);
    }

    @IntRange(from = -1)
    public final int getLastIndex() {
        return this._size - 1;
    }

    @IntRange(from = 0)
    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        long[] jArr = this.content;
        int i = this._size;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode += Long.hashCode(jArr[i2]) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(long element) {
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (element == jArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfFirst(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) predicate.invoke(Long.valueOf(jArr[i2]))).booleanValue()) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfLast(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!((Boolean) predicate.invoke(Long.valueOf(jArr[i]))).booleanValue());
        return i;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final long last() {
        if (isEmpty()) {
            throw new NoSuchElementException("LongList is empty.");
        }
        return this.content[this._size - 1];
    }

    public final int lastIndexOf(long element) {
        long[] jArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (jArr[i] != element);
        return i;
    }

    public final boolean none() {
        return isEmpty();
    }

    public final boolean reversedAny(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        for (int i = this._size - 1; -1 < i; i--) {
            if (((Boolean) predicate.invoke(Long.valueOf(jArr[i]))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private LongList(int i) {
        this.content = i == 0 ? LongSetKt.getEmptyLongArray() : new long[i];
    }

    public final boolean any(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) predicate.invoke(Long.valueOf(jArr[i2]))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int count(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (((Boolean) predicate.invoke(Long.valueOf(jArr[i3]))).booleanValue()) {
                i2++;
            }
        }
        return i2;
    }

    public final String joinToString(CharSequence charSequence) {
        y45.j(charSequence, "separator");
        return joinToString$default(this, charSequence, null, null, 0, null, 30, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, 28, null);
    }

    public final long first(e74 predicate) {
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (((Boolean) predicate.invoke(Long.valueOf(j))).booleanValue()) {
                return j;
            }
        }
        throw new NoSuchElementException("LongList contains no element matching the predicate.");
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, 24, null);
    }

    public static String joinToString$default(LongList longList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                charSequence = ", ";
            }
            if ((i2 & 2) != 0) {
                charSequence2 = "";
            }
            if ((i2 & 4) != 0) {
                charSequence3 = "";
            }
            if ((i2 & 8) != 0) {
                i = -1;
            }
            if ((i2 & 16) != 0) {
                charSequence4 = "...";
            }
            y45.j(charSequence, "separator");
            y45.j(charSequence2, "prefix");
            y45.j(charSequence3, "postfix");
            y45.j(charSequence4, "truncated");
            y45.j(e74Var, "transform");
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence2);
            long[] jArr = longList.content;
            int i3 = longList._size;
            for (int i4 = 0; i4 < i3; i4++) {
                long j = jArr[i4];
                if (i4 == i) {
                    sb.append(charSequence4);
                    String string = sb.toString();
                    y45.i(string, "StringBuilder().apply(builderAction).toString()");
                    return string;
                }
                if (i4 != 0) {
                    sb.append(charSequence);
                }
                sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
            }
            sb.append(charSequence3);
            String string2 = sb.toString();
            y45.i(string2, "StringBuilder().apply(builderAction).toString()");
            return string2;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, 16, null);
    }

    public final long last(e74 predicate) {
        long j;
        y45.j(predicate, "predicate");
        long[] jArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 < i) {
                j = jArr[i];
            } else {
                throw new NoSuchElementException("LongList contains no element matching the predicate.");
            }
        } while (!((Boolean) predicate.invoke(Long.valueOf(j))).booleanValue());
        return j;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated) {
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == limit) {
                sb.append(truncated);
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(separator);
            }
            sb.append(j);
        }
        sb.append(postfix);
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, e74 transform) {
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        y45.j(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == limit) {
                sb.append(truncated);
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(separator);
            }
            sb.append((CharSequence) transform.invoke(Long.valueOf(j)));
        }
        sb.append(postfix);
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        long[] jArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = jArr[i3];
            if (i3 == i) {
                sb.append((CharSequence) "...");
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i3 != 0) {
                sb.append(charSequence);
            }
            sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
        }
        sb.append(charSequence3);
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
        }
        sb.append(charSequence3);
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
        }
        sb.append((CharSequence) "");
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(CharSequence charSequence, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
        }
        sb.append((CharSequence) "");
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public final String joinToString(e74 e74Var) {
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        long[] jArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append((CharSequence) e74Var.invoke(Long.valueOf(j)));
        }
        sb.append((CharSequence) "");
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }
}
