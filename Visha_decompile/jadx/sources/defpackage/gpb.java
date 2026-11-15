package defpackage;

import android.media.MediaMetadataRetriever;
import android.net.Uri;
import java.util.HashMap;

public abstract class gpb {
    public static HashMap a = new HashMap();

    public static class a {
        public long a = -1;
        public int b = 0;
        public int c = 0;
    }

    public static int a(Uri uri) {
        if (uri == null) {
            return 0;
        }
        return b(uri).c;
    }

    public static a b(Uri uri) {
        a aVar;
        synchronized (a) {
            try {
                String string = uri.toString();
                aVar = (a) a.get(string);
                if (aVar == null) {
                    aVar = new a();
                    a.put(string, aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    public static long c(Uri uri) {
        if (uri == null) {
            return -1L;
        }
        return b(uri).a;
    }

    public static boolean d(Uri uri) {
        a aVarB;
        return (uri == null || (aVarB = b(uri)) == null || -1 != aVarB.b) ? false : true;
    }

    public static a e(Uri uri, MediaMetadataRetriever mediaMetadataRetriever) {
        if (mediaMetadataRetriever == null || uri == null) {
            return null;
        }
        a aVarB = b(uri);
        long j = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
        aVarB.a = j;
        aVarB.c = j > 0 ? 1 : -1;
        return aVarB;
    }

    public static void f(Uri uri) {
        if (uri == null) {
            return;
        }
        a aVarB = b(uri);
        aVarB.a = 0L;
        aVarB.c = -1;
    }
}
