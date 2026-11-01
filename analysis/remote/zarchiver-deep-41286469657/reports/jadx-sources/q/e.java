package q;

import java.util.Arrays;
import java.util.Locale;

public final class e extends d {

    public long f1344e;

    public long f1345f;

    public i[] f1346g;

    public e(d dVar) {
        this.f1340a = dVar.f1340a;
        this.f1341b = dVar.f1341b;
        this.f1342c = dVar.f1342c;
    }

    @Override
    public final String a(g gVar, Locale locale) {
        i[] iVarArr = this.f1346g;
        if (iVarArr.length > 0) {
            iVarArr[0].getClass();
        }
        return null;
    }

    @Override
    public final String toString() {
        return "ResourceMapEntry{parent=" + this.f1344e + ", count=" + this.f1345f + ", resourceTableMaps=" + Arrays.toString(this.f1346g) + '}';
    }
}
