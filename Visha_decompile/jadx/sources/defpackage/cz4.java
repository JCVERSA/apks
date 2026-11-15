package defpackage;

import com.lzy.okgo.model.Progress;

public final class cz4 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final String e;
    public final xw0 f;

    public cz4(Object obj, Object obj2, Object obj3, Object obj4, String str, xw0 xw0Var) {
        y45.j(str, Progress.FILE_PATH);
        y45.j(xw0Var, "classId");
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
        this.e = str;
        this.f = xw0Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cz4)) {
            return false;
        }
        cz4 cz4Var = (cz4) obj;
        return y45.e(this.a, cz4Var.a) && y45.e(this.b, cz4Var.b) && y45.e(this.c, cz4Var.c) && y45.e(this.d, cz4Var.d) && y45.e(this.e, cz4Var.e) && y45.e(this.f, cz4Var.f);
    }

    public int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.c;
        int iHashCode3 = (iHashCode2 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        Object obj4 = this.d;
        return ((((iHashCode3 + (obj4 != null ? obj4.hashCode() : 0)) * 31) + this.e.hashCode()) * 31) + this.f.hashCode();
    }

    public String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.a + ", compilerVersion=" + this.b + ", languageVersion=" + this.c + ", expectedVersion=" + this.d + ", filePath=" + this.e + ", classId=" + this.f + ')';
    }
}
