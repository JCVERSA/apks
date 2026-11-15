package com.google.common.hash;

import com.google.common.base.m;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

abstract class a implements d {
    a() {
    }

    public HashCode hashBytes(byte[] bArr) {
        return hashBytes(bArr, 0, bArr.length);
    }

    public HashCode hashInt(int i10) {
        return newHasher(4).f(i10).b();
    }

    public HashCode hashLong(long j10) {
        return newHasher(8).h(j10).b();
    }

    @Override
    public <T> HashCode hashObject(T t10, Funnel<? super T> funnel) {
        return newHasher().a(t10, funnel).b();
    }

    @Override
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return newHasher().g(charSequence, charset).b();
    }

    public HashCode hashUnencodedChars(CharSequence charSequence) {
        return newHasher(charSequence.length() * 2).c(charSequence).b();
    }

    public e newHasher(int i10) {
        m.f(i10 >= 0, "expectedInputSize must be >= 0 but was %s", i10);
        return newHasher();
    }

    public HashCode hashBytes(byte[] bArr, int i10, int i11) {
        m.t(i10, i10 + i11, bArr.length);
        return newHasher(i11).d(bArr, i10, i11).b();
    }

    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).e(byteBuffer).b();
    }
}
