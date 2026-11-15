package tt;

import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.s;
import org.json.JSONObject;

public class b implements tt.a {

    byte[] f72794a;

    JSONObject f72795b;

    class a implements com.transsion.transfer.androidasync.future.g {

        final st.a f72796a;

        a(st.a aVar) {
            this.f72796a = aVar;
        }

        @Override
        public void a(Exception exc, JSONObject jSONObject) {
            b.this.f72795b = jSONObject;
            this.f72796a.g(exc);
        }
    }

    @Override
    public void H(p pVar, st.a aVar) {
        new wt.d().a(pVar).f(new a(aVar));
    }

    @Override
    public void J(j jVar, s sVar, st.a aVar) {
        a0.h(sVar, this.f72794a, aVar);
    }

    @Override
    public boolean K() {
        return true;
    }

    @Override
    public String l() {
        return "application/json";
    }

    @Override
    public int length() {
        byte[] bytes = this.f72795b.toString().getBytes();
        this.f72794a = bytes;
        return bytes.length;
    }
}
