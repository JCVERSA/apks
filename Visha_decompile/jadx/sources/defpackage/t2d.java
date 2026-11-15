package defpackage;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class t2d {
    public boolean a(Object obj, File file, long j) throws Throwable {
        try {
            jo0.e((ByteBuffer) obj, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
