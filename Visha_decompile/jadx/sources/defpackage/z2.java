package defpackage;

import com.google.common.hash.Funnel;
import java.nio.charset.Charset;

public abstract class z2 implements lo4 {
    @Override
    public lo4 a(Object obj, Funnel funnel) {
        funnel.funnel(obj, this);
        return this;
    }

    @Override
    public lo4 b(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            g(charSequence.charAt(i));
        }
        return this;
    }

    @Override
    public abstract lo4 c(byte[] bArr, int i, int i2);

    @Override
    public lo4 e(CharSequence charSequence, Charset charset) {
        return f(charSequence.toString().getBytes(charset));
    }

    public lo4 f(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    public abstract lo4 g(char c);
}
