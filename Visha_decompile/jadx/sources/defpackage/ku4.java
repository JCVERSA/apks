package defpackage;

import androidx.p004lifecycle.LiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.Set;

public interface ku4 extends xv4 {

    public static final class a {
        public static LiveData a(ku4 ku4Var, DataSourceScope dataSourceScope, sl8 sl8Var) {
            y45.j(dataSourceScope, "scope");
            y45.j(sl8Var, Progress.REQUEST);
            return xv4.a.a(ku4Var, dataSourceScope, sl8Var);
        }
    }

    Set d();

    Set e();
}
