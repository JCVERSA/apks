package androidx.media3.container;

import androidx.media3.common.util.i0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public abstract class ObuParser {

    private static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    public static final class b {

        private final boolean f10257a;

        private b(d dVar, c cVar) throws NotYetImplementedException {
            int i10 = cVar.f10258a;
            androidx.media3.common.util.a.a(i10 == 6 || i10 == 3);
            byte[] bArr = new byte[Math.min(4, cVar.f10259b.remaining())];
            cVar.f10259b.asReadOnlyBuffer().get(bArr);
            i0 i0Var = new i0(bArr);
            ObuParser.f(dVar.f10260a);
            if (i0Var.g()) {
                this.f10257a = false;
                return;
            }
            int iH = i0Var.h(2);
            boolean zG = i0Var.g();
            ObuParser.f(dVar.f10261b);
            if (!zG) {
                this.f10257a = true;
                return;
            }
            boolean zG2 = (iH == 3 || iH == 0) ? true : i0Var.g();
            i0Var.q();
            ObuParser.f(!dVar.f10263d);
            if (i0Var.g()) {
                ObuParser.f(!dVar.f10264e);
                i0Var.q();
            }
            ObuParser.f(dVar.f10262c);
            if (iH != 3) {
                i0Var.q();
            }
            i0Var.r(dVar.f10265f);
            if (iH != 2 && iH != 0 && !zG2) {
                i0Var.r(3);
            }
            this.f10257a = ((iH == 3 || iH == 0) ? 255 : i0Var.h(8)) != 0;
        }

        public static b b(d dVar, c cVar) {
            try {
                return new b(dVar, cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public boolean a() {
            return this.f10257a;
        }
    }

    public static final class c {

        public final int f10258a;

        public final ByteBuffer f10259b;

        private c(int i10, ByteBuffer byteBuffer) {
            this.f10258a = i10;
            this.f10259b = byteBuffer;
        }
    }

    public static final class d {

        public final boolean f10260a;

        public final boolean f10261b;

        public final boolean f10262c;

        public final boolean f10263d;

        public final boolean f10264e;

        public final int f10265f;

        private d(c cVar) throws NotYetImplementedException {
            androidx.media3.common.util.a.a(cVar.f10258a == 1);
            byte[] bArr = new byte[cVar.f10259b.remaining()];
            cVar.f10259b.asReadOnlyBuffer().get(bArr);
            i0 i0Var = new i0(bArr);
            i0Var.r(4);
            boolean zG = i0Var.g();
            this.f10260a = zG;
            ObuParser.f(zG);
            if (i0Var.g()) {
                b(i0Var);
                boolean zG2 = i0Var.g();
                this.f10261b = zG2;
                if (zG2) {
                    i0Var.r(47);
                }
            } else {
                this.f10261b = false;
            }
            boolean zG3 = i0Var.g();
            int iH = i0Var.h(5);
            for (int i10 = 0; i10 <= iH; i10++) {
                i0Var.r(12);
                if (i0Var.h(5) > 7) {
                    i0Var.q();
                }
                ObuParser.f(this.f10261b);
                if (zG3 && i0Var.g()) {
                    i0Var.r(4);
                }
            }
            int iH2 = i0Var.h(4);
            int iH3 = i0Var.h(4);
            i0Var.r(iH2 + 1);
            i0Var.r(iH3 + 1);
            boolean zG4 = i0Var.g();
            this.f10262c = zG4;
            ObuParser.f(zG4);
            i0Var.r(3);
            i0Var.r(4);
            boolean zG5 = i0Var.g();
            if (zG5) {
                i0Var.r(2);
            }
            if (i0Var.g()) {
                this.f10263d = true;
            } else {
                this.f10263d = i0Var.g();
            }
            if (!this.f10263d || i0Var.g()) {
                this.f10264e = true;
            } else {
                this.f10264e = i0Var.g();
            }
            if (zG5) {
                this.f10265f = i0Var.h(3) + 1;
            } else {
                this.f10265f = 0;
            }
        }

        public static d a(c cVar) {
            try {
                return new d(cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private static void b(i0 i0Var) {
            i0Var.r(64);
            if (i0Var.g()) {
                ObuParser.d(i0Var);
            }
        }
    }

    private static int c(ByteBuffer byteBuffer) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            byte b10 = byteBuffer.get();
            i10 |= (b10 & 127) << (i11 * 7);
            if ((b10 & 128) == 0) {
                break;
            }
        }
        return i10;
    }

    public static void d(i0 i0Var) {
        int i10 = 0;
        while (!i0Var.g()) {
            i10++;
        }
        if (i10 < 32) {
            i0Var.r(i10);
        }
    }

    public static List e(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b10 = byteBufferAsReadOnlyBuffer.get();
            int i10 = (b10 >> 3) & 15;
            if (((b10 >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            int iC = ((b10 >> 1) & 1) != 0 ? c(byteBufferAsReadOnlyBuffer) : byteBufferAsReadOnlyBuffer.remaining();
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iC);
            arrayList.add(new c(i10, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iC);
        }
        return arrayList;
    }

    public static void f(boolean z10) throws NotYetImplementedException {
        if (z10) {
            throw new NotYetImplementedException();
        }
    }
}
