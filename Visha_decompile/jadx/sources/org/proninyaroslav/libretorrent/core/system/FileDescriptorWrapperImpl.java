package org.proninyaroslav.libretorrent.core.system;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;

class FileDescriptorWrapperImpl implements FileDescriptorWrapper {
    public ContentResolver b;
    public Uri c;
    public ParcelFileDescriptor d;

    public FileDescriptorWrapperImpl(Context context, Uri uri) {
        this.b = context.getContentResolver();
        this.c = uri;
    }

    @Override
    public void close() throws IOException {
        ParcelFileDescriptor parcelFileDescriptor = this.d;
        if (parcelFileDescriptor != null) {
            parcelFileDescriptor.close();
        }
    }

    @Override
    public FileDescriptor f(String str) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.b.openFileDescriptor(this.c, str);
        this.d = parcelFileDescriptorOpenFileDescriptor;
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            return null;
        }
        return parcelFileDescriptorOpenFileDescriptor.getFileDescriptor();
    }
}
