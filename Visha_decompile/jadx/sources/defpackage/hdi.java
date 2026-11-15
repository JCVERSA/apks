package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.security.GeneralSecurityException;

public final class hdi {
    public jdi a;
    public String b;
    public idi c;
    public jai d;

    public hdi(kdi kdiVar) {
    }

    public final hdi a(jai jaiVar) {
        this.d = jaiVar;
        return this;
    }

    public final hdi b(idi idiVar) {
        this.c = idiVar;
        return this;
    }

    public final hdi c(String str) {
        this.b = str;
        return this;
    }

    public final hdi d(jdi jdiVar) {
        this.a = jdiVar;
        return this;
    }

    public final ldi e() throws GeneralSecurityException {
        if (this.a == null) {
            this.a = jdi.c;
        }
        if (this.b == null) {
            throw new GeneralSecurityException("kekUri must be set");
        }
        idi idiVar = this.c;
        if (idiVar == null) {
            throw new GeneralSecurityException("dekParsingStrategy must be set");
        }
        jai jaiVar = this.d;
        if (jaiVar == null) {
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        if (jaiVar.a()) {
            throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
        }
        if ((idiVar.equals(idi.b) && (jaiVar instanceof wbi)) || ((idiVar.equals(idi.d) && (jaiVar instanceof pci)) || ((idiVar.equals(idi.c) && (jaiVar instanceof oei)) || ((idiVar.equals(idi.e) && (jaiVar instanceof bbi)) || ((idiVar.equals(idi.f) && (jaiVar instanceof lbi)) || (idiVar.equals(idi.g) && (jaiVar instanceof jci))))))) {
            return new ldi(this.a, this.b, this.c, this.d, null);
        }
        throw new GeneralSecurityException("Cannot use parsing strategy " + this.c.toString() + " when new keys are picked according to " + String.valueOf(this.d) + Consts.DOT);
    }
}
