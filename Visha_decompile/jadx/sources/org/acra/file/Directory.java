package org.acra.file;

import android.content.Context;
import android.os.Environment;
import com.lzy.okgo.model.Progress;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lorg/acra/file/Directory;", "", "(Ljava/lang/String;I)V", "getFile", "Ljava/io/File;", "context", "Landroid/content/Context;", Progress.FILE_NAME, "", "FILES_LEGACY", "FILES", "EXTERNAL_FILES", "CACHE", "EXTERNAL_CACHE", "NO_BACKUP_FILES", "EXTERNAL_STORAGE", "ROOT", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public enum Directory {
    FILES_LEGACY {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return (g1a.R(fileName, "/", false, 2, null) ? Directory.ROOT : Directory.FILES).getFile(context, fileName);
        }
    },
    FILES {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return new File(context.getFilesDir(), fileName);
        }
    },
    EXTERNAL_FILES {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return new File(context.getExternalFilesDir(null), fileName);
        }
    },
    CACHE {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return new File(context.getCacheDir(), fileName);
        }
    },
    EXTERNAL_CACHE {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return new File(context.getExternalCacheDir(), fileName);
        }
    },
    NO_BACKUP_FILES {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            File noBackupFilesDir = context.getNoBackupFilesDir();
            y45.i(noBackupFilesDir, "{\n                contex…kupFilesDir\n            }");
            return new File(noBackupFilesDir, fileName);
        }
    },
    EXTERNAL_STORAGE {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            return new File(Environment.getExternalStorageDirectory(), fileName);
        }
    },
    ROOT {
        @Override
        public File getFile(Context context, String fileName) {
            y45.j(context, "context");
            y45.j(fileName, Progress.FILE_NAME);
            String str = File.separator;
            y45.i(str, "separator");
            List listO0 = j1a.O0(fileName, new String[]{str}, false, 2, 2, null);
            if (listO0.size() == 1) {
                return new File(fileName);
            }
            File[] fileArrListRoots = File.listRoots();
            y45.i(fileArrListRoots, "roots");
            for (File file : fileArrListRoots) {
                Object obj = listO0.get(0);
                String path = file.getPath();
                y45.i(path, "root.path");
                String str2 = File.separator;
                y45.i(str2, "separator");
                if (y45.e(obj, g1a.N(path, str2, "", false, 4, null))) {
                    return new File(file, (String) listO0.get(1));
                }
            }
            return new File(fileArrListRoots[0], fileName);
        }
    };

    Directory(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract File getFile(Context context, String fileName);
}
