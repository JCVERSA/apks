package org.proninyaroslav.libretorrent.core.system;

import android.net.Uri;

interface FsModuleResolver {
    FsModule a(Uri uri);
}
