package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
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

@Metadata(d1 = {"\u00004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ae\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\r0\f2\u0006\u0010\u0001\u001a\u00020\u00002\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022 \b\u0002\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\b0\u00070\u00052\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"", "name", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "Landroidx/datastore/preferences/core/Preferences;", "corruptionHandler", "Lkotlin/Function1;", "Landroid/content/Context;", "", "Landroidx/datastore/core/DataMigration;", "produceMigrations", "Lnk1;", "scope", "Leo8;", "Landroidx/datastore/core/DataStore;", "preferencesDataStore", "(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le74;Lnk1;)Leo8;", "datastore-preferences_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class PreferenceDataStoreDelegateKt {
    public static final eo8 preferencesDataStore(String str, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, e74 e74Var, nk1 nk1Var) {
        y45.j(str, "name");
        y45.j(e74Var, "produceMigrations");
        y45.j(nk1Var, "scope");
        return new PreferenceDataStoreSingletonDelegate(str, replaceFileCorruptionHandler, e74Var, nk1Var);
    }

    public static eo8 preferencesDataStore$default(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, e74 e74Var, nk1 nk1Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            e74Var = new e74() {
                @Override
                public final List<DataMigration<Preferences>> invoke(Context context) {
                    y45.j(context, "it");
                    return y71.k();
                }
            };
        }
        if ((i & 8) != 0) {
            nk1Var = d.a(mc2.b().plus(v6a.b(null, 1, null)));
        }
        return preferencesDataStore(str, replaceFileCorruptionHandler, e74Var, nk1Var);
    }
}
