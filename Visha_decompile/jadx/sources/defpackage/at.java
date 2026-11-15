package defpackage;

import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;

public final class at extends ib0 {
    public static final at b = new at();
    public static final yi5 c;
    public static final yi5 d;
    public static final String[] e;
    public static final String[] f;
    public static final String[] g;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        c = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return at.d();
            }
        });
        d = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return at.c();
            }
        });
        String[] strArr = {"_id", "title", "_display_name", "mime_type", "date_added", "date_modified", "_data", "duration", "_size", "album_id", "album", "artist_id", "artist"};
        e = strArr;
        String[] strArr2 = (String[]) fi.B(strArr, new String[]{"bucket_id", "bucket_display_name", "year"});
        f = strArr2;
        g = (String[]) fi.B(strArr2, new String[]{"cd_track_number"});
    }

    public static final String[] c() {
        return b.g();
    }

    public static final Uri d() {
        return b.h();
    }

    public final String[] e() {
        return (String[]) d.getValue();
    }

    public final Uri f() {
        return (Uri) c.getValue();
    }

    public String[] g() {
        return Build.VERSION.SDK_INT > 29 ? g : f;
    }

    public Uri h() {
        Uri contentUri = MediaStore.Audio.Media.getContentUri("external");
        y45.g(contentUri);
        return contentUri;
    }
}
