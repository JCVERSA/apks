package vt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.http.filter.PrematureDataEndException;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;

public class b extends t {

    long f73800g;

    long f73801h;

    ByteBufferList f73802i = new ByteBufferList();

    public b(long j10) {
        this.f73800g = j10;
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        byteBufferList.g(this.f73802i, (int) Math.min(this.f73800g - this.f73801h, byteBufferList.C()));
        int iC = this.f73802i.C();
        super.C(pVar, this.f73802i);
        this.f73801h += (long) (iC - this.f73802i.C());
        this.f73802i.f(byteBufferList);
        if (this.f73801h == this.f73800g) {
            M(null);
        }
    }

    @Override
    public void M(Exception exc) {
        if (exc == null && this.f73801h != this.f73800g) {
            exc = new PrematureDataEndException("End of data reached before content length was read: " + this.f73801h + "/" + this.f73800g + " Paused: " + isPaused());
        }
        super.M(exc);
    }
}
