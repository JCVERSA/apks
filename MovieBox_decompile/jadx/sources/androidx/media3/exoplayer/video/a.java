package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;

final class a {

    private ObuParser.d f12762a;

    a() {
    }

    private boolean a(ObuParser.c cVar, boolean z10) {
        ObuParser.d dVar;
        int i10 = cVar.f10258a;
        if (i10 == 2 || i10 == 15) {
            return true;
        }
        if (i10 == 3 && !z10) {
            return false;
        }
        if ((i10 != 6 && i10 != 3) || (dVar = this.f12762a) == null) {
            return false;
        }
        ObuParser.b bVarB = ObuParser.b.b(dVar, cVar);
        return (bVarB == null || bVarB.a()) ? false : true;
    }

    private void e(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((ObuParser.c) list.get(i10)).f10258a == 1) {
                this.f12762a = ObuParser.d.a((ObuParser.c) list.get(i10));
            }
        }
    }

    public void b(ByteBuffer byteBuffer) {
        e(ObuParser.e(byteBuffer));
    }

    public void c() {
        this.f12762a = null;
    }

    public int d(ByteBuffer byteBuffer, boolean z10) {
        List listE = ObuParser.e(byteBuffer);
        e(listE);
        int size = listE.size() - 1;
        int i10 = 0;
        while (size >= 0 && a((ObuParser.c) listE.get(size), z10)) {
            if (((ObuParser.c) listE.get(size)).f10258a == 6 || ((ObuParser.c) listE.get(size)).f10258a == 3) {
                i10++;
            }
            size--;
        }
        if (i10 > 1 || size + 1 >= 8) {
            return byteBuffer.limit();
        }
        return size >= 0 ? ((ObuParser.c) listE.get(size)).f10259b.limit() : byteBuffer.position();
    }
}
