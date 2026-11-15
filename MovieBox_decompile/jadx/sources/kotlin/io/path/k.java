package kotlin.io.path;

import java.nio.file.FileSystemLoopException;

public abstract class k {
    public static FileSystemLoopException a(String str) {
        return new FileSystemLoopException(str);
    }
}
