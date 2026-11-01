package q;

import java.nio.ByteBuffer;

public final class j {

    public String f1357a;

    public final short f1358b;

    public e.c f1359c;

    public ByteBuffer f1360d;

    public long[] f1361e;

    public e.c f1362f;

    public final int f1363g;

    public j(k kVar) {
        this.f1358b = (short) (kVar.f1364d & 255);
        this.f1363g = kVar.f1367g.f1339a & 65535;
    }

    public final d a(int i2) {
        long[] jArr = this.f1361e;
        if (i2 >= jArr.length) {
            return null;
        }
        long j2 = jArr[i2];
        if (j2 == 4294967295L) {
            return null;
        }
        a0.c.R(this.f1360d, j2);
        long jPosition = this.f1360d.position();
        d dVar = new d();
        dVar.f1340a = a0.c.W(this.f1360d);
        dVar.f1341b = a0.c.W(this.f1360d);
        dVar.f1342c = this.f1359c.f(this.f1360d.getInt());
        if ((dVar.f1341b & 1) == 0) {
            a0.c.R(this.f1360d, jPosition + ((long) dVar.f1340a));
            dVar.f1343d = s.b.a(this.f1360d, this.f1362f);
            return dVar;
        }
        e eVar = new e(dVar);
        eVar.f1344e = a0.c.V(this.f1360d);
        eVar.f1345f = a0.c.V(this.f1360d);
        a0.c.R(this.f1360d, jPosition + ((long) dVar.f1340a));
        i[] iVarArr = new i[(int) eVar.f1345f];
        for (int i3 = 0; i3 < eVar.f1345f; i3++) {
            i iVar = new i();
            a0.c.V(this.f1360d);
            s.b.a(this.f1360d, this.f1362f);
            iVarArr[i3] = iVar;
        }
        eVar.f1346g = iVarArr;
        return eVar;
    }

    public final String toString() {
        return "Type{name='" + this.f1357a + "', id=" + ((int) this.f1358b) + '}';
    }
}
