package defpackage;

import android.os.Build;
import android.os.Environment;

public interface ou4 {
    public static final String[] a = {"_id", "title", "_display_name", "duration", "_data", "date_added", "date_modified", "album_id", "album", "artist_id", "artist", "mime_type", "_size"};
    public static final String[] b;
    public static final String[] c;
    public static final String[] d;
    public static final String e;

    static {
        String[] strArr = {"_id", "title", "_display_name", "duration", "_data", "date_added", "date_modified", "album_id", "album", "artist_id", "artist", "mime_type", "_size", "bucket_id", "bucket_display_name", "year"};
        b = strArr;
        String[] strArr2 = {"_id", "title", "_display_name", "duration", "_data", "date_added", "date_modified", "album_id", "album", "artist_id", "artist", "mime_type", "_size", "bucket_id", "bucket_display_name", "year", "cd_track_number"};
        c = strArr2;
        if (Build.VERSION.SDK_INT > 29) {
            strArr = strArr2;
        }
        d = strArr;
        e = Environment.getExternalStorageDirectory().getAbsolutePath();
    }
}
