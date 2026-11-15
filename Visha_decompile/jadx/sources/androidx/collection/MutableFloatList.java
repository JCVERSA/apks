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

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b!\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\f2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\rJ\u001f\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b\u0010\u0010\u0012J\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b\u0010\u0010\u0013J\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0017J\r\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u001a\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u0015\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\n¢\u0006\u0004\b\u0015\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\n¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010 \u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b \u0010\nJ\u0015\u0010!\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b!\u0010\u0014J\u0015\u0010!\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b!\u0010\u0013J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086\u0002¢\u0006\u0004\b\u001f\u0010\u0017J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u001f\u0010\u0016J\u0017\u0010\"\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\"\u0010#J!\u0010&\u001a\u00020\f2\b\b\u0001\u0010$\u001a\u00020\u00022\b\b\u0001\u0010%\u001a\u00020\u0002¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b(\u0010\u0014J\u0015\u0010(\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001¢\u0006\u0004\b(\u0010\u0013J\"\u0010)\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\f¢\u0006\u0004\b+\u0010\u0019J\r\u0010,\u001a\u00020\f¢\u0006\u0004\b,\u0010\u0019R\u0012\u0010\u001c\u001a\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Landroidx/collection/MutableFloatList;", "Landroidx/collection/FloatList;", "", "initialCapacity", MethodDecl.initName, "(I)V", "", "element", "", "add", "(F)Z", "index", "Lzfb;", "(IF)V", "", "elements", "addAll", "(I[F)Z", "(ILandroidx/collection/FloatList;)Z", "(Landroidx/collection/FloatList;)Z", "([F)Z", "plusAssign", "(Landroidx/collection/FloatList;)V", "([F)V", "clear", "()V", "minCapacity", "trim", "capacity", "ensureCapacity", "(F)V", "minusAssign", "remove", "removeAll", "removeAt", "(I)F", TtmlNode.START, TtmlNode.END, "removeRange", "(II)V", "retainAll", "set", "(IF)F", "sort", "sortDescending", "getCapacity", "()I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableFloatList extends FloatList {
    public MutableFloatList() {
        this(0, 1, null);
    }

    public static void trim$default(MutableFloatList mutableFloatList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableFloatList._size;
        }
        mutableFloatList.trim(i);
    }

    public final boolean add(float element) {
        ensureCapacity(this._size + 1);
        float[] fArr = this.content;
        int i = this._size;
        fArr[i] = element;
        this._size = i + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int index, float[] elements) {
        int i;
        y45.j(elements, "elements");
        if (index < 0 || index > (i = this._size)) {
            throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(i + elements.length);
        float[] fArr = this.content;
        int i2 = this._size;
        if (index != i2) {
            fi.i(fArr, fArr, elements.length + index, index, i2);
        }
        fi.n(elements, fArr, index, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        float[] fArr = this.content;
        if (fArr.length < capacity) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, Math.max(capacity, (fArr.length * 3) / 2));
            y45.i(fArrCopyOf, "copyOf(this, newSize)");
            this.content = fArrCopyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(float element) {
        remove(element);
    }

    public final void plusAssign(FloatList elements) {
        y45.j(elements, "elements");
        addAll(this._size, elements);
    }

    public final boolean remove(float element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(float[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        for (float f : elements) {
            remove(f);
        }
        return i != this._size;
    }

    public final float removeAt(@IntRange(from = 0) int index) {
        int i;
        if (index < 0 || index >= (i = this._size)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Index ");
            sb.append(index);
            sb.append(" must be in 0..");
            sb.append(this._size - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        float[] fArr = this.content;
        float f = fArr[index];
        if (index != i - 1) {
            fi.i(fArr, fArr, index, index + 1, i);
        }
        this._size--;
        return f;
    }

    public final void removeRange(@IntRange(from = 0) int start, @IntRange(from = 0) int end) {
        int i;
        if (start < 0 || start > (i = this._size) || end < 0 || end > i) {
            throw new IndexOutOfBoundsException("Start (" + start + ") and end (" + end + ") must be in 0.." + this._size);
        }
        if (end >= start) {
            if (end != start) {
                if (end < i) {
                    float[] fArr = this.content;
                    fi.i(fArr, fArr, start, end, i);
                }
                this._size -= end - start;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Start (" + start + ") is more than end (" + end + ')');
    }

    public final boolean retainAll(float[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        float[] fArr = this.content;
        int i2 = i - 1;
        while (true) {
            int i3 = -1;
            if (-1 >= i2) {
                break;
            }
            float f = fArr[i2];
            int length = elements.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (elements[i4] == f) {
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

    public final float set(@IntRange(from = 0) int index, float element) {
        if (index >= 0 && index < this._size) {
            float[] fArr = this.content;
            float f = fArr[index];
            fArr[index] = element;
            return f;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(index);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void sort() {
        fi.C(this.content, 0, this._size);
    }

    public final void sortDescending() {
        hi.H0(this.content, 0, this._size);
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        float[] fArr = this.content;
        if (fArr.length > iMax) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, iMax);
            y45.i(fArrCopyOf, "copyOf(this, newSize)");
            this.content = fArrCopyOf;
        }
    }

    public MutableFloatList(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public final void minusAssign(float[] elements) {
        y45.j(elements, "elements");
        for (float f : elements) {
            remove(f);
        }
    }

    public final void plusAssign(float[] elements) {
        y45.j(elements, "elements");
        addAll(this._size, elements);
    }

    public MutableFloatList(int i) {
        super(i, null);
    }

    public final void plusAssign(float element) {
        add(element);
    }

    public final void add(@IntRange(from = 0) int index, float element) {
        int i;
        if (index >= 0 && index <= (i = this._size)) {
            ensureCapacity(i + 1);
            float[] fArr = this.content;
            int i2 = this._size;
            if (index != i2) {
                fi.i(fArr, fArr, index + 1, index, i2);
            }
            fArr[index] = element;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final void minusAssign(FloatList elements) {
        y45.j(elements, "elements");
        float[] fArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(fArr[i2]);
        }
    }

    public final boolean removeAll(FloatList elements) {
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

    public final boolean retainAll(FloatList elements) {
        y45.j(elements, "elements");
        int i = this._size;
        float[] fArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!elements.contains(fArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean addAll(@IntRange(from = 0) int index, FloatList elements) {
        y45.j(elements, "elements");
        if (index >= 0 && index <= this._size) {
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements._size);
            float[] fArr = this.content;
            int i = this._size;
            if (index != i) {
                fi.i(fArr, fArr, elements._size + index, index, i);
            }
            fi.i(elements.content, fArr, index, 0, elements._size);
            this._size += elements._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final boolean addAll(FloatList elements) {
        y45.j(elements, "elements");
        return addAll(this._size, elements);
    }

    public final boolean addAll(float[] elements) {
        y45.j(elements, "elements");
        return addAll(this._size, elements);
    }
}
