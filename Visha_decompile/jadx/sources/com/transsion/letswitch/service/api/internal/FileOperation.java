package com.transsion.letswitch.service.api.internal;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.letswitch.service.api.CmdResult;
import com.transsion.letswitch.service.api.FileInformation;
import com.transsion.letswitch.service.api.IFileOperation;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.letswitch.service.api.internal.service.FileOperationApiService;
import com.transsion.letswitch.service.api.utils.FileTools;
import defpackage.y45;
import java.io.File;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u0007H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0016J,\u0010\u001b\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019H\u0016J*\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0019H\u0016¨\u0006%"}, d2 = {"Lcom/transsion/letswitch/service/api/internal/FileOperation;", "Lcom/transsion/letswitch/service/api/IFileOperation;", MethodDecl.initName, "()V", "getFileInfo", "Lcom/transsion/letswitch/service/api/FileInformation;", "path", "", "openFile", "Landroid/os/ParcelFileDescriptor;", "openFileW", "position", "", SessionDescription.ATTR_LENGTH, "mkdirs", "", "rename", "src", "dest", "overlay", "runCmd", "Lcom/transsion/letswitch/service/api/CmdResult;", "cmd", "getErrorMessage", "deleteFile", "", "targetFile", "copyFile", "source", "targetDir", "uid", "gid", "listFile", "", "targetPackage", "userId", "flags", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileOperation implements IFileOperation {
    @Override
    public int copyFile(String source, String targetDir, int uid, int gid) {
        if (source == null || source.length() == 0 || targetDir == null || targetDir.length() == 0) {
            return -1;
        }
        return FileOperationApiService.INSTANCE.copyFile(source, targetDir, uid, gid);
    }

    @Override
    public int deleteFile(String targetFile) {
        if (targetFile == null || targetFile.length() == 0) {
            return -1;
        }
        return FileOperationApiService.INSTANCE.deleteFile(targetFile);
    }

    @Override
    public String getErrorMessage() {
        return FileOperationApiService.INSTANCE.getErrorMessage();
    }

    @Override
    public FileInformation getFileInfo(String path) {
        y45.j(path, "path");
        File file = new File(path);
        if (!file.exists() || !file.canRead()) {
            return FileOperationApiService.INSTANCE.getFileInfo(path);
        }
        String name = file.getName();
        y45.i(name, "getName(...)");
        return new FileInformation(path, name, file.length(), file.isFile(), file.isDirectory(), file.canRead(), null, 64, null);
    }

    @Override
    public List<String> listFile(String targetPackage, int userId, int flags) {
        if (targetPackage == null || targetPackage.length() == 0) {
            return null;
        }
        return FileOperationApiService.INSTANCE.listFile(targetPackage, userId, flags);
    }

    @Override
    public boolean mkdirs(String path) {
        y45.j(path, "path");
        return FileOperationApiService.INSTANCE.mkdirs(path);
    }

    @Override
    public ParcelFileDescriptor openFile(String path) {
        y45.j(path, "path");
        Log.d("FileOperation", "openFile api path: " + path);
        File file = new File(path);
        if (file.exists() && file.canRead()) {
            Log.d("FileOperation", "openFile api exists");
            return ParcelFileDescriptor.open(new File(path), 268435456);
        }
        Log.d("FileOperation", "openFile api exists false");
        return FileOperationApiService.INSTANCE.openFile(path);
    }

    @Override
    public ParcelFileDescriptor openFileW(String path, long position, long length) {
        y45.j(path, "path");
        return FileOperationApiService.INSTANCE.openFileW(path, position, length);
    }

    @Override
    public boolean rename(String src, String dest, boolean overlay) {
        y45.j(src, "src");
        y45.j(dest, "dest");
        FileTools fileTools = FileTools.INSTANCE;
        if (!fileTools.renameFile(src, dest, overlay)) {
            return FileOperationApiService.INSTANCE.rename(src, dest, overlay);
        }
        fileTools.scanFile(LetSwitchServiceProxy.INSTANCE.getAppContext$api_release(), dest);
        return true;
    }

    @Override
    public CmdResult runCmd(String cmd) {
        y45.j(cmd, "cmd");
        return FileOperationApiService.INSTANCE.runCmd(cmd);
    }
}
