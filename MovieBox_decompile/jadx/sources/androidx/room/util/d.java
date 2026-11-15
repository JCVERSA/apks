package androidx.room.util;

import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import kotlin.jvm.internal.Intrinsics;

public abstract class d {
    public static final void a(ReadableByteChannel input, FileChannel output) throws IOException {
        Intrinsics.h(input, "input");
        Intrinsics.h(output, "output");
        try {
            if (Build.VERSION.SDK_INT <= 23) {
                InputStream inputStreamNewInputStream = Channels.newInputStream(input);
                OutputStream outputStreamNewOutputStream = Channels.newOutputStream(output);
                byte[] bArr = new byte[4096];
                while (true) {
                    int i10 = inputStreamNewInputStream.read(bArr);
                    if (i10 <= 0) {
                        break;
                    } else {
                        outputStreamNewOutputStream.write(bArr, 0, i10);
                    }
                }
            } else {
                output.transferFrom(input, 0L, Long.MAX_VALUE);
            }
            output.force(false);
        } finally {
            input.close();
            output.close();
        }
    }
}
