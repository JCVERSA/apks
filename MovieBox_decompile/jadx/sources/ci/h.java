package ci;

import java.io.File;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f16940a = new h();

    private h() {
    }

    public final void a(String directoryPath) {
        Intrinsics.h(directoryPath, "directoryPath");
        File file = new File(directoryPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        xh.a.c(xh.a.f75336a, h.class.getSimpleName() + " --> createDirectoryIfNotExists() --> 目标文件夹 创建成功 --> directoryPath = " + directoryPath, 0, false, 6, null);
    }

    public final void b(File file, HashSet set) {
        File[] fileArrListFiles;
        Intrinsics.h(file, "file");
        Intrinsics.h(set, "set");
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        if (fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                h hVar = f16940a;
                Intrinsics.e(file2);
                hVar.b(file2, set);
            } else if (file2.isFile() && !set.contains(file2.getPath())) {
                file2.delete();
            }
        }
    }

    public final boolean c(String filePath) {
        Intrinsics.h(filePath, "filePath");
        return new File(filePath).exists();
    }
}
