package defpackage;

import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public abstract class y2 implements eo4 {
    public HashCode hashBytes(byte[] bArr) {
        return hashBytes(bArr, 0, bArr.length);
    }

    public HashCode hashInt(int i) {
        return newHasher(4).putInt(i).hash();
    }

    public HashCode hashLong(long j) {
        return newHasher(8).putLong(j).hash();
    }

    @Override
    public <T> HashCode hashObject(T t, Funnel<? super T> funnel) {
        return newHasher().a(t, funnel).hash();
    }

    @Override
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return newHasher().e(charSequence, charset).hash();
    }

    public HashCode hashUnencodedChars(CharSequence charSequence) {
        return newHasher(charSequence.length() * 2).b(charSequence).hash();
    }

    public lo4 newHasher(int i) {
        xd8.f(i >= 0, "expectedInputSize must be >= 0 but was %s", i);
        return newHasher();
    }

    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        xd8.t(i, i + i2, bArr.length);
        return newHasher(i2).c(bArr, i, i2).hash();
    }

    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).d(byteBuffer).hash();
    }
}
