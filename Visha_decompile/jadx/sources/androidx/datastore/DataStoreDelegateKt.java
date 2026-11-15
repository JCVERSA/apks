package androidx.datastore;

import android.content.Context;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.lzy.okgo.model.Progress;
import defpackage.e74;
import defpackage.eo8;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ay\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f0\u000e\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00052 \b\u0002\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t0\u00072\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"T", "", Progress.FILE_NAME, "Landroidx/datastore/core/Serializer;", "serializer", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "corruptionHandler", "Lkotlin/Function1;", "Landroid/content/Context;", "", "Landroidx/datastore/core/DataMigration;", "produceMigrations", "Lnk1;", "scope", "Leo8;", "Landroidx/datastore/core/DataStore;", "dataStore", "(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le74;Lnk1;)Leo8;", "datastore_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DataStoreDelegateKt {
    public static final <T> eo8 dataStore(String str, Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, e74 e74Var, nk1 nk1Var) {
        y45.j(str, Progress.FILE_NAME);
        y45.j(serializer, "serializer");
        y45.j(e74Var, "produceMigrations");
        y45.j(nk1Var, "scope");
        return new DataStoreSingletonDelegate(str, new OkioSerializerWrapper(serializer), replaceFileCorruptionHandler, e74Var, nk1Var);
    }

    public static eo8 dataStore$default(String str, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, e74 e74Var, nk1 nk1Var, int i, Object obj) {
        if ((i & 4) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 8) != 0) {
            e74Var = new e74() {
                @Override
                public final List invoke(Context context) {
                    y45.j(context, "it");
                    return y71.k();
                }
            };
        }
        if ((i & 16) != 0) {
            nk1Var = d.a(mc2.b().plus(v6a.b(null, 1, null)));
        }
        return dataStore(str, serializer, replaceFileCorruptionHandler, e74Var, nk1Var);
    }
}
