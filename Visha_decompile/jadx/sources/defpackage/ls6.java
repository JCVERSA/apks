package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.playlist.c;

public class ls6 extends yz4 {
    public final qy9 e;
    public final au0 f;
    public final c g;

    public ls6(int i) {
        super(i);
        this.e = new qy9(i);
        this.f = new au0(i);
        this.g = new c(i);
    }

    @Override
    public List e() {
        ArrayList arrayList = new ArrayList(super.e());
        arrayList.addAll(this.e.e());
        arrayList.addAll(this.f.e());
        arrayList.addAll(this.g.e());
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public InfoItem a(xz4 xz4Var) {
        if (xz4Var instanceof py9) {
            return this.e.a((py9) xz4Var);
        }
        if (xz4Var instanceof zt0) {
            return this.f.a((zt0) xz4Var);
        }
        if (xz4Var instanceof b) {
            return this.g.a((b) xz4Var);
        }
        throw new IllegalArgumentException("Invalid extractor type: " + xz4Var);
    }
}
