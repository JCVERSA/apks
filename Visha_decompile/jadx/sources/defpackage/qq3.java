package defpackage;

import android.net.Uri;
import android.provider.MediaStore;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;

public final class qq3 extends ib0 {
    public static final qq3 b = new qq3();
    public static final yi5 c;
    public static final yi5 d;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        c = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return qq3.d();
            }
        });
        d = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return qq3.c();
            }
        });
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
        return new String[]{"_id", "title", "_display_name", "mime_type", "date_added", "date_modified", "_data", "duration", "_size", "datetaken", "bucket_id", "bucket_display_name", "orientation", "width", "height"};
    }

    public Uri h() {
        Uri contentUri = MediaStore.Files.getContentUri("external");
        y45.g(contentUri);
        return contentUri;
    }
}
