package defpackage;

import com.google.android.gms.internal.ads.c;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.apache.commons.lang3.CharEncoding;

public abstract class ine extends c {
    public final Object n;
    public final jme o;

    public ine(int i, String str, jme jmeVar, ime imeVar) {
        super(i, str, imeVar);
        this.n = new Object();
        this.o = jmeVar;
    }

    @Override
    public final kme a(fme fmeVar) {
        String str;
        String str2;
        try {
            byte[] bArr = fmeVar.b;
            Map map = fmeVar.c;
            String str3 = CharEncoding.ISO_8859_1;
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] strArrSplit = str2.split(ProcessInfo.SPLIT_NEW_VERSION, 0);
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(fmeVar.b);
        }
        return kme.b(str, ane.b(fmeVar));
    }

    public void j(String str) {
        jme jmeVar;
        synchronized (this.n) {
            jmeVar = this.o;
        }
        jmeVar.zza(str);
    }
}
