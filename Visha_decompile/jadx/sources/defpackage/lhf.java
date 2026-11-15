package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

public final class lhf {
    public long a;

    public final long a(ByteBuffer byteBuffer) {
        tne tneVar;
        sne sneVar;
        long j = this.a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            Iterator it = new one(new khf(byteBufferDuplicate), ohf.c).d().iterator();
            while (true) {
                tneVar = null;
                if (!it.hasNext()) {
                    sneVar = null;
                    break;
                }
                qne qneVar = (qne) it.next();
                if (qneVar instanceof sne) {
                    sneVar = (sne) qneVar;
                    break;
                }
            }
            for (qne qneVar2 : sneVar.d()) {
                if (qneVar2 instanceof tne) {
                    tneVar = (tne) qneVar2;
                    break;
                }
            }
            long jG = (tneVar.g() * 1000) / tneVar.h();
            this.a = jG;
            return jG;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
