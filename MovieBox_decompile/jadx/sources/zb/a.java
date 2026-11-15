package zb;

public class a implements d {

    private final int f76758a;

    private final d[] f76759b;

    private final b f76760c;

    public a(int i10, d... dVarArr) {
        this.f76758a = i10;
        this.f76759b = dVarArr;
        this.f76760c = new b(i10);
    }

    @Override
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.f76758a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (d dVar : this.f76759b) {
            if (stackTraceElementArrA.length <= this.f76758a) {
                break;
            }
            stackTraceElementArrA = dVar.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > this.f76758a ? this.f76760c.a(stackTraceElementArrA) : stackTraceElementArrA;
    }
}
