package org.proninyaroslav.libretorrent.core.storage.converter;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.room.TypeConverter;

public class UriConverter {
    @TypeConverter
    public static String fromUri(@NonNull Uri uri) {
        return uri.toString();
    }

    @TypeConverter
    public static Uri toUri(@NonNull String str) {
        return Uri.parse(str);
    }
}
