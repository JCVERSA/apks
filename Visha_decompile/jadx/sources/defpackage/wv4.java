package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import kotlin.Pair;

public interface wv4 {

    public static final class a {
        public static Object a(wv4 wv4Var, DataSourceScope dataSourceScope, xl8 xl8Var) {
            y45.j(dataSourceScope, "scope");
            y45.j(xl8Var, Progress.REQUEST);
            vmb.i("IQueryEngine", "querySingle is implemented empty by default");
            return null;
        }
    }

    Object a(DataSourceScope dataSourceScope, xl8 xl8Var);

    Pair b(DataSourceScope dataSourceScope, xl8 xl8Var);
}
