package p4;

import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

public class h {

    private final List f69030a;

    private final List f69031b;

    private final List f69032c;

    public h(List list) {
        this.f69032c = list;
        this.f69030a = new ArrayList(list.size());
        this.f69031b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f69030a.add(((Mask) list.get(i10)).b().a());
            this.f69031b.add(((Mask) list.get(i10)).c().a());
        }
    }

    public List a() {
        return this.f69030a;
    }

    public List b() {
        return this.f69032c;
    }

    public List c() {
        return this.f69031b;
    }
}
