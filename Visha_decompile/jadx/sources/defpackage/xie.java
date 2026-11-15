package defpackage;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzaz;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

public final class xie implements bhe {
    public final u4h a = new u4h();
    public final oie b = new oie();

    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        u4h u4hVar = this.a;
        u4hVar.j(bArr, i2 + i);
        u4hVar.l(i);
        ArrayList arrayList = new ArrayList();
        try {
            int iW = u4hVar.w();
            Charset charset = StandardCharsets.UTF_8;
            String strT = u4hVar.T(charset);
            if (strT == null || !strT.startsWith("WEBVTT")) {
                u4hVar.l(iW);
                throw zzaz.zza("Expected WEBVTT. Got ".concat(String.valueOf(u4hVar.T(charset))), null);
            }
            while (!TextUtils.isEmpty(u4hVar.T(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                byte b = -1;
                int iW2 = 0;
                while (b == -1) {
                    iW2 = u4hVar.w();
                    String strT2 = u4hVar.T(StandardCharsets.UTF_8);
                    if (strT2 == null) {
                        b = 0;
                    } else if ("STYLE".equals(strT2)) {
                        b = 2;
                    } else {
                        b = strT2.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                    }
                }
                u4hVar.l(iW2);
                if (b == 0) {
                    sge.a(new zie(arrayList2), wgeVar, qfgVar);
                    return;
                }
                if (b == 1) {
                    while (!TextUtils.isEmpty(u4hVar.T(StandardCharsets.UTF_8))) {
                    }
                } else if (b != 2) {
                    qie qieVarC = wie.c(u4hVar, arrayList);
                    if (qieVarC != null) {
                        arrayList2.add(qieVarC);
                    }
                } else {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    u4hVar.T(StandardCharsets.UTF_8);
                    arrayList.addAll(this.b.b(u4hVar));
                }
            }
        } catch (zzaz e) {
            throw new IllegalArgumentException(e);
        }
    }
}
