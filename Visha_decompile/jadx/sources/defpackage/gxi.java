package defpackage;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class gxi implements jzi {
    public static final Map h = new ArrayMap();
    public static final String[] i = {"key", ES6Iterator.VALUE_PROPERTY};
    public final ContentResolver a;
    public final Uri b;
    public final Runnable c;
    public final ContentObserver d;
    public final Object e;
    public volatile Map f;
    public final List g;

    public gxi(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        lwi lwiVar = new lwi(this, null);
        this.d = lwiVar;
        this.e = new Object();
        this.g = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.a = contentResolver;
        this.b = uri;
        this.c = runnable;
        contentResolver.registerContentObserver(uri, false, lwiVar);
    }

    public static gxi a(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        gxi gxiVar;
        synchronized (gxi.class) {
            Map map = h;
            gxiVar = (gxi) map.get(uri);
            if (gxiVar == null) {
                try {
                    gxi gxiVar2 = new gxi(contentResolver, uri, runnable);
                    try {
                        map.put(uri, gxiVar2);
                    } catch (SecurityException unused) {
                    }
                    gxiVar = gxiVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return gxiVar;
    }

    public static synchronized void d() {
        try {
            for (gxi gxiVar : h.values()) {
                gxiVar.a.unregisterContentObserver(gxiVar.d);
            }
            h.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.os.StrictMode$ThreadPolicy] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final Map b() {
        ?? r0;
        Map map;
        Map map2 = this.f;
        ?? r1 = map2;
        if (map2 == null) {
            synchronized (this.e) {
                Map map3 = this.f;
                r0 = map3;
                if (map3 == null) {
                    ?? AllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map = (Map) czi.a(new gzi() {
                                @Override
                                public final Object zza() {
                                    return this.a.c();
                                }
                            });
                            StrictMode.setThreadPolicy(AllowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(AllowThreadDiskReads);
                            map = null;
                        }
                        this.f = map;
                        AllowThreadDiskReads = map;
                        r0 = AllowThreadDiskReads;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(AllowThreadDiskReads);
                        throw th;
                    }
                }
            }
            r1 = r0;
        }
        return r1 != 0 ? r1 : Collections.emptyMap();
    }

    public final Map c() {
        Cursor cursorQuery = this.a.query(this.b, i, null, null, null);
        if (cursorQuery == null) {
            return Collections.emptyMap();
        }
        try {
            int count = cursorQuery.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
            while (cursorQuery.moveToNext()) {
                arrayMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
            return arrayMap;
        } finally {
            cursorQuery.close();
        }
    }

    public final void e() {
        synchronized (this.e) {
            this.f = null;
            this.c.run();
        }
        synchronized (this) {
            try {
                Iterator it = this.g.iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final Object zzb(String str) {
        return (String) b().get(str);
    }
}
