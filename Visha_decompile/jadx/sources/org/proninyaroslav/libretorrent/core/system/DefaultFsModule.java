package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.net.Uri;
import android.os.StatFs;
import java.io.File;
import java.io.IOException;

class DefaultFsModule implements FsModule {
    public Context a;

    public DefaultFsModule(Context context) {
        this.a = context;
    }

    @Override
    public long a(Uri uri) {
        try {
            return new File(uri.getPath()).getUsableSpace();
        } catch (Exception unused) {
            return new StatFs(uri.getPath()).getAvailableBytes();
        }
    }

    @Override
    public boolean b(Uri uri) {
        return new File(uri.getPath()).exists();
    }

    @Override
    public FileDescriptorWrapper c(Uri uri) {
        return new FileDescriptorWrapperImpl(this.a, uri);
    }

    @Override
    public Uri d(Uri uri, String str, boolean z) throws IOException {
        File file = new File(uri.getPath(), str);
        if (z) {
            file.createNewFile();
        }
        if (file.exists()) {
            return Uri.fromFile(file);
        }
        return null;
    }

    @Override
    public String e(Uri uri, String str) {
        return uri.getPath();
    }

    @Override
    public boolean f(Uri uri) {
        return new File(uri.getPath()).delete();
    }
}
