package vt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.s;
import com.transsion.transfer.androidasync.u;
import java.nio.ByteBuffer;

public class a extends u {
    public a(s sVar) {
        super(sVar);
    }

    @Override
    public void d() {
        o(Integer.MAX_VALUE);
        n(new ByteBufferList());
        o(0);
    }

    @Override
    public ByteBufferList r(ByteBufferList byteBufferList) {
        byteBufferList.c(ByteBuffer.wrap((Integer.toString(byteBufferList.C(), 16) + "\r\n").getBytes()));
        byteBufferList.a(ByteBuffer.wrap("\r\n".getBytes()));
        return byteBufferList;
    }
}
