package defpackage;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public abstract class ny7 extends my7 {
    public static final List a(Path path, String str) throws IOException {
        y45.j(path, "<this>");
        y45.j(str, "glob");
        DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, str);
        try {
            y45.g(directoryStreamNewDirectoryStream);
            List listB1 = i81.b1(directoryStreamNewDirectoryStream);
            ly0.a(directoryStreamNewDirectoryStream, null);
            return listB1;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(directoryStreamNewDirectoryStream, th);
                throw th2;
            }
        }
    }

    public static List b(Path path, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "*";
        }
        return a(path, str);
    }
}
