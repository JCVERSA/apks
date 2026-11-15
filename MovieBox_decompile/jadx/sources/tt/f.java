package tt;

import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;

public class f implements tt.a {

    byte[] f72824a;

    String f72825b;

    class a implements com.transsion.transfer.androidasync.future.g {

        final st.a f72826a;

        a(st.a aVar) {
            this.f72826a = aVar;
        }

        @Override
        public void a(Exception exc, String str) {
            f.this.f72825b = str;
            this.f72826a.g(exc);
        }
    }

    public f() {
    }

    @Override
    public void H(p pVar, st.a aVar) {
        new wt.f().a(pVar).f(new a(aVar));
    }

    @Override
    public void J(j jVar, s sVar, st.a aVar) {
        if (this.f72824a == null) {
            this.f72824a = this.f72825b.getBytes();
        }
        a0.h(sVar, this.f72824a, aVar);
    }

    @Override
    public boolean K() {
        return true;
    }

    public String a() {
        return toString();
    }

    @Override
    public String l() {
        return ShareConstant.SHARE_TYPE_TEXT;
    }

    @Override
    public int length() {
        if (this.f72824a == null) {
            this.f72824a = this.f72825b.getBytes();
        }
        return this.f72824a.length;
    }

    public String toString() {
        return this.f72825b;
    }

    public f(String str) {
        this();
        this.f72825b = str;
    }
}
