package com.transsion.letswitch.service.api;

import android.os.ParcelFileDescriptor;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\bf\u0018\u0000 #2\u00020\u0001:\u0001#J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\rH&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H&J\b\u0010\u0015\u001a\u00020\u0005H&J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H&J,\u0010\u0019\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0017H&J*\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0017H&¨\u0006$"}, d2 = {"Lcom/transsion/letswitch/service/api/IFileOperation;", "", "getFileInfo", "Lcom/transsion/letswitch/service/api/FileInformation;", "path", "", "openFile", "Landroid/os/ParcelFileDescriptor;", "openFileW", "position", "", SessionDescription.ATTR_LENGTH, "mkdirs", "", "rename", "src", "dest", "overlay", "runCmd", "Lcom/transsion/letswitch/service/api/CmdResult;", "cmd", "getErrorMessage", "deleteFile", "", "targetFile", "copyFile", "source", "targetDir", "uid", "gid", "listFile", "", "targetPackage", "userId", "flags", "Companion", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IFileOperation {
    public static final String API_NAME_FILE_OPERATION = "FileOperationApiService";

    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String METHOD_COPY_FILE = "copyFile";
    public static final String METHOD_DEL_FILE = "deleteFile";
    public static final String METHOD_GET_ERR_MSG = "getErrorMessage";
    public static final String METHOD_GET_FILE_INFO = "getFileInfo";
    public static final String METHOD_LIST_FILE = "listFile";
    public static final String METHOD_MAKE_DIRS = "mkdirs";
    public static final String METHOD_OPEN_FILE = "openFile";
    public static final String METHOD_OPEN_FILE_W = "openFileW";
    public static final String METHOD_RENAME = "rename";
    public static final String METHOD_RUN_CMD = "runCmd";
    public static final int RESULT_CODE_FAILURE = -1;
    public static final int RESULT_CODE_SUCCESS = 0;
    public static final String TAG = "FileOperation";

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/transsion/letswitch/service/api/IFileOperation$Companion;", "", MethodDecl.initName, "()V", AbstractID3v1Tag.TAG, "", "RESULT_CODE_SUCCESS", "", "RESULT_CODE_FAILURE", "API_NAME_FILE_OPERATION", "METHOD_RUN_CMD", "METHOD_COPY_FILE", "METHOD_GET_ERR_MSG", "METHOD_DEL_FILE", "METHOD_LIST_FILE", "METHOD_OPEN_FILE", "METHOD_OPEN_FILE_W", "METHOD_GET_FILE_INFO", "METHOD_MAKE_DIRS", "METHOD_RENAME", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        public static final String API_NAME_FILE_OPERATION = "FileOperationApiService";
        public static final String METHOD_COPY_FILE = "copyFile";
        public static final String METHOD_DEL_FILE = "deleteFile";
        public static final String METHOD_GET_ERR_MSG = "getErrorMessage";
        public static final String METHOD_GET_FILE_INFO = "getFileInfo";
        public static final String METHOD_LIST_FILE = "listFile";
        public static final String METHOD_MAKE_DIRS = "mkdirs";
        public static final String METHOD_OPEN_FILE = "openFile";
        public static final String METHOD_OPEN_FILE_W = "openFileW";
        public static final String METHOD_RENAME = "rename";
        public static final String METHOD_RUN_CMD = "runCmd";
        public static final int RESULT_CODE_FAILURE = -1;
        public static final int RESULT_CODE_SUCCESS = 0;
        public static final String TAG = "FileOperation";

        private Companion() {
        }
    }

    int copyFile(String source, String targetDir, int uid, int gid);

    int deleteFile(String targetFile);

    String getErrorMessage();

    FileInformation getFileInfo(String path);

    List<String> listFile(String targetPackage, int userId, int flags);

    boolean mkdirs(String path);

    ParcelFileDescriptor openFile(String path);

    ParcelFileDescriptor openFileW(String path, long position, long length);

    boolean rename(String src, String dest, boolean overlay);

    CmdResult runCmd(String cmd);
}
