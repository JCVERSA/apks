package mz;

import java.io.File;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class d implements Iterator {

    private File f66837a;

    private String[] f66838b;

    private int f66839c;

    public d() {
        this.f66839c = 0;
    }

    public void a(String[] strArr) {
        String[] strArr2 = this.f66838b;
        int length = strArr2 == null ? 0 : strArr2.length;
        String[] strArr3 = new String[strArr.length + length];
        if (length > 0) {
            System.arraycopy(strArr2, 0, strArr3, 0, length);
        }
        this.f66838b = strArr3;
        System.arraycopy(strArr, 0, strArr3, length, strArr.length);
    }

    public c b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        File file = this.f66837a;
        String[] strArr = this.f66838b;
        int i10 = this.f66839c;
        this.f66839c = i10 + 1;
        return new c(file, strArr[i10]);
    }

    @Override
    public boolean hasNext() {
        return this.f66839c < this.f66838b.length;
    }

    @Override
    public Object next() {
        return b();
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public d(File file) {
        this.f66839c = 0;
        this.f66837a = file;
    }

    public d(File file, String[] strArr) {
        this(file);
        a(strArr);
    }
}
