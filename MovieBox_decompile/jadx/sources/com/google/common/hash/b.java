package com.google.common.hash;

import java.nio.charset.Charset;

abstract class b implements e {
    b() {
    }

    @Override
    public e a(Object obj, Funnel funnel) {
        funnel.funnel(obj, this);
        return this;
    }

    @Override
    public e c(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            j(charSequence.charAt(i10));
        }
        return this;
    }

    @Override
    public abstract e d(byte[] bArr, int i10, int i11);

    @Override
    public e g(CharSequence charSequence, Charset charset) {
        return i(charSequence.toString().getBytes(charset));
    }

    public e i(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    public abstract e j(char c10);
}
