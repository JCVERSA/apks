package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

class FileSystemFacadeImpl implements FileSystemFacade {
    public static final String c = "FileSystemFacadeImpl";
    public Context a;
    public FsModuleResolver b;

    public FileSystemFacadeImpl(Context context, FsModuleResolver fsModuleResolver) {
        this.a = context;
        this.b = fsModuleResolver;
    }

    @Override
    public long a(Uri uri) {
        try {
            return this.b.a(uri).a(uri);
        } catch (IOException | IllegalArgumentException e) {
            Log.e(c, Log.getStackTraceString(e));
            return -1L;
        }
    }

    @Override
    public boolean b(Uri uri) {
        return this.b.a(uri).b(uri);
    }

    @Override
    public Uri c(Uri uri, String str) {
        try {
            return this.b.a(uri).d(uri, str, false);
        } catch (IOException e) {
            Log.e(c, Log.getStackTraceString(e));
            return null;
        }
    }

    @Override
    public boolean d(Uri uri) {
        return this.b.a(uri).f(uri);
    }

    @Override
    public String e() {
        String absolutePath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
        File file = new File(absolutePath);
        if ((file.exists() && file.isDirectory()) || file.mkdirs()) {
            return absolutePath;
        }
        return null;
    }

    @Override
    public void f(byte[] bArr, Uri uri) throws IOException {
        FileDescriptorWrapper fileDescriptorWrapperN = n(uri);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptorWrapperN.f("rw"));
            try {
                IOUtils.write(bArr, fileOutputStream);
                fileOutputStream.close();
                fileDescriptorWrapperN.close();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (fileDescriptorWrapperN != null) {
                try {
                    fileDescriptorWrapperN.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    @Override
    public void g() throws IOException {
        File fileI = i();
        if (fileI == null) {
            throw new FileNotFoundException("Temp dir not found");
        }
        FileUtils.cleanDirectory(fileI);
    }

    @Override
    public String h(Uri uri) {
        return o(uri, null);
    }

    @Override
    public File i() {
        File file = new File(this.a.getExternalFilesDir(null), "temp");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    @Override
    public String j() {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        File file = new File(absolutePath);
        if ((file.exists() && file.isDirectory()) || file.mkdirs()) {
            return absolutePath;
        }
        return null;
    }

    @Override
    public boolean k() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    @Override
    public String l(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("file://") || str.startsWith("content://")) {
            return str;
        }
        return "file://" + str;
    }

    @Override
    public Uri m(Uri uri, String str, boolean z) throws IOException {
        FsModule fsModuleA = this.b.a(uri);
        try {
            Uri uriD = fsModuleA.d(uri, str, false);
            if (uriD != null) {
                if (!z) {
                    return uriD;
                }
                if (!fsModuleA.f(uriD)) {
                    return null;
                }
            }
            return fsModuleA.d(uri, str, true);
        } catch (SecurityException e) {
            throw new IOException(e);
        }
    }

    @Override
    public FileDescriptorWrapper n(Uri uri) {
        return this.b.a(uri).c(uri);
    }

    public String o(Uri uri, String str) {
        return this.b.a(uri).e(uri, str);
    }
}
