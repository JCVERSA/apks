package com.alibaba.fastjson.util;

public class g {

    private final a[] f17619a;

    private final int f17620b;

    protected static final class a {

        public final int f17621a;

        public final Object f17622b;

        public Object f17623c;

        public final a f17624d;

        public a(Object obj, Object obj2, int i10, a aVar) {
            this.f17622b = obj;
            this.f17623c = obj2;
            this.f17624d = aVar;
            this.f17621a = i10;
        }
    }

    public g() {
        this(8192);
    }

    public Class a(String str) {
        int i10 = 0;
        while (true) {
            a[] aVarArr = this.f17619a;
            if (i10 >= aVarArr.length) {
                return null;
            }
            a aVar = aVarArr[i10];
            if (aVar != null) {
                for (a aVar2 = aVar; aVar2 != null; aVar2 = aVar2.f17624d) {
                    Object obj = aVar.f17622b;
                    if (obj instanceof Class) {
                        Class cls = (Class) obj;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i10++;
        }
    }

    public final Object b(Object obj) {
        for (a aVar = this.f17619a[System.identityHashCode(obj) & this.f17620b]; aVar != null; aVar = aVar.f17624d) {
            if (obj == aVar.f17622b) {
                return aVar.f17623c;
            }
        }
        return null;
    }

    public boolean c(Object obj, Object obj2) {
        int iIdentityHashCode = System.identityHashCode(obj);
        int i10 = this.f17620b & iIdentityHashCode;
        for (a aVar = this.f17619a[i10]; aVar != null; aVar = aVar.f17624d) {
            if (obj == aVar.f17622b) {
                aVar.f17623c = obj2;
                return true;
            }
        }
        this.f17619a[i10] = new a(obj, obj2, iIdentityHashCode, this.f17619a[i10]);
        return false;
    }

    public g(int i10) {
        this.f17620b = i10 - 1;
        this.f17619a = new a[i10];
    }
}
