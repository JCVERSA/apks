package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public abstract class yz4 implements j81 {
    public final List a;
    public final List b;
    public final int c;
    public final Comparator d;

    public yz4(int i) {
        this(i, null);
    }

    public void b(Exception exc) {
        this.b.add(exc);
    }

    public void c(InfoItem infoItem) {
        this.a.add(infoItem);
    }

    public void d(xz4 xz4Var) {
        try {
            c((InfoItem) a(xz4Var));
        } catch (FoundAdException unused) {
        } catch (ParsingException e) {
            b(e);
        }
    }

    public List e() {
        return Collections.unmodifiableList(this.b);
    }

    public List f() {
        Comparator comparator = this.d;
        if (comparator != null) {
            this.a.sort(comparator);
        }
        return Collections.unmodifiableList(this.a);
    }

    public int g() {
        return this.c;
    }

    public yz4(int i, Comparator comparator) {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = i;
        this.d = comparator;
    }
}
