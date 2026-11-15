package wt;

import com.transsion.transfer.androidasync.future.y;
import com.transsion.transfer.androidasync.p;
import org.json.JSONObject;

public class d implements a {
    @Override
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        return new f().a(pVar).i(new y() {
            @Override
            public final Object then(Object obj) {
                return new JSONObject((String) obj);
            }
        });
    }
}
