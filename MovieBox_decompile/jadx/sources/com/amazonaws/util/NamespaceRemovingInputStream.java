package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

class NamespaceRemovingInputStream extends SdkFilterInputStream {

    private final byte[] f18383a;

    private boolean f18384b;

    private static final class StringPrefixSlicer {

        private String f18385a;

        public StringPrefixSlicer(String str) {
            this.f18385a = str;
        }

        public String a() {
            return this.f18385a;
        }

        public boolean b(String str) {
            if (!this.f18385a.startsWith(str)) {
                return false;
            }
            this.f18385a = this.f18385a.substring(str.length());
            return true;
        }

        public boolean c(String str) {
            int iIndexOf = this.f18385a.indexOf(str);
            if (iIndexOf < 0) {
                return false;
            }
            this.f18385a = this.f18385a.substring(iIndexOf + str.length());
            return true;
        }

        public boolean d(String str) {
            if (!this.f18385a.startsWith(str)) {
                return false;
            }
            while (this.f18385a.startsWith(str)) {
                this.f18385a = this.f18385a.substring(str.length());
            }
            return true;
        }
    }

    public NamespaceRemovingInputStream(InputStream inputStream) {
        super(new BufferedInputStream(inputStream));
        this.f18383a = new byte[200];
        this.f18384b = false;
    }

    private int l(String str) {
        StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
        if (!stringPrefixSlicer.b("xmlns")) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (!stringPrefixSlicer.b(UrlUtils.EQUAL_MARK)) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (stringPrefixSlicer.b("\"") && stringPrefixSlicer.c("\"")) {
            return str.length() - stringPrefixSlicer.a().length();
        }
        return -1;
    }

    @Override
    public int read() throws IOException {
        k();
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != 120 || this.f18384b) {
            return i10;
        }
        this.f18383a[0] = (byte) i10;
        ((FilterInputStream) this).in.mark(this.f18383a.length);
        InputStream inputStream = ((FilterInputStream) this).in;
        byte[] bArr = this.f18383a;
        int i11 = inputStream.read(bArr, 1, bArr.length - 1);
        ((FilterInputStream) this).in.reset();
        int iL = l(new String(this.f18383a, 0, i11 + 1, StringUtils.f18387a));
        if (iL <= 0) {
            return i10;
        }
        for (int i12 = 0; i12 < iL - 1; i12++) {
            ((FilterInputStream) this).in.read();
        }
        int i13 = ((FilterInputStream) this).in.read();
        this.f18384b = true;
        return i13;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = read();
            if (i13 == -1) {
                if (i12 == 0) {
                    return -1;
                }
                return i12;
            }
            bArr[i12 + i10] = (byte) i13;
        }
        return i11;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
