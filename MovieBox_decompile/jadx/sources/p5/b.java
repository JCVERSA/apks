package p5;

public class b implements o7.a {

    private int f69074a;

    private int f69075b;

    public b(int i10, int i11) {
        this.f69074a = i10;
        this.f69075b = i11;
    }

    @Override
    public int a() {
        return (this.f69075b - this.f69074a) + 1;
    }

    @Override
    public Object getItem(int i10) {
        if (i10 < 0 || i10 >= a()) {
            return 0;
        }
        return Integer.valueOf(this.f69074a + i10);
    }
}
