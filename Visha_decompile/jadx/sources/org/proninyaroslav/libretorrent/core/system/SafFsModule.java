package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.StructStatVfs;
import java.io.FileDescriptor;
import java.io.IOException;

class SafFsModule implements FsModule {
    public Context a;

    public SafFsModule(Context context) {
        this.a = context;
    }

    @Override
    public long a(Uri uri) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.a.getContentResolver().openFileDescriptor(SafFileSystem.e(this.a).g(uri), "r");
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                return -1L;
            }
            parcelFileDescriptorOpenFileDescriptor.close();
            return -1L;
        }
        try {
            long jG = g(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            parcelFileDescriptorOpenFileDescriptor.close();
            return jG;
        } catch (Throwable th) {
            try {
                parcelFileDescriptorOpenFileDescriptor.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override
    public boolean b(Uri uri) {
        return SafFileSystem.e(this.a).b(uri);
    }

    @Override
    public FileDescriptorWrapper c(Uri uri) {
        return new FileDescriptorWrapperImpl(this.a, uri);
    }

    @Override
    public Uri d(Uri uri, String str, boolean z) {
        return SafFileSystem.e(this.a).d(uri, str, z);
    }

    @Override
    public String e(Uri uri, String str) {
        if (str == null) {
            str = "";
        }
        return new SafFileSystem.FakePath(uri, str).toString();
    }

    @Override
    public boolean f(Uri uri) {
        return SafFileSystem.e(this.a).a(uri);
    }

    public final long g(FileDescriptor fileDescriptor) throws IOException {
        try {
            StructStatVfs structStatVfsFstatvfs = Os.fstatvfs(fileDescriptor);
            return structStatVfsFstatvfs.f_bavail * structStatVfsFstatvfs.f_bsize;
        } catch (Exception e) {
            throw new IOException(e);
        }
    }
}
