package androidx.collection;

import androidx.annotation.IntRange;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.fi;
import defpackage.hi;
import defpackage.y45;
import java.util.Arrays;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b!\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\f2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\rJ\u001f\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b\u0010\u0010\u0012J\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b\u0010\u0010\u0013J\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0017J\r\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u001a\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u0015\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\n¢\u0006\u0004\b\u0015\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\n¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010 \u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b \u0010\nJ\u0015\u0010!\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b!\u0010\u0014J\u0015\u0010!\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b!\u0010\u0013J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086\u0002¢\u0006\u0004\b\u001f\u0010\u0017J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u001f\u0010\u0016J\u0017\u0010\"\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010#J!\u0010&\u001a\u00020\f2\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010%\u001a\u00020\u0002¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b(\u0010\u0014J\u0015\u0010(\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b(\u0010\u0013J\"\u0010)\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\f¢\u0006\u0004\b+\u0010\u0019J\r\u0010,\u001a\u00020\f¢\u0006\u0004\b,\u0010\u0019R\u0012\u0010\u001c\u001a\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Landroidx/collection/MutableLongList;", "Landroidx/collection/LongList;", "", "initialCapacity", MethodDecl.initName, "(I)V", "", "element", "", "add", "(J)Z", "index", "Lzfb;", "(IJ)V", "", "elements", "addAll", "(I[J)Z", "(ILandroidx/collection/LongList;)Z", "(Landroidx/collection/LongList;)Z", "([J)Z", "plusAssign", "(Landroidx/collection/LongList;)V", "([J)V", "clear", "()V", "minCapacity", "trim", "capacity", "ensureCapacity", "(J)V", "minusAssign", "remove", "removeAll", "removeAt", "(I)J", TtmlNode.START, TtmlNode.END, "removeRange", "(II)V", "retainAll", "set", "(IJ)J", "sort", "sortDescending", "getCapacity", "()I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableLongList extends LongList {
    public MutableLongList() {
        this(0, 1, null);
    }

    public static void trim$default(MutableLongList mutableLongList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableLongList._size;
        }
        mutableLongList.trim(i);
    }

    public final boolean add(long element) {
        ensureCapacity(this._size + 1);
        long[] jArr = this.content;
        int i = this._size;
        jArr[i] = element;
        this._size = i + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int index, long[] elements) {
        int i;
        y45.j(elements, "elements");
        if (index < 0 || index > (i = this._size)) {
            throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(i + elements.length);
        long[] jArr = this.content;
        int i2 = this._size;
        if (index != i2) {
            fi.k(jArr, jArr, elements.length + index, index, i2);
        }
        fi.p(elements, jArr, index, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        long[] jArr = this.content;
        if (jArr.length < capacity) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, Math.max(capacity, (jArr.length * 3) / 2));
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.content = jArrCopyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(long element) {
        remove(element);
    }

    public final void plusAssign(LongList elements) {
        y45.j(elements, "elements");
        addAll(this._size, elements);
    }

    public final boolean remove(long element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(long[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        for (long j : elements) {
            remove(j);
        }
        return i != this._size;
    }

    public final long removeAt(@IntRange(from = 0) int index) {
        int i;
        if (index < 0 || index >= (i = this._size)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Index ");
            sb.append(index);
            sb.append(" must be in 0..");
            sb.append(this._size - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        long[] jArr = this.content;
        long j = jArr[index];
        if (index != i - 1) {
            fi.k(jArr, jArr, index, index + 1, i);
        }
        this._size--;
        return j;
    }

    public final void removeRange(@IntRange(from = 0) int start, @IntRange(from = 0) int end) {
        int i;
        if (start < 0 || start > (i = this._size) || end < 0 || end > i) {
            throw new IndexOutOfBoundsException("Start (" + start + ") and end (" + end + ") must be in 0.." + this._size);
        }
        if (end >= start) {
            if (end != start) {
                if (end < i) {
                    long[] jArr = this.content;
                    fi.k(jArr, jArr, start, end, i);
                }
                this._size -= end - start;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Start (" + start + ") is more than end (" + end + ')');
    }

    public final boolean retainAll(long[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        long[] jArr = this.content;
        int i2 = i - 1;
        while (true) {
            int i3 = -1;
            if (-1 >= i2) {
                break;
            }
            long j = jArr[i2];
            int length = elements.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (elements[i4] == j) {
                    i3 = i4;
                    break;
                }
            }
            if (i3 < 0) {
                removeAt(i2);
            }
            i2--;
        }
        return i != this._size;
    }

    public final long set(@IntRange(from = 0) int index, long element) {
        if (index >= 0 && index < this._size) {
            long[] jArr = this.content;
            long j = jArr[index];
            jArr[index] = element;
            return j;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(index);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void sort() {
        fi.E(this.content, 0, this._size);
    }

    public final void sortDescending() {
        hi.J0(this.content, 0, this._size);
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        long[] jArr = this.content;
        if (jArr.length > iMax) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.content = jArrCopyOf;
        }
    }

    public MutableLongList(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public final void minusAssign(long[] elements) {
        y45.j(elements, "elements");
        for (long j : elements) {
            remove(j);
        }
    }

    public final void plusAssign(long[] elements) {
        y45.j(elements, "elements");
        addAll(this._size, elements);
    }

    public MutableLongList(int i) {
        super(i, null);
    }

    public final void plusAssign(long element) {
        add(element);
    }

    public final void add(@IntRange(from = 0) int index, long element) {
        int i;
        if (index >= 0 && index <= (i = this._size)) {
            ensureCapacity(i + 1);
            long[] jArr = this.content;
            int i2 = this._size;
            if (index != i2) {
                fi.k(jArr, jArr, index + 1, index, i2);
            }
            jArr[index] = element;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final void minusAssign(LongList elements) {
        y45.j(elements, "elements");
        long[] jArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(jArr[i2]);
        }
    }

    public final boolean removeAll(LongList elements) {
        y45.j(elements, "elements");
        int i = this._size;
        int i2 = elements._size - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                remove(elements.get(i3));
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        return i != this._size;
    }

    public final boolean retainAll(LongList elements) {
        y45.j(elements, "elements");
        int i = this._size;
        long[] jArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!elements.contains(jArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int index, LongList elements) {
        y45.j(elements, "elements");
        if (index >= 0 && index <= this._size) {
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements._size);
            long[] jArr = this.content;
            int i = this._size;
            if (index != i) {
                fi.k(jArr, jArr, elements._size + index, index, i);
            }
            fi.k(elements.content, jArr, index, 0, elements._size);
            this._size += elements._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final boolean addAll(LongList elements) {
        y45.j(elements, "elements");
        return addAll(this._size, elements);
    }

    public final boolean addAll(long[] elements) {
        y45.j(elements, "elements");
        return addAll(this._size, elements);
    }
}
