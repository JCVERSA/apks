package defpackage;

public final class tie implements Comparable {
    public final int b;
    public final pie c;

    public tie(int i, pie pieVar) {
        this.b = i;
        this.c = pieVar;
    }

    @Override
    public final int compareTo(Object obj) {
        return Integer.compare(this.b, ((tie) obj).b);
    }
}
