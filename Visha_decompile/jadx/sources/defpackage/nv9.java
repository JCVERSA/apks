package defpackage;

import android.database.sqlite.SQLiteStatement;
import com.yandex.div.storage.database.ReadState;

public interface nv9 {
    ReadState a(String str, String... strArr);

    SQLiteStatement compileStatement(String str);
}
