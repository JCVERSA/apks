package org.proninyaroslav.libretorrent.core.system;

import android.net.Uri;

interface FsModule {
    long a(Uri uri);

    boolean b(Uri uri);

    FileDescriptorWrapper c(Uri uri);

    Uri d(Uri uri, String str, boolean z);

    String e(Uri uri, String str);

    boolean f(Uri uri);
}
