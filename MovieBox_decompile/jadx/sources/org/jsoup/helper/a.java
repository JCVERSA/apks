package org.jsoup.helper;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.m;
import org.jsoup.parser.e;

public abstract class a {

    private static final Pattern f68526a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    private static final char[] f68527b = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    private static class C0837a {

        private final String f68528a;

        private final boolean f68529b;

        public C0837a(String str, boolean z10) {
            this.f68528a = str;
            this.f68529b = z10;
        }
    }

    private static C0837a a(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        byte b10 = bArr[0];
        if ((b10 == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b10 == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new C0837a("UTF-32", false);
        }
        if ((b10 == -2 && bArr[1] == -1) || (b10 == -1 && bArr[1] == -2)) {
            return new C0837a(C.UTF16_NAME, false);
        }
        if (b10 == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new C0837a("UTF-8", true);
        }
        return null;
    }

    static ByteBuffer b() {
        return ByteBuffer.allocate(0);
    }

    static String c(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f68526a.matcher(str);
        if (matcher.find()) {
            return g(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    static String d() {
        StringBuilder sb2 = new StringBuilder(32);
        Random random = new Random();
        for (int i10 = 0; i10 < 32; i10++) {
            char[] cArr = f68527b;
            sb2.append(cArr[random.nextInt(cArr.length)]);
        }
        return sb2.toString();
    }

    static Document e(InputStream inputStream, String str, String str2, e eVar) throws IOException {
        if (inputStream == null) {
            return new Document(str2);
        }
        sz.a aVarJ = sz.a.j(inputStream, 32768, 0);
        aVarJ.mark(32768);
        ByteBuffer byteBufferF = f(aVarJ, 5119);
        boolean z10 = aVarJ.read() == -1;
        aVarJ.reset();
        C0837a c0837aA = a(byteBufferF);
        if (c0837aA != null) {
            str = c0837aA.f68528a;
        }
        Document documentE = null;
        if (str == null) {
            Document documentF = eVar.f(Charset.forName("UTF-8").decode(byteBufferF).toString(), str2);
            String strG = null;
            for (Element element : documentF.R0("meta[http-equiv=content-type], meta[charset]")) {
                if (element.w("http-equiv")) {
                    strG = c(element.g("content"));
                }
                if (strG == null && element.w("charset")) {
                    strG = element.g("charset");
                }
                if (strG != null) {
                    break;
                }
            }
            if (strG == null && documentF.n() > 0 && (documentF.m(0) instanceof m)) {
                m mVar = (m) documentF.m(0);
                if (mVar.d0().equals("xml")) {
                    strG = mVar.g("encoding");
                }
            }
            String strG2 = g(strG);
            if (strG2 != null && !strG2.equalsIgnoreCase("UTF-8")) {
                str = strG2.trim().replaceAll("[\"']", "");
            } else if (z10) {
                documentE = documentF;
            }
        } else {
            d.i(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
        }
        if (documentE == null) {
            String str3 = str != null ? str : "UTF-8";
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(aVarJ, str3), 32768);
            if (c0837aA != null && c0837aA.f68529b) {
                bufferedReader.skip(1L);
            }
            try {
                documentE = eVar.e(bufferedReader, str2);
                documentE.g1().b(str3);
            } catch (UncheckedIOException e10) {
                throw e10.ioException();
            }
        }
        aVarJ.close();
        return documentE;
    }

    public static ByteBuffer f(InputStream inputStream, int i10) {
        d.e(i10 >= 0, "maxSize must be 0 (unlimited) or larger");
        return sz.a.j(inputStream, 32768, i10).f(i10);
    }

    private static String g(String str) {
        if (str != null && str.length() != 0) {
            String strReplaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(strReplaceAll)) {
                    return strReplaceAll;
                }
                String upperCase = strReplaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }
}
