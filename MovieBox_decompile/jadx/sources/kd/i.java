package kd;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public final class i {

    private StringBuilder f63948a;

    private StringBuilder f63949b;

    private Charset f63950c;

    public i() {
        this.f63950c = StandardCharsets.ISO_8859_1;
        this.f63948a = new StringBuilder();
    }

    private void g() {
        Charset charset = this.f63950c;
        Charset charset2 = StandardCharsets.ISO_8859_1;
        if (charset.equals(charset2)) {
            if (this.f63948a.length() > 0) {
                StringBuilder sb2 = this.f63949b;
                if (sb2 == null) {
                    this.f63949b = this.f63948a;
                    this.f63948a = new StringBuilder();
                    return;
                } else {
                    sb2.append((CharSequence) this.f63948a);
                    this.f63948a = new StringBuilder();
                    return;
                }
            }
            return;
        }
        if (this.f63948a.length() > 0) {
            byte[] bytes = this.f63948a.toString().getBytes(charset2);
            this.f63948a = new StringBuilder();
            StringBuilder sb3 = this.f63949b;
            if (sb3 == null) {
                this.f63949b = new StringBuilder(new String(bytes, this.f63950c));
            } else {
                sb3.append(new String(bytes, this.f63950c));
            }
        }
    }

    public void a(byte b10) {
        this.f63948a.append((char) (b10 & 255));
    }

    public void b(char c10) {
        this.f63948a.append((char) (c10 & 255));
    }

    public void c(int i10) {
        d(String.valueOf(i10));
    }

    public void d(String str) {
        this.f63948a.append(str);
    }

    public void e(StringBuilder sb2) {
        g();
        this.f63949b.append((CharSequence) sb2);
    }

    public void f(int i10) throws FormatException {
        g();
        CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i10);
        if (characterSetECIByValue == null) {
            throw FormatException.getFormatInstance();
        }
        this.f63950c = characterSetECIByValue.getCharset();
    }

    public boolean h() {
        StringBuilder sb2;
        return this.f63948a.length() == 0 && ((sb2 = this.f63949b) == null || sb2.length() == 0);
    }

    public int i() {
        return toString().length();
    }

    public String toString() {
        g();
        StringBuilder sb2 = this.f63949b;
        return sb2 == null ? "" : sb2.toString();
    }

    public i(int i10) {
        this.f63950c = StandardCharsets.ISO_8859_1;
        this.f63948a = new StringBuilder(i10);
    }
}
