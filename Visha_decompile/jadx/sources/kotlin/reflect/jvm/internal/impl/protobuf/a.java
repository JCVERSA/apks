package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class a implements g {
    protected int memoizedHashCode = 0;

    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(outputStream, CodedOutputStream.t(CodedOutputStream.u(serializedSize) + serializedSize));
        codedOutputStreamI.n0(serializedSize);
        writeTo(codedOutputStreamI);
        codedOutputStreamI.H();
    }

    public static abstract class AbstractC0400a implements g.a {
        public static UninitializedMessageException a(g gVar) {
            return new UninitializedMessageException(gVar);
        }

        public static final class C0401a extends FilterInputStream {
            public int b;

            public C0401a(InputStream inputStream, int i) {
                super(inputStream);
                this.b = i;
            }

            @Override
            public int available() {
                return Math.min(super.available(), this.b);
            }

            @Override
            public int read() throws IOException {
                if (this.b <= 0) {
                    return -1;
                }
                int i = super.read();
                if (i >= 0) {
                    this.b--;
                }
                return i;
            }

            @Override
            public long skip(long j) throws IOException {
                long jSkip = super.skip(Math.min(j, this.b));
                if (jSkip >= 0) {
                    this.b = (int) (((long) this.b) - jSkip);
                }
                return jSkip;
            }

            @Override
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.b;
                if (i3 <= 0) {
                    return -1;
                }
                int i4 = super.read(bArr, i, Math.min(i2, i3));
                if (i4 >= 0) {
                    this.b -= i4;
                }
                return i4;
            }
        }
    }
}
