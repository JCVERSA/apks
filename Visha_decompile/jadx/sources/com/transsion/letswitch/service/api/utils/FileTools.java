package com.transsion.letswitch.service.api.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.just.agentweb.AgentWebPermissions;
import com.transsion.letswitch.service.api.data.InstallFileInfo;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.xg;
import defpackage.y45;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\bJ%\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00020\t2\u0006\u0010!\u001a\u00020\t¢\u0006\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcom/transsion/letswitch/service/api/utils/FileTools;", "", MethodDecl.initName, "()V", "Ljava/io/File;", "file", "", "renameToTmpFile", "(Ljava/io/File;)Z", "", "path", "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "genInstallFileInfo", "(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;", "Landroid/content/Context;", "context", "packageName", "isSystemApp", "(Landroid/content/Context;Ljava/lang/String;)Z", "Landroid/net/Uri;", "uri", "getFilePathByUri", "(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;", "delete", "(Ljava/lang/String;)Z", "src", "dest", "overlay", "renameFile", "(Ljava/lang/String;Ljava/lang/String;Z)Z", "Lzfb;", "scanFile", "(Landroid/content/Context;Ljava/lang/String;)V", "absolutePath", "getFileName", "(Ljava/lang/String;)Ljava/lang/String;", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTools {
    public static final FileTools INSTANCE = new FileTools();

    private FileTools() {
    }

    public static final boolean delete(String path) {
        y45.j(path, "path");
        return !TextUtils.isEmpty(path) && delete(new File(path));
    }

    public static final InstallFileInfo genInstallFileInfo(String path) throws FileNotFoundException {
        y45.j(path, "path");
        File file = new File(path);
        if (!file.exists()) {
            return null;
        }
        long length = file.length();
        String fileName = INSTANCE.getFileName(path);
        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
        y45.i(parcelFileDescriptorOpen, "open(...)");
        return new InstallFileInfo(parcelFileDescriptorOpen, length, fileName);
    }

    public static final String getFilePathByUri(Context context, Uri uri) {
        int columnIndexOrThrow;
        y45.j(context, "context");
        y45.j(uri, "uri");
        String string = "";
        if (y45.e("file", uri.getScheme())) {
            return String.valueOf(uri.getPath());
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst() && (columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data")) > -1) {
                string = cursorQuery.getString(columnIndexOrThrow);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return string;
    }

    public static final boolean isSystemApp(Context context, String packageName) {
        y45.j(context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageName == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            if ((packageInfo != null ? packageInfo.applicationInfo : null) == null) {
                return false;
            }
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            y45.g(applicationInfo);
            return (applicationInfo.flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private final boolean renameToTmpFile(File file) {
        if (!file.exists()) {
            return false;
        }
        try {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                return false;
            }
            int i = 0;
            while (i < 9) {
                i++;
                String name = file.getName();
                y45.g(name);
                File file2 = new File(parentFile, g1a.N(new Regex("\\.").replaceFirst(name, "_bk_" + i + Consts.DOT), ".tmp", "", false, 4, null));
                if (!file2.exists()) {
                    Log.d("FileOperation", "renameToTmpFile src: " + file.getCanonicalPath() + ", dst: " + file2.getCanonicalPath());
                    return file.renameTo(file2);
                }
            }
        } catch (Exception e) {
            Log.d("FileOperation", "renameToTmpFile Exception: " + e.getMessage());
        }
        return false;
    }

    public final String getFileName(String absolutePath) {
        y45.j(absolutePath, "absolutePath");
        if (TextUtils.isEmpty(absolutePath)) {
            return "";
        }
        if (y45.e("/storage", absolutePath)) {
            return AgentWebPermissions.ACTION_STORAGE;
        }
        int iS0 = j1a.s0(absolutePath, "/", 0, false, 6, null);
        if (iS0 < 0) {
            return absolutePath;
        }
        String strSubstring = absolutePath.substring(iS0 + 1);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final boolean renameFile(String src, String dest, boolean overlay) {
        y45.j(src, "src");
        y45.j(dest, "dest");
        File file = new File(src);
        if (!file.exists()) {
            return false;
        }
        try {
            File file2 = new File(dest);
            if (file2.exists()) {
                if (!overlay && file2.length() != file.length()) {
                    return renameToTmpFile(file);
                }
                file2.delete();
            }
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            return file.renameTo(file2);
        } catch (Exception e) {
            Log.d("FileOperation", "renameFile Exception: " + e.getMessage());
            return false;
        }
    }

    public final void scanFile(Context context, String path) {
        y45.j(context, "context");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        try {
            MediaScannerConnection.scanFile(context, new String[]{path}, null, null);
        } catch (Exception e) {
            Log.d("FileOperation", "scanFile Exception: " + e.getMessage());
        }
    }

    public static final boolean delete(File path) {
        File[] fileArrListFiles;
        y45.j(path, "path");
        if (path.isFile()) {
            return path.delete();
        }
        if (!path.isDirectory() || (fileArrListFiles = path.listFiles()) == null || fileArrListFiles.length < 1) {
            return true;
        }
        Iterator itA = xg.a(fileArrListFiles);
        while (itA.hasNext()) {
            File file = (File) itA.next();
            y45.g(file);
            if (!delete(file)) {
                return false;
            }
        }
        return path.delete();
    }
}
