package yf;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.io.File;

public final class c implements i8.a {

    private final long f76243a = 5242880;

    private final int f76244b = TimeConstants.DAY;

    private final long f76245c = System.currentTimeMillis();

    private final boolean b(File file) {
        if (file == null) {
            return false;
        }
        return (this.f76245c - file.lastModified()) / ((long) this.f76244b) >= 15;
    }

    @Override
    public boolean a(File file) {
        if (file == null || !file.isFile()) {
            return false;
        }
        return b(file) || file.length() > this.f76243a;
    }
}
