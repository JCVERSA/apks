package defpackage;

public final class hii implements t8i {
    public ixi b;
    public String c;
    public boolean f;
    public final ssi a = new ssi();
    public int d = 8000;
    public int e = 8000;

    public final hii a(boolean z) {
        this.f = true;
        return this;
    }

    public final hii b(int i) {
        this.d = i;
        return this;
    }

    public final hii c(int i) {
        this.e = i;
        return this;
    }

    public final hii d(ixi ixiVar) {
        this.b = ixiVar;
        return this;
    }

    public final hii e(String str) {
        this.c = str;
        return this;
    }

    @Override
    public final jni zza() {
        jni jniVar = new jni(this.c, this.d, this.e, this.f, false, this.a, null, false, null);
        ixi ixiVar = this.b;
        if (ixiVar != null) {
            jniVar.c(ixiVar);
        }
        return jniVar;
    }
}
