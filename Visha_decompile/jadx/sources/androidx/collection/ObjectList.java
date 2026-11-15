package androidx.collection;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import defpackage.e74;
import defpackage.s74;
import defpackage.u15;
import defpackage.u74;
import defpackage.wn8;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001c\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0011\b\u0004\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\tJ2\u0010\n\u001a\u00020\u00072\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\n\u0010\rJ2\u0010\u000e\u001a\u00020\u00072\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u000e\u0010\rJ\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b\u0014\u0010\u0017J\u001b\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018¢\u0006\u0004\b\u0014\u0010\u0019J\u001b\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u0014\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ2\u0010\u001b\u001a\u00020\u00032\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u001b\u0010\u001dJ\r\u0010\u001e\u001a\u00028\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ2\u0010\u001e\u001a\u00028\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u001e\u0010 J\u0012\u0010!\u001a\u0004\u0018\u00018\u0000H\u0086\b¢\u0006\u0004\b!\u0010\u001fJ4\u0010!\u001a\u0004\u0018\u00018\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b!\u0010 JF\u0010&\u001a\u00028\u0001\"\u0004\b\u0001\u0010\"2\u0006\u0010#\u001a\u00028\u00012\u0018\u0010%\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b&\u0010'JL\u0010)\u001a\u00028\u0001\"\u0004\b\u0001\u0010\"2\u0006\u0010#\u001a\u00028\u00012\u001e\u0010%\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010(H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b)\u0010*JF\u0010+\u001a\u00028\u0001\"\u0004\b\u0001\u0010\"2\u0006\u0010#\u001a\u00028\u00012\u0018\u0010%\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00010$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b+\u0010'JL\u0010,\u001a\u00028\u0001\"\u0004\b\u0001\u0010\"2\u0006\u0010#\u001a\u00028\u00012\u001e\u0010%\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00010(H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0004\b,\u0010*J2\u0010/\u001a\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020-0\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b/\u00100J8\u00101\u001a\u00020-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020-0$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b1\u00102J2\u00103\u001a\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020-0\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b3\u00100J8\u00104\u001a\u00020-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020-0$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b4\u00102J\u001a\u00106\u001a\u00028\u00002\b\b\u0001\u00105\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00028\u00002\b\b\u0001\u00105\u001a\u00020\u0003¢\u0006\u0004\b8\u00107J1\u0010:\u001a\u00028\u00002\b\b\u0001\u00105\u001a\u00020\u00032\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\bø\u0001\u0000¢\u0006\u0004\b:\u0010;J\u0015\u0010<\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\b<\u0010=J2\u0010>\u001a\u00020\u00032\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b>\u0010\u001dJ2\u0010?\u001a\u00020\u00032\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b?\u0010\u001dJ\r\u0010@\u001a\u00020\u0007¢\u0006\u0004\b@\u0010\tJ\r\u0010A\u001a\u00020\u0007¢\u0006\u0004\bA\u0010\tJ\r\u0010B\u001a\u00028\u0000¢\u0006\u0004\bB\u0010\u001fJ2\u0010B\u001a\u00028\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bB\u0010 J\u0012\u0010C\u001a\u0004\u0018\u00018\u0000H\u0086\b¢\u0006\u0004\bC\u0010\u001fJ4\u0010C\u001a\u0004\u0018\u00018\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\bC\u0010 J\u0015\u0010D\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\bD\u0010=JY\u0010M\u001a\u00020L2\b\b\u0002\u0010F\u001a\u00020E2\b\b\u0002\u0010G\u001a\u00020E2\b\b\u0002\u0010H\u001a\u00020E2\b\b\u0002\u0010I\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020E2\u0016\b\u0002\u0010K\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020E\u0018\u00010\u000bH\u0007¢\u0006\u0004\bM\u0010NJ\u0015\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H&¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0003H\u0016¢\u0006\u0004\bQ\u0010\u001cJ\u001a\u0010S\u001a\u00020\u00072\b\u0010R\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\bS\u0010\u0011J\u000f\u0010T\u001a\u00020LH\u0016¢\u0006\u0004\bT\u0010UR$\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00128\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bV\u0010W\u0012\u0004\bX\u0010YR\u001c\u0010Z\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bZ\u0010[\u0012\u0004\b\\\u0010YR\u0011\u0010^\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b]\u0010\u001cR\u0012\u0010`\u001a\u00020\u00038Ç\u0002¢\u0006\u0006\u001a\u0004\b_\u0010\u001cR\u0012\u0010d\u001a\u00020a8Æ\u0002¢\u0006\u0006\u001a\u0004\bb\u0010c\u0082\u0001\u0001e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006f"}, d2 = {"Landroidx/collection/ObjectList;", ExifInterface.LONGITUDE_EAST, "", "", "initialCapacity", MethodDecl.initName, "(I)V", "", "none", "()Z", "any", "Lkotlin/Function1;", "predicate", "(Le74;)Z", "reversedAny", "element", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "([Ljava/lang/Object;)Z", "", "(Ljava/util/List;)Z", "", "(Ljava/lang/Iterable;)Z", "(Landroidx/collection/ObjectList;)Z", "count", "()I", "(Le74;)I", "first", "()Ljava/lang/Object;", "(Le74;)Ljava/lang/Object;", "firstOrNull", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Ls74;)Ljava/lang/Object;", "Lkotlin/Function3;", "foldIndexed", "(Ljava/lang/Object;Lu74;)Ljava/lang/Object;", "foldRight", "foldRightIndexed", "Lzfb;", "block", "forEach", "(Le74;)V", "forEachIndexed", "(Ls74;)V", "forEachReversed", "forEachReversedIndexed", "index", "get", "(I)Ljava/lang/Object;", "elementAt", "defaultValue", "elementAtOrElse", "(ILe74;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "indexOfFirst", "indexOfLast", "isEmpty", "isNotEmpty", "last", "lastOrNull", "lastIndexOf", "", "separator", "prefix", "postfix", "limit", "truncated", "transform", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;)Ljava/lang/String;", "asList", "()Ljava/util/List;", "hashCode", "other", "equals", "toString", "()Ljava/lang/String;", ICode.CALL.CALL_KEY_CONTENT, "[Ljava/lang/Object;", "getContent$annotations", "()V", "_size", "I", "get_size$annotations", "getSize", PlayAudioData.TAG_SIZE, "getLastIndex", "lastIndex", "Lu15;", "getIndices", "()Lu15;", "indices", "Landroidx/collection/MutableObjectList;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class ObjectList<E> {
    public int _size;
    public Object[] content;

    public ObjectList(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    public static void getContent$annotations() {
    }

    public static void get_size$annotations() {
    }

    public static String joinToString$default(ObjectList objectList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
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
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            e74Var = null;
        }
        return objectList.joinToString(charSequence, charSequence5, charSequence6, i3, charSequence7, e74Var);
    }

    public final boolean any() {
        return isNotEmpty();
    }

    public abstract List<E> asList();

    public final boolean contains(E element) {
        return indexOf(element) >= 0;
    }

    public final boolean containsAll(E[] elements) {
        y45.j(elements, "elements");
        for (E e : elements) {
            if (!contains(e)) {
                return false;
            }
        }
        return true;
    }

    public final int get_size() {
        return this._size;
    }

    public final E elementAt(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return (E) this.content[index];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Index ");
        sb.append(index);
        sb.append(" must be in 0..");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final E elementAtOrElse(@IntRange(from = 0) int index, e74 defaultValue) {
        y45.j(defaultValue, "defaultValue");
        return (index < 0 || index >= this._size) ? (E) defaultValue.invoke(Integer.valueOf(index)) : (E) this.content[index];
    }

    public boolean equals(Object other) {
        if (other instanceof ObjectList) {
            ObjectList objectList = (ObjectList) other;
            int i = objectList._size;
            int i2 = this._size;
            if (i == i2) {
                Object[] objArr = this.content;
                Object[] objArr2 = objectList.content;
                u15 u15VarQ = wn8.q(0, i2);
                int iB = u15VarQ.b();
                int iC = u15VarQ.c();
                if (iB > iC) {
                    return true;
                }
                while (y45.e(objArr[iB], objArr2[iB])) {
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

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[0];
    }

    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public final <R> R fold(R initial, s74 operation) {
        y45.j(operation, "operation");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            initial = (R) operation.invoke(initial, objArr[i2]);
        }
        return initial;
    }

    public final <R> R foldIndexed(R initial, u74 operation) {
        y45.j(operation, "operation");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            initial = (R) operation.invoke(Integer.valueOf(i2), initial, objArr[i2]);
        }
        return initial;
    }

    public final <R> R foldRight(R initial, s74 operation) {
        y45.j(operation, "operation");
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return initial;
            }
            initial = (R) operation.invoke(objArr[i], initial);
        }
    }

    public final <R> R foldRightIndexed(R initial, u74 operation) {
        y45.j(operation, "operation");
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return initial;
            }
            initial = (R) operation.invoke(Integer.valueOf(i), objArr[i], initial);
        }
    }

    public final void forEach(e74 block) {
        y45.j(block, "block");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            block.invoke(objArr[i2]);
        }
    }

    public final void forEachIndexed(s74 block) {
        y45.j(block, "block");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            block.invoke(Integer.valueOf(i2), objArr[i2]);
        }
    }

    public final void forEachReversed(e74 block) {
        y45.j(block, "block");
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                block.invoke(objArr[i]);
            }
        }
    }

    public final void forEachReversedIndexed(s74 block) {
        y45.j(block, "block");
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                block.invoke(Integer.valueOf(i), objArr[i]);
            }
        }
    }

    public final E get(@IntRange(from = 0) int index) {
        if (index >= 0 && index < this._size) {
            return (E) this.content[index];
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
        Object[] objArr = this.content;
        int i = this._size;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[i2];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(E element) {
        int i = 0;
        if (element == null) {
            Object[] objArr = this.content;
            int i2 = this._size;
            while (i < i2) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        Object[] objArr2 = this.content;
        int i3 = this._size;
        while (i < i3) {
            if (element.equals(objArr2[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final int indexOfFirst(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) predicate.invoke(objArr[i2])).booleanValue()) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfLast(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!((Boolean) predicate.invoke(objArr[i])).booleanValue());
        return i;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[this._size - 1];
    }

    public final int lastIndexOf(E element) {
        if (element == null) {
            Object[] objArr = this.content;
            for (int i = this._size - 1; -1 < i; i--) {
                if (objArr[i] == null) {
                    return i;
                }
            }
        } else {
            Object[] objArr2 = this.content;
            for (int i2 = this._size - 1; -1 < i2; i2--) {
                if (element.equals(objArr2[i2])) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.content[this._size - 1];
    }

    public final boolean none() {
        return isEmpty();
    }

    public final boolean reversedAny(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        for (int i = this._size - 1; -1 < i; i--) {
            if (((Boolean) predicate.invoke(objArr[i])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new e74(this) {
            final ObjectList<E> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override
            public final CharSequence invoke(E e) {
                return e == this.this$0 ? "(this)" : String.valueOf(e);
            }
        }, 25, null);
    }

    private ObjectList(int i) {
        this.content = i == 0 ? ObjectListKt.EmptyArray : new Object[i];
    }

    public final boolean any(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) predicate.invoke(objArr[i2])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int count(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (((Boolean) predicate.invoke(objArr[i3])).booleanValue()) {
                i2++;
            }
        }
        return i2;
    }

    public final E firstOrNull(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            E e = (E) objArr[i2];
            if (((Boolean) predicate.invoke(e)).booleanValue()) {
                return e;
            }
        }
        return null;
    }

    public final String joinToString(CharSequence charSequence) {
        y45.j(charSequence, "separator");
        return joinToString$default(this, charSequence, null, null, 0, null, null, 62, null);
    }

    public final boolean containsAll(List<? extends E> elements) {
        y45.j(elements, "elements");
        int size = elements.size();
        for (int i = 0; i < size; i++) {
            if (!contains(elements.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, null, 60, null);
    }

    public final E lastOrNull(e74 predicate) {
        E e;
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return null;
            }
            e = (E) objArr[i];
        } while (!((Boolean) predicate.invoke(e)).booleanValue());
        return e;
    }

    public final E first(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            E e = (E) objArr[i2];
            if (((Boolean) predicate.invoke(e)).booleanValue()) {
                return e;
            }
        }
        throw new NoSuchElementException("ObjectList contains no element matching the predicate.");
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, null, 56, null);
    }

    public final boolean containsAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, null, 48, null);
    }

    public final E last(e74 predicate) {
        E e;
        y45.j(predicate, "predicate");
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 < i) {
                e = (E) objArr[i];
            } else {
                throw new NoSuchElementException("ObjectList contains no element matching the predicate.");
            }
        } while (!((Boolean) predicate.invoke(e)).booleanValue());
        return e;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, charSequence4, null, 32, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean containsAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!contains(objArr[i2])) {
                return false;
            }
        }
        return true;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, e74 transform) {
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[i2];
            if (i2 == limit) {
                sb.append(truncated);
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i2 != 0) {
                sb.append(separator);
            }
            if (transform == null) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) transform.invoke(obj));
            }
        }
        sb.append(postfix);
        String string2 = sb.toString();
        y45.i(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }
}
