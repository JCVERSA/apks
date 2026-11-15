package defpackage;

import android.net.Uri;
import androidx.media3.datasource.cache.ContentMetadata;

public interface yg1 {
    static Uri a(yg1 yg1Var) {
        String str = yg1Var.get(ContentMetadata.KEY_REDIRECTED_URI, (String) null);
        if (str == null) {
            return null;
        }
        return Uri.parse(str);
    }

    static long b(yg1 yg1Var) {
        return yg1Var.get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
    }

    long get(String str, long j);

    String get(String str, String str2);
}
