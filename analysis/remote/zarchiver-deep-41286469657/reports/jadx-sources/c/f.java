package c;

import java.util.ArrayList;

public final class f {

    public int f363a;

    public int f364b;

    public int f365c;

    public int f366d;

    public final ArrayList<a> f367e = new ArrayList<>();

    public static class a {

        public b f368a;

        public b f369b;

        public int f370c;

        public int f371d;

        public int f372e;

        public a(b bVar) {
            this.f368a = bVar;
            this.f369b = bVar.f321c;
            this.f370c = bVar.b();
            this.f371d = bVar.f324f;
            this.f372e = bVar.f326h;
        }
    }

    public f(g gVar) {
        this.f363a = gVar.f354r;
        this.f364b = gVar.f355s;
        this.f365c = gVar.e();
        this.f366d = gVar.d();
        ArrayList<b> arrayList = gVar.f348l;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f367e.add(new a(arrayList.get(i2)));
        }
    }
}
