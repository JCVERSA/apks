package com.apm.insight.l;

import androidx.annotation.NonNull;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;

public final class e extends PrintWriter {

    private MessageDigest f19047a;

    private Charset f19048b;

    private a f19049c;

    public static class a {
        public boolean a(String str) {
            return true;
        }
    }

    public e(@NonNull OutputStream outputStream, MessageDigest messageDigest, a aVar) {
        super(outputStream);
        this.f19048b = null;
        this.f19047a = messageDigest;
        this.f19049c = aVar;
        if (messageDigest != null) {
            this.f19048b = Charset.defaultCharset();
        }
    }

    @Override
    public final void write(@NonNull char[] cArr, int i10, int i11) {
        super.write(cArr, i10, i11);
        MessageDigest messageDigest = this.f19047a;
        if (messageDigest != null) {
            messageDigest.update(this.f19048b.encode(CharBuffer.wrap(cArr)).array());
        }
    }

    @Override
    public final void write(int i10) {
        super.write(i10);
        MessageDigest messageDigest = this.f19047a;
        if (messageDigest != null) {
            messageDigest.update((byte) i10);
        }
    }

    @Override
    public final void write(@NonNull String str, int i10, int i11) {
        super.write(str, i10, i11);
        if (this.f19047a != null) {
            a aVar = this.f19049c;
            if (aVar == null || aVar.a(str)) {
                this.f19047a.update(this.f19048b.encode(CharBuffer.wrap(str, i10, i11 + i10)).array());
            }
        }
    }
}
