package com.mgtv.task;

public class l<ResultType> {
    public ResultType a;
    public boolean b;
    public boolean c;
    public Object d;
    public Throwable e;

    public l(ResultType resulttype) {
        this.a = resulttype;
    }

    public l(ResultType resulttype, boolean z, boolean z2, Object obj) {
        this.a = resulttype;
        this.b = z;
        this.c = z2;
        this.d = obj;
    }

    public l(ResultType resulttype, boolean z, boolean z2, Object obj, Throwable th) {
        this.a = resulttype;
        this.b = z;
        this.c = z2;
        this.d = obj;
        this.e = th;
    }
}
