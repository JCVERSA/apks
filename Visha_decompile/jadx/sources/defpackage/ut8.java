package defpackage;

import java.util.Arrays;
import org.mozilla.javascript.Wrapper;

public class ut8 {
    public final Class[] a;
    public final int b;

    public ut8(Object[] objArr, int i) {
        this.b = i;
        this.a = new Class[objArr.length];
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Object objUnwrap = objArr[i2];
            objUnwrap = objUnwrap instanceof Wrapper ? ((Wrapper) objUnwrap).unwrap() : objUnwrap;
            this.a[i2] = objUnwrap == null ? null : objUnwrap.getClass();
        }
    }

    public boolean a(Object[] objArr) {
        if (objArr.length != this.a.length) {
            return false;
        }
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object objUnwrap = objArr[i];
            if (objUnwrap instanceof Wrapper) {
                objUnwrap = ((Wrapper) objUnwrap).unwrap();
            }
            if (objUnwrap == null) {
                if (this.a[i] != null) {
                    return false;
                }
            } else if (objUnwrap.getClass() != this.a[i]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ut8)) {
            return false;
        }
        ut8 ut8Var = (ut8) obj;
        return Arrays.equals(this.a, ut8Var.a) && this.b == ut8Var.b;
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }
}
