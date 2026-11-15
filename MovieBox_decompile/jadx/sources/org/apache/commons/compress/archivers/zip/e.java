package org.apache.commons.compress.archivers.zip;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import okio.Utf8;

class e implements r {

    private static final byte[] f67981c = {Utf8.REPLACEMENT_BYTE};

    private static final String f67982d = String.valueOf('?');

    private static final char[] f67983e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private final Charset f67984a;

    private final boolean f67985b;

    e(Charset charset, boolean z10) {
        this.f67984a = charset;
        this.f67985b = z10;
    }

    private CharsetDecoder b() {
        if (this.f67985b) {
            CharsetDecoder charsetDecoderNewDecoder = this.f67984a.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(f67982d);
        }
        CharsetDecoder charsetDecoderNewDecoder2 = this.f67984a.newDecoder();
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
        return charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
    }

    @Override
    public String a(byte[] bArr) {
        return b().decode(ByteBuffer.wrap(bArr)).toString();
    }
}
