package defpackage;

import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public interface lo4 extends hf8 {
    lo4 a(Object obj, Funnel funnel);

    lo4 b(CharSequence charSequence);

    lo4 c(byte[] bArr, int i, int i2);

    lo4 d(ByteBuffer byteBuffer);

    lo4 e(CharSequence charSequence, Charset charset);

    HashCode hash();

    lo4 putInt(int i);

    lo4 putLong(long j);
}
