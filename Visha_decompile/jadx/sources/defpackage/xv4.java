package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import kotlin.Pair;

public interface xv4 {

    public static final class a {
        public static LiveData a(xv4 xv4Var, DataSourceScope dataSourceScope, sl8 sl8Var) {
            y45.j(dataSourceScope, "scope");
            y45.j(sl8Var, Progress.REQUEST);
            return new MutableLiveData(y71.k());
        }
    }

    Object a(DataSourceScope dataSourceScope, xl8 xl8Var);

    Pair b(DataSourceScope dataSourceScope, xl8 xl8Var);

    LiveData c(DataSourceScope dataSourceScope, sl8 sl8Var);
}
