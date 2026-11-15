package defpackage;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public final class pv0 {
    public final InputStream a;
    public final Charset b;
    public final CharsetDecoder c;
    public final ByteBuffer d;
    public boolean e;
    public char f;

    public pv0(InputStream inputStream, Charset charset) {
        y45.j(inputStream, "inputStream");
        y45.j(charset, "charset");
        this.a = inputStream;
        this.b = charset;
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetDecoder charsetDecoderOnUnmappableCharacter = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        y45.i(charsetDecoderOnUnmappableCharacter, "charset.newDecoder()\n   …odingErrorAction.REPLACE)");
        this.c = charsetDecoderOnUnmappableCharacter;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(co0.c.d());
        y45.i(byteBufferWrap, "wrap(ByteArrayPool8k.take())");
        this.d = byteBufferWrap;
        y45.h(byteBufferWrap, "null cannot be cast to non-null type java.nio.Buffer");
        byteBufferWrap.flip();
    }

    public final int a(char[] cArr, int i, int i2) throws CharacterCodingException {
        CharBuffer charBufferWrap = CharBuffer.wrap(cArr, i, i2);
        if (charBufferWrap.position() != 0) {
            charBufferWrap = charBufferWrap.slice();
        }
        boolean z = false;
        while (true) {
            CoderResult coderResultDecode = this.c.decode(this.d, charBufferWrap, z);
            if (coderResultDecode.isUnderflow()) {
                if (!z && charBufferWrap.hasRemaining()) {
                    if (b() < 0) {
                        if (charBufferWrap.position() == 0 && !this.d.hasRemaining()) {
                            z = true;
                            break;
                        }
                        this.c.reset();
                        z = true;
                    } else {
                        continue;
                    }
                } else {
                    break;
                }
            } else {
                if (coderResultDecode.isOverflow()) {
                    charBufferWrap.position();
                    break;
                }
                coderResultDecode.throwException();
            }
        }
        if (z) {
            this.c.reset();
        }
        if (charBufferWrap.position() == 0) {
            return -1;
        }
        return charBufferWrap.position();
    }

    public final int b() {
        ByteBuffer byteBuffer;
        this.d.compact();
        try {
            int iLimit = this.d.limit();
            int iPosition = this.d.position();
            int i = this.a.read(this.d.array(), this.d.arrayOffset() + iPosition, iPosition <= iLimit ? iLimit - iPosition : 0);
            if (i < 0) {
                return i;
            }
            this.d.position(iPosition + i);
            return this.d.remaining();
        } finally {
            byteBuffer = this.d;
            y45.h(byteBuffer, "null cannot be cast to non-null type java.nio.Buffer");
            byteBuffer.flip();
        }
    }

    public final int c() {
        if (this.e) {
            this.e = false;
            return this.f;
        }
        char[] cArr = new char[2];
        int iD = d(cArr, 0, 2);
        if (iD == -1) {
            return -1;
        }
        if (iD == 1) {
            return cArr[0];
        }
        if (iD == 2) {
            this.f = cArr[1];
            this.e = true;
            return cArr[0];
        }
        throw new IllegalStateException(("Unreachable state: " + iD).toString());
    }

    public final int d(char[] cArr, int i, int i2) {
        y45.j(cArr, "array");
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (i < 0 || i >= cArr.length || i2 < 0 || i + i2 > cArr.length) {
            throw new IllegalArgumentException(("Unexpected arguments: " + i + ", " + i2 + ", " + cArr.length).toString());
        }
        if (this.e) {
            cArr[i] = this.f;
            i++;
            i2--;
            this.e = false;
            if (i2 == 0) {
                return 1;
            }
            i3 = 1;
        }
        if (i2 != 1) {
            return a(cArr, i, i2) + i3;
        }
        int iC = c();
        if (iC != -1) {
            cArr[i] = (char) iC;
            return i3 + 1;
        }
        if (i3 == 0) {
            return -1;
        }
        return i3;
    }

    public final void e() {
        co0 co0Var = co0.c;
        byte[] bArrArray = this.d.array();
        y45.i(bArrArray, "byteBuffer.array()");
        co0Var.c(bArrArray);
    }
}
