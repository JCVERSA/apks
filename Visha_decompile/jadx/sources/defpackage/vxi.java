package defpackage;

import java.util.Iterator;
import java.util.List;

public final class vxi implements Iterator {
    public int b = 0;
    public final wxi c;

    public vxi(wxi wxiVar) {
        this.c = wxiVar;
    }

    @Override
    public final boolean hasNext() {
        int i = this.b;
        wxi wxiVar = this.c;
        return i < wxiVar.b.size() || wxiVar.c.hasNext();
    }

    @Override
    public final Object next() {
        int i = this.b;
        wxi wxiVar = this.c;
        List list = wxiVar.b;
        if (i >= list.size()) {
            list.add(wxiVar.c.next());
            return next();
        }
        int i2 = this.b;
        this.b = i2 + 1;
        return list.get(i2);
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
