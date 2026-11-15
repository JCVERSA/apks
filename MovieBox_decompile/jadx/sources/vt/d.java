package vt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.filter.DataRemainingException;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

public class d extends t {

    private Inflater f73814g;

    ByteBufferList f73815h;

    public d() {
        this(new Inflater());
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        try {
            ByteBuffer byteBufferT = ByteBufferList.t(byteBufferList.C() * 2);
            while (byteBufferList.E() > 0) {
                ByteBuffer byteBufferD = byteBufferList.D();
                if (byteBufferD.hasRemaining()) {
                    byteBufferD.remaining();
                    this.f73814g.setInput(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                    do {
                        byteBufferT.position(byteBufferT.position() + this.f73814g.inflate(byteBufferT.array(), byteBufferT.arrayOffset() + byteBufferT.position(), byteBufferT.remaining()));
                        if (!byteBufferT.hasRemaining()) {
                            byteBufferT.flip();
                            this.f73815h.a(byteBufferT);
                            byteBufferT = ByteBufferList.t(byteBufferT.capacity() * 2);
                        }
                        if (this.f73814g.needsInput()) {
                            break;
                        }
                    } while (!this.f73814g.finished());
                }
                ByteBufferList.A(byteBufferD);
            }
            byteBufferT.flip();
            this.f73815h.a(byteBufferT);
            a0.a(this, this.f73815h);
        } catch (Exception e10) {
            M(e10);
        }
    }

    @Override
    public void M(Exception exc) {
        this.f73814g.end();
        if (exc != null && this.f73814g.getRemaining() > 0) {
            exc = new DataRemainingException("data still remaining in inflater", exc);
        }
        super.M(exc);
    }

    public d(Inflater inflater) {
        this.f73815h = new ByteBufferList();
        this.f73814g = inflater;
    }
}
