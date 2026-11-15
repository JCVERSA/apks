package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

abstract class m {

    private static class a implements c {

        private final ByteBuffer f8815a;

        a(ByteBuffer byteBuffer) {
            this.f8815a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override
        public int a() {
            return this.f8815a.getInt();
        }

        @Override
        public long b() {
            return m.c(this.f8815a.getInt());
        }

        @Override
        public long getPosition() {
            return this.f8815a.position();
        }

        @Override
        public int readUnsignedShort() {
            return m.d(this.f8815a.getShort());
        }

        @Override
        public void skip(int i10) {
            ByteBuffer byteBuffer = this.f8815a;
            byteBuffer.position(byteBuffer.position() + i10);
        }
    }

    private static class b {

        private final long f8816a;

        private final long f8817b;

        b(long j10, long j11) {
            this.f8816a = j10;
            this.f8817b = j11;
        }

        long a() {
            return this.f8816a;
        }
    }

    private interface c {
        int a();

        long b();

        long getPosition();

        int readUnsignedShort();

        void skip(int i10);
    }

    private static b a(c cVar) throws IOException {
        long jB;
        cVar.skip(4);
        int unsignedShort = cVar.readUnsignedShort();
        if (unsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        cVar.skip(6);
        int i10 = 0;
        while (true) {
            if (i10 >= unsignedShort) {
                jB = -1;
                break;
            }
            int iA = cVar.a();
            cVar.skip(4);
            jB = cVar.b();
            cVar.skip(4);
            if (1835365473 == iA) {
                break;
            }
            i10++;
        }
        if (jB != -1) {
            cVar.skip((int) (jB - cVar.getPosition()));
            cVar.skip(12);
            long jB2 = cVar.b();
            for (int i11 = 0; i11 < jB2; i11++) {
                int iA2 = cVar.a();
                long jB3 = cVar.b();
                long jB4 = cVar.b();
                if (1164798569 == iA2 || 1701669481 == iA2) {
                    return new b(jB3 + jB, jB4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    static androidx.emoji2.text.flatbuffer.c b(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) a(new a(byteBufferDuplicate)).a());
        return androidx.emoji2.text.flatbuffer.c.i(byteBufferDuplicate);
    }

    static long c(int i10) {
        return ((long) i10) & 4294967295L;
    }

    static int d(short s10) {
        return s10 & 65535;
    }
}
