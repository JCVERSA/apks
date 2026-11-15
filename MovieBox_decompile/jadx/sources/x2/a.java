package x2;

import androidx.media3.common.x;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a extends t2.c {

    private static final Pattern f75057c = Pattern.compile("(.+?)='(.*?)';", 32);

    private final CharsetDecoder f75058a = StandardCharsets.UTF_8.newDecoder();

    private final CharsetDecoder f75059b = StandardCharsets.ISO_8859_1.newDecoder();

    private String c(ByteBuffer byteBuffer) {
        try {
            String string = this.f75058a.decode(byteBuffer).toString();
            this.f75058a.reset();
            byteBuffer.rewind();
            return string;
        } catch (CharacterCodingException unused) {
            this.f75058a.reset();
            byteBuffer.rewind();
            try {
                return this.f75059b.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.f75059b.reset();
                byteBuffer.rewind();
            }
        } catch (Throwable th2) {
            this.f75058a.reset();
            byteBuffer.rewind();
            throw th2;
        }
    }

    @Override
    protected x b(t2.b bVar, ByteBuffer byteBuffer) {
        String strC = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (strC == null) {
            return new x(new c(bArr, null, null));
        }
        Matcher matcher = f75057c.matcher(strC);
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
        return new x(new c(bArr, str, str2));
    }
}
