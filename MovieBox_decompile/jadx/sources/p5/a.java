package p5;

import java.util.List;

public class a implements o7.a {

    private List f69073a;

    public a(List list) {
        this.f69073a = list;
    }

    @Override
    public int a() {
        return this.f69073a.size();
    }

    @Override
    public Object getItem(int i10) {
        return (i10 < 0 || i10 >= this.f69073a.size()) ? "" : this.f69073a.get(i10);
    }
}
