package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public interface e extends i {
    e a(Object obj, Funnel funnel);

    HashCode b();

    e c(CharSequence charSequence);

    e d(byte[] bArr, int i10, int i11);

    e e(ByteBuffer byteBuffer);

    e f(int i10);

    e g(CharSequence charSequence, Charset charset);

    e h(long j10);
}
