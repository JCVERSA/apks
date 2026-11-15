package defpackage;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.CharEncoding;

public abstract class mne implements nne {
    public static final Logger b = Logger.getLogger(mne.class.getName());
    public final ThreadLocal a = new lne(this);

    @Override
    public final qne a(rxi rxiVar, rne rneVar) throws EOFException {
        int iP;
        long jZzc;
        long jZzb = rxiVar.zzb();
        ThreadLocal threadLocal = this.a;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            iP = rxiVar.p((ByteBuffer) threadLocal.get());
            if (iP == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long jE = pne.e((ByteBuffer) threadLocal.get());
                byte[] bArr = null;
                if (jE < 8 && jE > 1) {
                    Logger logger = b;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jE);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr2);
                try {
                    String str = new String(bArr2, CharEncoding.ISO_8859_1);
                    if (jE == 1) {
                        ThreadLocal threadLocal2 = this.a;
                        ((ByteBuffer) threadLocal2.get()).limit(16);
                        rxiVar.p((ByteBuffer) threadLocal2.get());
                        ((ByteBuffer) threadLocal2.get()).position(8);
                        jZzc = pne.f((ByteBuffer) threadLocal2.get()) - 16;
                    } else {
                        jZzc = jE == 0 ? rxiVar.zzc() - rxiVar.zzb() : jE - 8;
                    }
                    if ("uuid".equals(str)) {
                        ThreadLocal threadLocal3 = this.a;
                        ((ByteBuffer) threadLocal3.get()).limit(((ByteBuffer) threadLocal3.get()).limit() + 16);
                        rxiVar.p((ByteBuffer) threadLocal3.get());
                        bArr = new byte[16];
                        for (int iPosition = ((ByteBuffer) threadLocal3.get()).position() - 16; iPosition < ((ByteBuffer) threadLocal3.get()).position(); iPosition++) {
                            bArr[iPosition - (((ByteBuffer) threadLocal3.get()).position() - 16)] = ((ByteBuffer) threadLocal3.get()).get(iPosition);
                        }
                        jZzc -= 16;
                    }
                    long j = jZzc;
                    qne qneVarB = b(str, bArr, rneVar instanceof qne ? ((qne) rneVar).zza() : "");
                    ThreadLocal threadLocal4 = this.a;
                    ((ByteBuffer) threadLocal4.get()).rewind();
                    qneVarB.a(rxiVar, (ByteBuffer) threadLocal4.get(), j, this);
                    return qneVarB;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (iP >= 0);
        rxiVar.c(jZzb);
        throw new EOFException();
    }

    public abstract qne b(String str, byte[] bArr, String str2);
}
