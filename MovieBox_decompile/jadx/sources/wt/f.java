package wt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.future.y;
import com.transsion.transfer.androidasync.p;
import java.nio.charset.Charset;

public class f implements a {

    Charset f74769a;

    public String c(String str, ByteBufferList byteBufferList) {
        Charset charsetForName = this.f74769a;
        if (charsetForName == null && str != null) {
            charsetForName = Charset.forName(str);
        }
        return byteBufferList.z(charsetForName);
    }

    @Override
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        final String strS = pVar.s();
        return new b().a(pVar).i(new y() {
            @Override
            public final Object then(Object obj) {
                return this.f74767a.c(strS, (ByteBufferList) obj);
            }
        });
    }
}
