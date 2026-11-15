package tt;

import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.s;
import java.io.InputStream;
import java.util.List;

public abstract class e extends d {
    public e(String str, long j10, List list) {
        super(str, j10, list);
    }

    @Override
    public void d(s sVar, st.a aVar) {
        try {
            a0.f(e(), sVar, aVar);
        } catch (Exception e10) {
            aVar.g(e10);
        }
    }

    protected abstract InputStream e();
}
