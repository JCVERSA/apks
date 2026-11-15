package tt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.http.w;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class h implements tt.a {

    private Multimap f72829a;

    private byte[] f72830b;

    class a implements st.d {

        final ByteBufferList f72831a;

        a(ByteBufferList byteBufferList) {
            this.f72831a = byteBufferList;
        }

        @Override
        public void C(p pVar, ByteBufferList byteBufferList) {
            byteBufferList.f(this.f72831a);
        }
    }

    class b implements st.a {

        final ByteBufferList f72833a;

        final st.a f72834b;

        b(ByteBufferList byteBufferList, st.a aVar) {
            this.f72833a = byteBufferList;
            this.f72834b = aVar;
        }

        @Override
        public void g(Exception exc) {
            try {
                if (exc != null) {
                    throw exc;
                }
                h.this.f72829a = Multimap.parseUrlEncoded(this.f72833a.y());
                this.f72834b.g(null);
            } catch (Exception e10) {
                this.f72834b.g(e10);
            }
        }
    }

    private void b() {
        StringBuilder sb2 = new StringBuilder();
        try {
            boolean z10 = true;
            for (w wVar : this.f72829a) {
                if (wVar.getValue() != null) {
                    if (!z10) {
                        sb2.append('&');
                    }
                    sb2.append(URLEncoder.encode(wVar.getName(), "UTF-8"));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(wVar.getValue(), "UTF-8"));
                    z10 = false;
                }
            }
            this.f72830b = sb2.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public void H(p pVar, st.a aVar) {
        ByteBufferList byteBufferList = new ByteBufferList();
        pVar.F(new a(byteBufferList));
        pVar.h(new b(byteBufferList, aVar));
    }

    @Override
    public void J(j jVar, s sVar, st.a aVar) {
        if (this.f72830b == null) {
            b();
        }
        a0.h(sVar, this.f72830b, aVar);
    }

    @Override
    public boolean K() {
        return true;
    }

    @Override
    public String l() {
        return "application/x-www-form-urlencoded; charset=utf-8";
    }

    @Override
    public int length() {
        if (this.f72830b == null) {
            b();
        }
        return this.f72830b.length;
    }
}
