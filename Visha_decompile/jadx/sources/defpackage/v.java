package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class v {
    public static final a a = new a(null);
    public static final Uri b = Uri.parse("content://com.transsion.aicore.main.provider.MmProvider");
    public static v c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized v a() {
            v vVarB;
            vVarB = b();
            y45.g(vVarB);
            return vVarB;
        }

        public final v b() {
            if (v.c == null) {
                v.c = new v();
            }
            return v.c;
        }

        public a() {
        }
    }

    public final List c(Context context) {
        y45.j(context, "context");
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.withAppendedPath(b, "model_list"), null, "package_name = ?", new String[]{context.getPackageName()}, null);
            ArrayList arrayList = new ArrayList();
            if (cursorQuery != null) {
                Log.d("AISubtitleControlManager", "queryLanguageList cursor: " + cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("language"));
                    y45.g(string);
                    arrayList.add(string);
                }
            }
            Log.d("AISubtitleControlManager", "queryLanguageList languages: " + arrayList);
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("AISubtitleControlManager", "queryLanguageList languages e: " + e);
            return y71.k();
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
