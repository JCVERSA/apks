package defpackage;

public abstract class wyh {
    public static final wyh a;

    static {
        myh myhVar = new myh();
        myhVar.e("");
        myhVar.a(false);
        myhVar.c(1);
        myhVar.d(1);
        a = myhVar.b();
        myh myhVar2 = new myh();
        myhVar2.e("");
        myhVar2.a(false);
        myhVar2.c(4);
        myhVar2.d(1);
        myhVar2.b();
        myh myhVar3 = new myh();
        myhVar3.e("");
        myhVar3.a(false);
        myhVar3.c(2);
        myhVar3.d(1);
        myhVar3.b();
    }

    public abstract kyh a();

    public abstract lyh b();

    public abstract String c();

    public abstract boolean d();

    public abstract int e();

    public abstract int f();
}
