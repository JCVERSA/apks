package defpackage;

import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

public class w16 {
    public final List a;
    public final List b;
    public final List c;

    public w16(List list) {
        this.c = list;
        this.a = new ArrayList(list.size());
        this.b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.a.add(((Mask) list.get(i)).b().h());
            this.b.add(((Mask) list.get(i)).c().h());
        }
    }

    public List a() {
        return this.a;
    }

    public List b() {
        return this.c;
    }

    public List c() {
        return this.b;
    }
}
