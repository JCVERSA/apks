package defpackage;

import android.net.Uri;
import androidx.collection.ArrayMap;

public abstract class c0j {
    public static final ArrayMap a = new ArrayMap();

    public static synchronized Uri a(String str) {
        ArrayMap arrayMap = a;
        Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
        arrayMap.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }
}
