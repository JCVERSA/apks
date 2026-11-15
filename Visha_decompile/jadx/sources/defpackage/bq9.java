package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import javassist.compiler.ast.MethodDecl;

public class bq9 extends AbstractList implements RandomAccess {
    public int b;
    public Object c;

    public static class b implements Iterator {
        public static final b b = new b();

        public static b a() {
            return b;
        }

        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            throw new IllegalStateException();
        }
    }

    public class c extends d {
        public final int c;

        public c() {
            super();
            this.c = ((AbstractList) bq9.this).modCount;
        }

        @Override
        public void a() {
            if (((AbstractList) bq9.this).modCount == this.c) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + ((AbstractList) bq9.this).modCount + "; expected: " + this.c);
        }

        @Override
        public Object b() {
            return bq9.this.c;
        }

        @Override
        public void remove() {
            a();
            bq9.this.clear();
        }
    }

    public static abstract class d implements Iterator {
        public boolean b;

        public d() {
        }

        public abstract void a();

        public abstract Object b();

        @Override
        public final boolean hasNext() {
            return !this.b;
        }

        @Override
        public final Object next() {
            if (this.b) {
                throw new NoSuchElementException();
            }
            this.b = true;
            a();
            return b();
        }
    }

    public static void b(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = CmcdData.OBJECT_TYPE_AUDIO_ONLY;
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (i == 2 || i == 3) {
            objArr[1] = "iterator";
        } else if (i == 5 || i == 6 || i == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public boolean add(Object obj) {
        int i = this.b;
        if (i == 0) {
            this.c = obj;
        } else if (i == 1) {
            this.c = new Object[]{this.c, obj};
        } else {
            Object[] objArr = (Object[]) this.c;
            int length = objArr.length;
            if (i >= length) {
                int i2 = ((length * 3) / 2) + 1;
                int i3 = i + 1;
                if (i2 < i3) {
                    i2 = i3;
                }
                Object[] objArr2 = new Object[i2];
                this.c = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
                objArr = objArr2;
            }
            objArr[this.b] = obj;
        }
        this.b++;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override
    public void clear() {
        this.c = null;
        this.b = 0;
        ((AbstractList) this).modCount++;
    }

    @Override
    public Object get(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.b)) {
            return i2 == 1 ? this.c : ((Object[]) this.c)[i];
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.b);
    }

    @Override
    public Iterator iterator() {
        int i = this.b;
        if (i == 0) {
            b bVarA = b.a();
            if (bVarA == null) {
                b(2);
            }
            return bVarA;
        }
        if (i == 1) {
            return new c();
        }
        Iterator it = super.iterator();
        if (it == null) {
            b(3);
        }
        return it;
    }

    @Override
    public Object remove(int i) {
        int i2;
        Object obj;
        if (i < 0 || i >= (i2 = this.b)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.b);
        }
        if (i2 == 1) {
            obj = this.c;
            this.c = null;
        } else {
            Object[] objArr = (Object[]) this.c;
            Object obj2 = objArr[i];
            if (i2 == 2) {
                this.c = objArr[1 - i];
            } else {
                int i3 = (i2 - i) - 1;
                if (i3 > 0) {
                    System.arraycopy(objArr, i + 1, objArr, i, i3);
                }
                objArr[this.b - 1] = null;
            }
            obj = obj2;
        }
        this.b--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override
    public Object set(int i, Object obj) {
        int i2;
        if (i < 0 || i >= (i2 = this.b)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.b);
        }
        if (i2 == 1) {
            Object obj2 = this.c;
            this.c = obj;
            return obj2;
        }
        Object[] objArr = (Object[]) this.c;
        Object obj3 = objArr[i];
        objArr[i] = obj;
        return obj3;
    }

    @Override
    public int size() {
        return this.b;
    }

    @Override
    public void sort(Comparator comparator) {
        int i = this.b;
        if (i >= 2) {
            Arrays.sort((Object[]) this.c, 0, i, comparator);
        }
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        if (objArr == null) {
            b(4);
        }
        int length = objArr.length;
        int i = this.b;
        if (i == 1) {
            if (length == 0) {
                Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), 1);
                objArr2[0] = this.c;
                return objArr2;
            }
            objArr[0] = this.c;
        } else {
            if (length < i) {
                Object[] objArrCopyOf = Arrays.copyOf((Object[]) this.c, i, objArr.getClass());
                if (objArrCopyOf == null) {
                    b(6);
                }
                return objArrCopyOf;
            }
            if (i != 0) {
                System.arraycopy(this.c, 0, objArr, 0, i);
            }
        }
        int i2 = this.b;
        if (length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override
    public void add(int i, Object obj) {
        int i2;
        if (i >= 0 && i <= (i2 = this.b)) {
            if (i2 == 0) {
                this.c = obj;
            } else if (i2 == 1 && i == 0) {
                this.c = new Object[]{obj, this.c};
            } else {
                Object[] objArr = new Object[i2 + 1];
                if (i2 == 1) {
                    objArr[0] = this.c;
                } else {
                    Object[] objArr2 = (Object[]) this.c;
                    System.arraycopy(objArr2, 0, objArr, 0, i);
                    System.arraycopy(objArr2, i, objArr, i + 1, this.b - i);
                }
                objArr[i] = obj;
                this.c = objArr;
            }
            this.b++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.b);
    }
}
