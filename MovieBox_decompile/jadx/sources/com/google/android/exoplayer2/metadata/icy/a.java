package com.google.android.exoplayer2.metadata.icy;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.common.base.c;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a extends g {

    private static final Pattern f24793c = Pattern.compile("(.+?)='(.*?)';", 32);

    private final CharsetDecoder f24794a = c.f29403c.newDecoder();

    private final CharsetDecoder f24795b = c.f29402b.newDecoder();

    private String c(ByteBuffer byteBuffer) {
        try {
            String string = this.f24794a.decode(byteBuffer).toString();
            this.f24794a.reset();
            byteBuffer.rewind();
            return string;
        } catch (CharacterCodingException unused) {
            this.f24794a.reset();
            byteBuffer.rewind();
            try {
                return this.f24795b.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.f24795b.reset();
                byteBuffer.rewind();
            }
        } catch (Throwable th2) {
            this.f24794a.reset();
            byteBuffer.rewind();
            throw th2;
        }
    }

    @Override
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        String strC = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (strC == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f24793c.matcher(strC);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String strE = com.google.common.base.a.e(strGroup);
                strE.hashCode();
                if (strE.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (strE.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
