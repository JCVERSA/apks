package defpackage;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public abstract class bv3 {
    public static void a(String str, String str2) throws IOException {
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel channel = new FileInputStream(str).getChannel();
        try {
            FileChannel channel2 = new FileOutputStream(str2).getChannel();
            try {
                channel.transferTo(0L, channel.size(), channel2);
                if (channel2 != null) {
                    channel2.close();
                }
                channel.close();
            } catch (Throwable th) {
                if (channel2 != null) {
                    try {
                        channel2.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (channel != null) {
                try {
                    channel.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }
}
